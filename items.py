# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

import scrapy

class BdtbItem(scrapy.Item):

        title = scrapy.Field()
        content = scrapy.Field()
        site = scrapy.Field()
        author = scrapy.Field()
        fbsj = scrapy.Field()
        cjmc = scrapy.Field()
        cjsj = scrapy.Field()
        url = scrapy.Field()

        pass


