# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html

import cx_Oracle
import json
import os
import pymysql
os.environ['NLS_LANG']='SIMPLIFIED CHINESE_CHINA.UTF-8'
class BdtbPipeline(object):
    def process_item(self, item, spider):
        conn=pymysql.connect(host='ip',user='zwj',passwd='123456',db='test',charset='utf8',port=3306)
        cursor = conn.cursor()
        sql_insert = "insert into TOP_BDTBRESULT(title,content,site,author,fbsj,cjmc,url) values('%s','%s','%s','%s','%s','%s','%s')" % (item['title'], item['content'], item['site'],item['author'], item['fbsj'],item['cjmc'],item['url'])
        cursor.execute(sql_insert)

        conn.commit()

        #关闭数据库连接
        cursor.close()
        conn.close()

        return item

