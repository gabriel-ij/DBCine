-- 8. CRIAR UMA TRIGGER PARA ADICIONAR UM CLIENTE ENQUANTO VENDE UM INGRESSO(POSSÍVEL MAS POUCO EFICAZ)--
 DELIMITER //
 create trigger venda_ingresso after
	insert on cliente 
		for each row 
		begin
			insert into ingresso (DataCompra,ClienteId,SessaoId) values
				(now(), new.ClienteId, /*SESSAO EXEMPLO*/ 5); 
		end //
        
/*CLIENTES QUE FORAM INSERIDOS ATRAVÉS DESSE MÉTODO*/
INSERT INTO CLIENTE VALUES
 ("729.513.228-45","Addison Solis","1997-02-13 ","2021-10-05 ","addisonsolis5841@outlook.net","(27)32157-6444"),
  ("462.583.549-58","Tyler Aguirre","1997-12-31 ","2023-01-27 ","tyleraguirre7996@protonmail.edu","(22)68864-1335"),
  ("247.682.657-63","Nevada Carter","1973-12-19 ","2022-09-20 ","nevadacarter9324@protonmail.com","(25)26488-2672"),
  ("858.215.082-49","Malachi Craig","1991-01-01 ","2021-06-16 ","malachicraig3593@yahoo.couk","(45)34141-1851"),
  ("284.203.190-35","Candice Holland","1982-11-01 ","2018-10-15 ","candiceholland@outlook.net","(58)37025-1144");

-- 9. CRIANDO UMA PROCEDURE PARA ATUALIZAR OS INGRESSOS, VENDA PARA CLIENTES CADASTRADOS --

DELIMITER //
create procedure pd_venda_cadastrados (DataCompra datetime,ClienteId varchar(14), SessãoId int)
		begin 
			insert into ingresso  
            (DataCompra,ClienteId,SessaoId) values 
            (DataCompra,ClienteId,SessaoId) ;
		END //
            
			-- EXEMPLO DE USO DA PROCEDURE--
call pd_venda_cadastrados (NOW(),"284.203.190-35",2);
select * from ingresso;

-- CRIAR SESSÕES COM UMA PROCEDURE -- 

select * from sessao;
select * from cinema;
select * from filme;

DELIMITER //
create procedure cria_sessao (horario datetime, titulo text, cinema varchar(20), sala varchar(5))
	begin
		insert into sessao ( Horario, Titulo, CinemaId,SalaId) values
        (horario,titulo,cinema,sala);
	end //

call cria_sessao ("2022-02-19 15:00:00","Duna", '73.354.942/0001-41', "DF03");

		-- SESSÕES NO DF --

DELIMITER //
create procedure cria_sessaoDF (horario datetime, titulo text, sala varchar(5))
	begin
		insert into sessao ( Horario, Titulo, CinemaId,SalaId) values
        (horario,titulo,'73.354.942/0001-41',sala);
	end //
    
call cria_sessaoDF("2022-02-19 15:00:00","Morte no Nilo","DF01");
		-- SESSÕES NO RIO DE JANEIRO--
DELIMITER //
create procedure cria_sessaoRJ(horario datetime, titulo text, sala varchar(5))
	begin
		INSERT INTO sessao ( Horario, Titulo, CinemaId,SalaId) values
        (horario,titulo,'27.288.665/0001-07',sala);
	end //
    
    call cria_sessaoRJ("2022-02-19 15:00:00",'Resident Evil: Bem-Vindo a Raccoon City ',"RJ03");

