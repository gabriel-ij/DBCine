-- INSERTS

INSERT INTO CINEMA (CinemaId, NomeCinema, Pais, Estado, Cidade, Bairro, Cep, Telefone, Email) VALUES
	-- um em Brasília
    ('73.354.942/0001-41', 'Infame Asa Norte', 'Brasil', 'DF', 'Brasília', 'Asa Norte', '70790-059', '(61) 3782-8964', 'infame@infame.com.br'),
	-- o outro em RJ
    ('27.288.665/0001-07', 'Infame Barra da Tijuca', 'Brasil', 'RJ', 'Rio de Janeiro', 'Barra da Tijuca', '25576-050', '(21) 2527-7439', 'infame@infame.com.br')
;

INSERT INTO SALA (SalaId, NumeroSala, Capacidade, Tela3D, CinemaId) VALUES
	-- 7 salas no Infame Asa Norte
    ('DF01', 1, 130, 0, '73.354.942/0001-41'),
    ('DF02', 2, 150, 0, '73.354.942/0001-41'),
    ('DF03', 3, 150, 0, '73.354.942/0001-41'),
    ('DF04', 4, 150, 1, '73.354.942/0001-41'),
    ('DF05', 5, 180, 1, '73.354.942/0001-41'),
    ('DF06', 6, 220, 1, '73.354.942/0001-41'),
    ('DF07', 7, 250, 1, '73.354.942/0001-41'),
	-- 9 salas no Infame Barra da Tijuca
    ('RJ01', 1, 130, 0, '27.288.665/0001-07'),
    ('RJ02', 2, 150, 0, '27.288.665/0001-07'),
    ('RJ03', 3, 180, 0, '27.288.665/0001-07'),
    ('RJ04', 4, 220, 0, '27.288.665/0001-07'),
    ('RJ05', 5, 180, 1, '27.288.665/0001-07'),
    ('RJ06', 6, 220, 1, '27.288.665/0001-07'),
    ('RJ07', 7, 220, 1, '27.288.665/0001-07'),
    ('RJ08', 8, 250, 1, '27.288.665/0001-07'),
    ('RJ09', 9, 250, 1, '27.288.665/0001-07')
;

INSERT INTO GENERO (Genero) VALUES
	('Ação'),
    ('Aventura'),
    ('Comédia'),
    ('Documentário'),
    ('Drama'),
	('Fantasia'),
    ('Ficção'),
    ('Guerra'),
    ('Musical'),
    ('Policial'),
    ('Romance'),
    ('Suspense'),
    ('Terror'),
    ('Comédia/Ação'),
	('Comédia/Terror'),
    ('Comédia/Romance')
;

INSERT INTO FILME (Titulo, Genero, Duracao, AnoLancamento, Elenco, Sinopse, FaixaEtaria) VALUES
	('Venom: Tempo de Carnificina', 'Ação', 105, 2021, 
    'Tom Hardy, Woody Harrelson, Michelle Williams', 
    '1996. O jovem - prestes a se tornar um serial killer - Cletus Kasady e sua namorada Frances Barrison estão sendo levados por policiais para um instituto contra a vontade deles. Mas ambos possuem dois symbiontes que os ajudam a fugir do local. Agora, no tempo presente, um ano após os acontecimentos de Venom (2018), Eddie Brock  e o symbionte Venom estão tendo dificuldades em se acostumar um com o outro. Eddie está tentando voltar com sua carreira como jornalista e para sua sorte, um detetive o aborda para entrevistar Kasady, agora preso e indo para o corredor da morte, que só quer dar entrevista se for com Eddie. Após a entrevista, Eddie e Venom acabam levando fama ao descobrirem mais das vítimas de Kasady antes que ele seja levado para a injeção da morte. Mas, no dia em que Kasady iria pagar por seus crimes, sua execução falha e seu symbionte Carnage o faz escapar da prisão. Agora, Carange e Kasady estão atrás de Venom e Eddie.', 
    'PG-13'),
    ('Homem Aranha: Longe de Casa', 'Aventura', 150, 2021,
    'Tom Holland, Jake Gyllenhaal, Zendaya', 
    'Em Homem-Aranha: Longe de Casa, Peter Parker (Tom Holland) está em uma viagem de duas semanas pela Europa, ao lado de seus amigos de colégio, quando é surpreendido pela visita de Nick Fury (Samuel L. Jackson). Precisando de ajuda para enfrentar monstros nomeados como Elementais, Fury o convoca para lutar ao lado de Mysterio (Jake Gyllenhaal), um novo herói que afirma ter vindo de uma Terra paralela. Além da nova ameaça, Peter precisa lidar com a lacuna deixada por Tony Stark, que deixou para si seu óculos pessoal, com acesso a um sistema de inteligência artificial associado à Stark Industries.', 
    'PG-13'),
    ('Matrix Resurrections', 'Ficção', 150, 2021, 
    'Keanu Reeves, Carrie-Anne Moss, Yahya Abdul-Mateen II', 
    'Se passando 20 anos após os acontecimentos de de Matrix Revolutions, Neo vive uma vida aparentemente comum sob sua identidade original como Thomas A. Anderson em São Francisco, Califórnia, com um terapeuta que lhe prescreve pílulas azuis para neutralizar as coisas estranhas e não naturais que ele ocasionalmente vislumbra em sua mente. Ele também conhece uma mulher que parece ser Trinity (Carrie Anne-Moss), mas nenhum deles se reconhece. No entanto, quando uma nova versão de Morpheus oferece a ele a pílula vermelha e reabre sua mente para o mundo da Matrix, que se tornou mais seguro e perigoso nos anos desde a infecção de Smith, Neo volta a se juntar a um grupo de rebeldes para lutar contra um novo e maois perigoso inimigo e livrar todos da Matrix novamente.', 
    '12'),
    ('Casa Gucci', 'Drama', 108, 2021, 
    'Keanu Reeves, Carrie-Anne Moss, Yahya Abdul-Mateen II', 
    'Casa Gucci é baseado na história de Patrizia Reggiani, ex-mulher de Maurizio Gucci, membro da família fundadora da marca italiana Gucci. Patrizia conspirou para matar o marido em 1995, contratando um matador de aluguel e outras três pessoas, incluindo a terapeuta e melhor amiga. Ela foi considerada culpada e condenada a 29 anos de prisão. Quase 3 décadas de amor, traição, decadência, vingança e assassinato, o filme revela a importância e poder que o nome Gucci carrega e tudo o que a família fez para conseguir esse controle.', 
    '14'),
    ('Encanto', 'Musical', 92, 2021, 
    'Filipe Bragança, Stephanie Beatriz, John Leguizamo', 
    'Encanto é a nova animação da Disney situada na Colômbia, sobre a extraordinária família Madrigal, que vive escondida em uma região montanhosa isolada, conhecido como Encanto. A magia da região abençoou todos os meninos e meninas membros da família com poderes mágicos, desde superforça até o dom da cura. Mirabel é a única que não tem um dom mágico. Mas, quando descobre que a magia que cerca o Encanto está em perigo, ela decide que pode ser a última esperança de sua família excepcional.', 
    'Livre')
;

INSERT INTO SESSAO (Horario, Titulo, CinemaId, SalaId) VALUES
	-- algumas sessões em Brasília
	('2021-01-10 17:15:00', 'Venom: Tempo de Carnificina', '73.354.942/0001-41', 'DF05'),
	('2021-01-10 17:15:00', 'Homem Aranha: Longe de Casa', '73.354.942/0001-41', 'DF06'),
    ('2021-01-10 19:30:00', 'Matrix Resurrections', '73.354.942/0001-41', 'DF04'),
    ('2021-01-10 20:00:00', 'Casa Gucci', '73.354.942/0001-41', 'DF02'),
	('2021-01-10 21:15:00', 'Venom: Tempo de Carnificina', '73.354.942/0001-41', 'DF05'),
	('2021-01-10 21:15:00', 'Homem Aranha: Longe de Casa', '73.354.942/0001-41', 'DF06'),
    -- outras em RJ
	('2021-01-13 16:00:00', 'Casa Gucci', '27.288.665/0001-07', 'RJ01'),
	('2021-01-13 17:15:00', 'Venom: Tempo de Carnificina', '27.288.665/0001-07', 'RJ06'),
	('2021-01-13 17:15:00', 'Homem Aranha: Longe de Casa', '27.288.665/0001-07', 'RJ07'),
    ('2021-01-13 19:30:00', 'Matrix Resurrections', '27.288.665/0001-07', 'RJ02'),
    ('2021-01-13 20:00:00', 'Casa Gucci', '27.288.665/0001-07', 'RJ03'),
	('2021-01-13 21:15:00', 'Venom: Tempo de Carnificina', '27.288.665/0001-07', 'RJ06'),
	('2021-01-13 21:15:00', 'Homem Aranha: Longe de Casa', '27.288.665/0001-07', 'RJ07')
;

INSERT INTO BILHETERIA (DiaSemana, PrecoIngresso, SalaId, CinemaId) VALUES
-- Infame Asa Norte
	-- Finais de semana e feriados 
		-- Salas 2D
	('Qui/Sex/Sab/Dom/fer', '33.00', 'DF01', '73.354.942/0001-41'),
    ('Qui/Sex/Sab/Dom/fer', '33.00', 'DF02', '73.354.942/0001-41'),
    ('Qui/Sex/Sab/Dom/fer', '33.00', 'DF03', '73.354.942/0001-41'),
		-- Salas 3D
	('Qui/Sex/Sab/Dom/fer', '38.00', 'DF04', '73.354.942/0001-41'),
    ('Qui/Sex/Sab/Dom/fer', '38.00', 'DF05', '73.354.942/0001-41'),
    ('Qui/Sex/Sab/Dom/fer', '38.00', 'DF06', '73.354.942/0001-41'),
    ('Qui/Sex/Sab/Dom/fer', '38.00', 'DF07', '73.354.942/0001-41'),

	-- demais dias 
		-- Salas 2D
	('Seg/Ter/Qua', '25.00', 'DF01', '73.354.942/0001-41'),
    ('Seg/Ter/Qua', '25.00', 'DF02', '73.354.942/0001-41'),
    ('Seg/Ter/Qua', '25.00', 'DF03', '73.354.942/0001-41'),
		-- Salas 3D
	('Seg/Ter/Qua', '30.00', 'DF04', '73.354.942/0001-41'),
    ('Seg/Ter/Qua', '30.00', 'DF05', '73.354.942/0001-41'),
    ('Seg/Ter/Qua', '30.00', 'DF06', '73.354.942/0001-41'),
    ('Seg/Ter/Qua', '30.00', 'DF07', '73.354.942/0001-41'),


-- Infame Barra da Tijuca
	-- Finais de semana e feriados 
		-- Salas 2D
	('Qui/Sex/Sab/Dom/fer', '35.00', 'RJ01', '27.288.665/0001-07'),
    ('Qui/Sex/Sab/Dom/fer', '35.00', 'RJ02', '27.288.665/0001-07'),
    ('Qui/Sex/Sab/Dom/fer', '35.00', 'RJ03', '27.288.665/0001-07'),
    ('Qui/Sex/Sab/Dom/fer', '35.00', 'RJ04', '27.288.665/0001-07'),
		-- Salas 3D
	('Qui/Sex/Sab/Dom/fer', '40.00', 'RJ05', '27.288.665/0001-07'),
    ('Qui/Sex/Sab/Dom/fer', '40.00', 'RJ06', '27.288.665/0001-07'),
    ('Qui/Sex/Sab/Dom/fer', '40.00', 'RJ07', '27.288.665/0001-07'),
    ('Qui/Sex/Sab/Dom/fer', '40.00', 'RJ08', '27.288.665/0001-07'),
    ('Qui/Sex/Sab/Dom/fer', '40.00', 'RJ09', '27.288.665/0001-07'),
    
	-- demais dias 
		-- Salas 2D
	('Seg/Ter/Qua', '27.00', 'RJ01', '27.288.665/0001-07'),
    ('Seg/Ter/Qua', '27.00', 'RJ02', '27.288.665/0001-07'),
    ('Seg/Ter/Qua', '27.00', 'RJ03', '27.288.665/0001-07'),
    ('Seg/Ter/Qua', '27.00', 'RJ04', '27.288.665/0001-07'),
		-- Salas 3D
	('Seg/Ter/Qua', '32.00', 'RJ05', '27.288.665/0001-07'),
    ('Seg/Ter/Qua', '32.00', 'RJ06', '27.288.665/0001-07'),
    ('Seg/Ter/Qua', '32.00', 'RJ07', '27.288.665/0001-07'),
    ('Seg/Ter/Qua', '32.00', 'RJ08', '27.288.665/0001-07'),
    ('Seg/Ter/Qua', '32.00', 'RJ09', '27.288.665/0001-07')
;