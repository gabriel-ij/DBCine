-- FILIAIS
INSERT INTO CINEMA (CinemaId, NomeCinema, Pais, Estado, Cidade, Bairro, Cep, Telefone, Email) VALUES
	-- um em Brasília
    ('73.354.942/0001-41', 'Infame Asa Norte', 'Brasil', 'DF', 'Brasília', 'Asa Norte', '70790-059', '(61) 3782-8964', 'infame@infame.com.br'),
	-- o outro em RJ
    ('27.288.665/0001-07', 'Infame Barra da Tijuca', 'Brasil', 'RJ', 'Rio de Janeiro', 'Barra da Tijuca', '25576-050', '(21) 2527-7439', 'infame@infame.com.br')
;

-- SALAS DE CADA FILIAL
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

-- PREÇOS
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