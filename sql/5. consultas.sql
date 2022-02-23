USE DBCINE;
SELECT * FROM CINEMA;
SELECT * FROM FILME;
SELECT * FROM GENERO;
SELECT * FROM SALA;
SELECT * FROM SESSAO;
SELECT * FROM BILHETERIA;
SELECT * FROM INGRESSO;
SELECT * FROM CLIENTE;

-- *** CONSULTAS MARIA *** --
-- 1. Relacionar as salas e os endereços físicos do cinema -- 

select * from cinema c join sala s on c.CinemaId = s.CinemaId;

-- 2. Na intenção de setorizar melhor as informações, disponibilizar os filmes disponíveis de acordo com o gênero --
-- Exemplo --
select * from filme where genero = "Suspense";

-- 3. Expectadores (detalhado) de determinado filme --

select c.ClienteId,c.NomeCliente,i.IngressoId,s.Titulo,s.Horario from sessao s 
join ingresso i on s.SessaoId = i.SessaoId
join cliente c on c.ClienteId = i.ClienteId;

-- 4. Expectadores de cada sessão  --

select s.SessaoId,count(i.IngressoId) as Expectadores from filme f
join sessao s on s.Titulo = f.Titulo
join ingresso i on i.SessaoId = s.SessaoId group by s.SessaoId;

-- 5. Filmes mais assistidos --

select * from ingresso;

select f.FilmeId,f.Titulo, count(IngressoId) as Expectadores from filme f 
join sessao s on s.Titulo = f.Titulo
join ingresso i on s.SessaoId = i.SessaoId group by f.FilmeId;

-- 6. RECEITA	 GERADO POR CADA FILME --
select count(IngressoId) from ingresso;

select s.Titulo,concat("R$",sum(b.PrecoIngresso)) as Receita from bilheteria b
join sessao s on s.SalaId = b.SalaId 
join ingresso i on i.SessaoId = s.SessaoId group by s.Titulo;

-- 7. RECEITA DE CADA FILIAL COM A VENDA DE INGRESSOS --

select c.CinemaId,c.NomeCinema, concat("R$",sum(b.PrecoIngresso)) as Receita from bilheteria b
join sessao ss on ss.SalaId = b.SalaId
join sala s on s.SalaId = ss.SalaId
join ingresso i on i.SessaoId = ss.SessaoId
join cinema c on c.CinemaId = s.CinemaId group by c.CinemaId;
-- /*** CONSULTAS MARIA ***/ --


-- *** CONSULTAS WENDELL *** --
SELECT * FROM sala LIMIT 3;

SELECT * FROM filme LIMIT 40;

SELECT * FROM cliente LIMIT 100;

SELECT * FROM filme ORDER BY titulo;

SELECT * FROM sessao ORDER BY horario;

SELECT * FROM ingresso ORDER BY DataCompra ASC;

SELECT Titulo, Genero,Sinopse FROM filme GROUP BY FilmeId;

SELECT Horario,Titulo FROM sessao GROUP BY SalaId;

SELECT * FROM ingresso ORDER BY ClienteId DESC;

SELECT * FROM cinema ORDER BY NomeCinema ASC;

SELECT titulo FROM filme WHERE titulo LIKE'%H%';

SELECT nomecliente FROM cliente WHERE nomecliente LIKE'%JOÃO%';


SELECT precoid,diasemana, MAX(precoid) AS maiores_vendas
   FROM bilheteria;
   
SELECT precoId,diasemana, MIN(precoid) AS menores_vendas
   FROM bilheteria;

SELECT clienteid,nomecliente FROM cliente
	LEFT JOIN ingresso ON datacompra,clienteid;
    
SELECT ingressoid, COUNT(ingressoid) AS contar FROM ingresso GROUP BY ingressoid;

SELECT precoingresso, precoid, COUNT(precoingresso) contar,
       MIN(precoingresso) menorpreco, MAX(precoingresso) maiorpreco, AVG(precoingresso) mediapreco
       FROM bilheteria GROUP BY precoingresso;
       
SELECT titulo, duracao, CASE
WHEN DURAÇÃO > '150 MINUTOS' THEN 'Filme Demorado'
WHEN DURAÇÃO < '150 MINUTOS' THEN 'Filme Curto'
END AS 'Duração Filme'
FROM filme;

SELECT precoingresso,diasemana, CASE
WHEN vendas > '5 mil ingressos' THEN 'Dia de Boas Vendas'
WHEN vendas < '5 mil ingressos' THEN 'Dia de Mal Vendas'
END AS 'Total de Vendas'
FROM bilheteria;

SELECT ingressoid,datacompra, SUM(ingressoid) somar, CASE
WHEN ingressoid >= '500 ingressos' THEN 'Ganha um brinde o Ingresso 501'
END AS 'Brinde'
FROM ingresso;

SELECT salaid,capacidade,numerosala, CASE
WHEN Capacidade = '50%' THEN 'Parar Vendas'
END AS 'Vendas do COVID'
FROM sala;
-- /*** CONSULTAS WENDELL ***/ --


-- *** CONSULTAS THALYTA *** --
SELECT Titulo, FaixaEtaria FROM FILME 
	WHERE FilmeId = 3;
    
SELECT DataCompra, PrecoId FROM Ingresso LIMIT 5, 7;

SELECT horario, titulo FROM sessao 
	WHERE SessaoId = 9 or Sessaoid = 15;
    
SELECT Horario, Titulo FROM sessao  WHERE SessaoId in (13, 2);
    
SELECT NomeCliente, DataCadastro FROM cliente ORDER BY DataCadastro desc;

SELECT NomeCinema, Estado, SUM(Cinemaid) FROM cinema GROUP BY Estado;
SELECT NomeCinema, Estado, AVG(Cinemaid) FROM cinema GROUP BY Estado ORDER BY NomeCinema;

SELECT Genero, FaixaEtaria,
		CASE
			WHEN FaixaEtaria >= 18 THEN 'Adulto'
            WHEN faixaEtaria > 12 THEN 'Adolescente'
            WHEN faixaEtaria < 12 THEN 'Crianca'
			END AS Indicação
FROM filme GROUP BY faixaEtaria;

SELECT cinemaId, NomeCinema, CONCAT(Cidade,' - ', Estado) as Local_Cinema FROM cinema;
create view vw_LocalCine as SELECT cinemaId, NomeCinema, CONCAT(Cidade,' - ', Estado) as Local_Cinema FROM cinema;

START transaction;
use dbcine;
select * from filme;
UPDATE filme SET Duracao = 151 
	Where FilmeId = 3;
rollback;

select NomeCliente, DataNasc from cliente limit 20, 1;
-- /*** CONSULTAS THALYTA ***/ --
