USE DBCINE;
SELECT * FROM CINEMA;
SELECT * FROM FILME;
SELECT * FROM GENERO;
SELECT * FROM SALA;
SELECT * FROM SESSAO;
SELECT * FROM BILHETERIA;
SELECT * FROM INGRESSO;
SELECT * FROM CLIENTE;

-- CONSULTAS MARIA --

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