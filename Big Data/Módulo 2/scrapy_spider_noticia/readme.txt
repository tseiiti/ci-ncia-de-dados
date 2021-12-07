# instalar scrapy
pip install scrapy

# criar o projeto
scrapy startproject scrapy_spider_noticia

# cria o spider
cd scrapy_spider_noticia
scrapy genspider spider_noticia https://www1.folha.uol.com.br/ultimas-noticias

# execute o scrap
cd spiders
scrapy runspider spider_noticia.py --nolog

# testar 
scrapy shell https://www1.folha.uol.com.br/ultimas-noticias/
response.css('.c-headline__title::text').getall()