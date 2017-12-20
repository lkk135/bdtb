#!/usr/bin/python
# -*- coding:utf-8 -*-
from scrapy.spiders import Spider
from scrapy.http import Request
from scrapy.selector import Selector
from bdtb.items import BdtbItem
import os
import sys
import pymysql
reload(sys)
sys.setdefaultencoding('utf-8')
os.environ['NLS_LANG'] = 'SIMPLIFIED CHINESE_CHINA.UTF8'


class Bdtb(Spider):
    name = 'bdtb2'
    allowed_domains = ['tieba.baidu.com']
    start_urls = [
        'http://tieba.baidu.com/f/search/res?ie=utf-8'
    ]
    conn = pymysql.connect(host='ip', user='zwj', passwd='123456', db='test', charset='utf8',
                           port=3306)
    cursor = conn.cursor()
    def Address(self, response):
        try:
            hx = Selector(response)

            cursor= self.cursor
            conn = self.conn
            # for关键词
            div = hx.xpath('//div[@class="s_post"]')
            qw = response.meta['qw']
            #记录是否需要改下标的标识  有贴吧的第一页为False 第二页为True
            flag=True
            # 页长
            ld=len(div)
            for i in range(0, ld):
                item = BdtbItem()
                # url
                Burl = div.xpath('./span[@class="p_title"]/a/@href')[i].extract()
                url = 'http://tieba.baidu.com' + Burl

                # 数据库查重
                sql = 'select URL from TOP_BDTBRESULT where URL=\''+url+'\''
                cursor.execute(sql)
                re = cursor.fetchall()
                if len(re) == 0:
                    item['url'] = url
                else:
                    continue
                # cjmc
                cjmc = qw
                item['cjmc'] = cjmc
                # 标题
                Btitle = div.xpath('./span[@class="p_title"]')[i].xpath('string(.)').extract()
                title = ''.join(Btitle)
                item['title'] = title

                # 网址 如无网址 则为专门性质贴吧 不予采集
                Bsite = div[i].xpath('.//font[@class="p_violet"]/text()').extract()
                #发布时间 内容受影响
                #发布时间
                Bfbsj = hx.xpath('//font[@class="p_green p_date"]/text()').extract()
                # 内容
                Bcontent = hx.xpath('//div[@class="p_content"]').xpath("string(.)").extract()

                if len(Bsite) == 0:
                    flag=False
                    if i < ld - 1:
                        continue
                    else:
                        break

                if flag==False:
                    fbsj = ''.join(Bfbsj[i-1])
                    content = ''.join(Bcontent[i-1]).decode('string_escape')
                else:
                    fbsj = ''.join(Bfbsj[i])
                    content = ''.join(Bcontent[i]).decode('string_escape')

                site = Bsite[0]
                item['site'] = site
                # 作者
                author = Bsite[1]
                item['author'] = author
                item['fbsj'] = fbsj
                item['content'] = content
	
                sql_insert = "insert into TOP_BDTBRESULT(TITLE,CONTENT,SITE,AUTHOR,FBSJ,CJMC,URL) values('%s','%s','%s','%s','%s','%s','%s')"%(item['title'], item['content'], item['site'], item['author'],item['fbsj'], item['cjmc'], item['url'] )
                cursor.execute(sql_insert)
                conn.commit()
		
            user_agent = "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0"
            headers = {'User-Agent': user_agent}
            # 下一页
            pageDiv = hx.xpath('//div[@class="pager pager-search"]')
            nextPage = pageDiv.xpath('./a[@class="next"]')
            length=len(nextPage)

            if length:
                url = nextPage.xpath('./@href').extract()
                burl = ''.join(url)
                nexturl = 'http://tieba.baidu.com' + burl
                yield Request(nexturl, headers=headers, meta={'qw': qw}, callback=self.Address)
        except BaseException, e:
            print e

    def parse(self, response):
        ##########################提取关键词#############################
        try:
            conn = self.conn
            cursor=self.cursor
            sql = "select TITLE from TOP_YQSJ where SFSS='Y'"
            cursor.execute(sql)
            rs = cursor.fetchall()
            #print len(rs)

            # 查询符合条件的qw
            user_agent = "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0"
            headers = {'User-Agent': user_agent}
            if len(rs) <> 0:
                for bs in rs:
                    # 赋值url
                    qw = ''.join(bs).decode('string_escape')
                    url = 'http://tieba.baidu.com/f/search/res?ie=utf-8&qw=%s' % (qw)
                    #print url
                    yield Request(url, headers=headers, meta={'qw': qw}, callback=self.Address)

        except BaseException, e:
            print e


