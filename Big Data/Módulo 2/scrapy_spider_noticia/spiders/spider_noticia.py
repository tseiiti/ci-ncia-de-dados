import scrapy
import json

class Noticia():
	def __init__(self, nome, resumo, data):
		self.nome = self.limpa(nome)
		self.resumo = self.limpa(resumo)
		self.data = self.limpa(data)

	def limpa(self, texto):
		if texto:
			return texto.replace("\n", "").strip()

class SpiderNoticiaSpider(scrapy.Spider):
	name = 'spider_noticia'
	allowed_domains = ['folha.uol.com.br']
	start_urls = ['https://www1.folha.uol.com.br/ultimas-noticias']
	noticias = []

	def parse(self, response):
		for item in response.xpath('//ol[@class="u-list-unstyled"]/li'):
			nome = item.css(".c-headline__title::text").get()
			resumo = item.css(".c-headline__standfirst::text").get()
			data = item.css(".c-headline__dateline::text").get()
			noticia = Noticia(nome, resumo, data)
			print(noticia.__dict__)
			self.add(noticia)
		with open('noticias.json', 'w', encoding = 'utf8') as file:
			json.dump([ob.__dict__ for ob in self.noticias], file, ensure_ascii = False)
			print(file)

	def add(self, noticia):
		if (noticia.nome is None or noticia.resumo is None or noticia.data is None):
			return
		self.noticias.append(noticia)