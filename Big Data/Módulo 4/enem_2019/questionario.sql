use igti

select top 10 * from enemmg2019
select count(*) from enemmg2019 --538896

-- 1. Qual é a média da nota em matemática de todos os alunos mineiros?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_MT)))
from enemmg2019
--546.8

-- 2. Qual é a média da nota em Linguagens e Códigos de todos os alunos mineiros?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_LC)))
from enemmg2019
--531.2

-- 3. Qual é a média da nota em Ciências Humanas dos alunos do sexo FEMININO mineiros?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_CH)))
from enemmg2019
where TP_SEXO = 'F'
--515.1

-- 4. Qual é a média da nota em Ciências Humanas dos alunos do sexo MASCULINO?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_CH)))
from enemmg2019
where TP_SEXO = 'M'
--529.7

-- 5. Qual é a média da nota em Matemática dos alunos do sexo FEMININO
-- que moram na cidade de Montes Claros?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_MT)))
from enemmg2019
where TP_SEXO = 'F'
and NO_MUNICIPIO_RESIDENCIA = 'Montes Claros'
--525.5

-- 6. Qual é a média da nota em Matemática dos alunos do município de
-- Sabará que possuem TV por assinatura na residência?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_MT)))
from enemmg2019
where NO_MUNICIPIO_RESIDENCIA = 'Sabará'
and Q021 = 'B'
--543.3

-- 7. Qual é a média da nota em Ciências Humanas dos alunos mineiros
-- que possuem dois fornos micro-ondas em casa?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_CH)))
from enemmg2019
where Q016 = 'C'
--557.3

-- 8. Qual é a nota média em Matemática dos alunos mineiros cuja mãe
-- completou a pós-graduação?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_MT)))
from enemmg2019
where Q002 = 'G'
--620.0

-- 9. Qual é a nota média em Matemática dos alunos de Belo Horizonte e de Conselheiro Lafaiete?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_MT)))
from enemmg2019
where NO_MUNICIPIO_RESIDENCIA = 'Belo Horizonte'
or NO_MUNICIPIO_RESIDENCIA = 'Conselheiro Lafaiete'
--578.0

-- 10. Qual é a nota média em Ciências Humanas dos alunos mineiros que moram sozinhos?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_CH)))
from enemmg2019
where Q005 = 1
--534.5

-- 11. Qual é a nota média em Ciências Humanas dos alunos mineiros cujo pai completou
-- pós-graduação e possuem renda familiar entre R$ 8.982,01 e R$ 9.980,00.
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_CH)))
from enemmg2019
where Q001 = 'G'
and Q006 = 'M'
--586.7

-- 12. Qual é a nota média em Matemática dos alunos do sexo Feminino que moram em Lavras
-- e escolheram “Espanhol” como língua estrangeira?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_MT)))
from enemmg2019
where TP_SEXO = 'F'
and NO_MUNICIPIO_RESIDENCIA = 'Lavras'
and TP_LINGUA = 1
--510.8

-- 13. Qual é a nota média em Matemática dos alunos do sexo Masculino que moram em Ouro Preto?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_MT)))
from enemmg2019
where TP_SEXO = 'M'
and NO_MUNICIPIO_RESIDENCIA = 'Ouro Preto'
--555.1

-- 14. Qual é a nota média em Ciências Humanas dos alunos surdos?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_CH)))
from enemmg2019
where IN_SURDEZ = 1
--435.4

-- 15. Qual é a nota média em Matemática dos alunos do sexo FEMININO, que moram em
-- Belo Horizonte, Sabará, Nova Lima e Betim e possuem dislexia?
select convert(decimal(10, 1), avg(convert(decimal(10, 2), NU_NOTA_MT)))
from enemmg2019
where TP_SEXO = 'F'
and NO_MUNICIPIO_RESIDENCIA in (
	'Belo Horizonte', 
	'Sabará',
	'Nova Lima',
	'Betim '
	)
and IN_DISLEXIA = 1
--582.2
