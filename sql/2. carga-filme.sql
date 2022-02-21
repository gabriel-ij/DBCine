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

-- update Thalyta
INSERT INTO FILME (Titulo, Genero, Duracao, AnoLancamento, Elenco, Sinopse, FaixaEtaria) VALUES 
('Eduardo e Mônica', 'Romance', '114', 2022, 'Alice Braga, Gabriel Leone, Bruna Spínola e Victor Lamoglia',
'Em um dia atípico, uma série de coincidências levam Eduardo a conhecer Mônica em uma festa. 
Uma curiosidade é despertada entre os dois e, apesar de não serem parecidos, eles se apaixonam perdidamente. 
Em Brasília, na década de 1980, esse amor precisa amadurecer e aprender a superar as diferenças.', 14),

('Eternos','Ação', '160', 2021, 'Harry Styles, Angelina Jolie, Kit Harington, Gemma Chan, Richard Madden, Salma Hayek, entre outros',
'Os Eternos são uma raça de seres imortais que viveram durante a antiguidade da Terra moldando sua história
 e suas civilizações enquanto batalhavam os malignos Deviantes.', 18),
 
('Mulher Maravilha','Ação', '141', 2017, 'Gal Gadot, Chris Pine, Robin Wright, Connie Nielsen, David Thewlis, entre outros',
'Treinada desde cedo para ser uma guerreira imbatível, Diana Prince nunca saiu da paradisíaca ilha em que é 
reconhecida como princesa das Amazonas.Quando o piloto Steve Trevor sofre um acidente e cai em uma praia do local, 
ela descobre que uma guerra sem precedentes está se espalhando pelo mundo e decide deixar seu lar certa de que pode 
parar o conflito. Lutando para acabar com a guerra, Diana percebe o alcance de seus poderes e sua verdadeira missão na Terra.', 12),

('Exorcismo de Emilly Rose', 'Terror', '120', 2005, 'Jennifer Carpenter, Laura Linney, Tom Wilkinson, Campbell Scott, Colm Feore,
entre outros', 'A jovem estudante Emily Rose começa a alucinar e ter surtos cada vez mais frequentes, que causam perda de memória.
Católica praticante, ela aceita ser submetida a uma sessão de exorcismo. Quem a realiza é o sacerdote de sua paróquia, o padre Richard Moore.
Porém, Emily morre durante o exorcismo, o que faz com que o padre seja acusado de assassinato. A advogada Erin Bruner aceita pegar
a defesa do padre e argumenta que a condição de Emily não pode ser explicada somente pela ciência.', 14),

('O Auto da Compadecida', 'Comédia', '95', 2000, 'Matheus Nachtergaele, Selton Mello, Virginia Cavendish, Denise Fraga,
Fernanda Montenegro, Paulo Goulart, Luis Melo, Marco Nanini, entre outros', 'As aventuras de João Grilo e Chicó, dois 
nordestinos pobres que vivem de golpes para sobreviver. Eles estão sempre enganando o povo de um pequeno vilarejo,
inclusive o temido cangaceiro Severino de Aracaju, que os persegue pela região.', 12),    

('As Agentes 355', 'Suspense', '120', 2022, 'Jessica Chastain, Fan Bingbing, Penelope Cruz, Sebastian Stan,
Diane Kruger, Lupita Nyong o, entre outros', 'Quando uma arma ultrassecreta cai nas mãos de um grupo de mercenários que ameaçam o mundo,
a agente da CIA Mace Brown (Jessica Chastain) terá que unir forças para uma missão letal com a agente alemã Marie (Diane Kruger), 
a ex-membro do MI6, especialista em computadores, Khadijah (Lupita Nyong o), a psicóloga Graciela (Penélope Cruz), e com 
Lin Mi Sheng (Bingbing Fan), uma mulher misteriosa que está rastreando todos os seus movimentos.', 14), 

('My Hero Academia Missao Mundial de Heróis', 'Fantasia', '104', 2022, 'Justin Briner, Robbie Daymond, 
Ryo Yoshizawa, Kazuya Nakai, entre outros', 'Izuku Midoriya, Katsuki Bakugo e Shoto Todoroki, alunos de ensino médio do colégio U.A.,
enfrentam a maior crise da história de My Hero Academia. Eles terão apenas duas horas para salvar o mundo! Durante o sonhado estágio 
sob a tutela do reverenciado herói Endeavor, Deku e seu novo amigo Rody veem-se em apuros ao serem procurados por um crime que não 
cometeram.', 12),

('Juntos e Enrolados', 'Comédia/Romance', '97', 2022, 'Cacau Protásio, Rafael Portugal, Jon Vlogs, Evelyn Castro,
entre outros', 'Após dois anos de união e muita economia financeira, Júlio e Daiana finalmente alcançaram o sonho 
de realizar a festa de casamento. Tudo parece estar indo bem, até que o noivo recebe uma mensagem em seu celular 
antes da cerimônia começar. Uma confusão generalizada acontece, mas a festa precisa continuar.', 18),

('The Batman', 'Ação', '175', 2022, 'Robert Pattinson, Zoe Kravitz, Paul Dano, Colin Farrell, entre outros',
'Da Warner Bros. Pictures chega THE BATMAN com o realizador Matt Reeves no comando e protagonizado por Robert Pattinson
no duplo papel de detetive de Gotham City e do seu alter ego, o bilionário solitário Bruce Wayne.', 13),

('Duna', 'Ficção', '155', 2021, 'Zendaya, Timothee Chalamet, Rebecca Ferguson, Oscar Isaac,
entre outros', 'Paul Atreides é um jovem brilhante, dono de um destino além de sua compreensão. Ele deve viajar
para o planeta mais perigoso do universo para garantir o futuro de seu povo.', 14);

-- update Maria

INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES ('Morte no Nilo', 'Suspense', '127', '2022', 'Kenneth Branagh, Gal Gadot, Emma Mackey', 'Em Morte no Nilo, durante sua viagem de lua de mel pelo rio Nilo, o casal Linnet Ridgeway (Gal Gadot) e Simon Doyle (Armie Hammer), convidaram os entes mais queridos para embarcar no barco Karvak e celebrar a união do casal. Porém a rica herdeira é misteriosamente morta de noite e por quase todos os passageiros têm motivos para matá-la. Mas um dos convidados, por coincidência, é o mais famoso detetive do mundo, Hércules Poirot, que começa a investigar o caso.', '14');
INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES ('Spencer', 'Drama', '117', '2022', 'Kristen Stewart, Timothy Spall, Jack Nielen', 'Spencer é um longa cujo título faz referência ao sobrenome de solteira de Diana. Se passando nos anos 1990, Diana passa o feriado do Natal com a família real na propriedade de Sandringham, em Norfolk, Reino Unido. Apesar das bebidas, brincadeiras e comidas que Diana já sabe o script da realeza, mas esse final de ano vai ser diferente.', '12');
INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES ('O Beco do Pesadelo', 'Suspense', '140', '2022', 'Bradley Cooper, Cate Blanchett, Toni Collette', 'Em O Beco do Medo, quando o carismático, mas sem sorte, vigarista Stanton Carlisle (Bradley Cooper) acaba entrando para um \"circo dos horrores\" após perder tudo. Lá ele encontra a vidente Zeena (Toni Collette) e seu marido Pete (David Strathairn), que fazem um show de leitura fria e um engenhoso sistema de linguagem codificada para fazer parecer que ela tem poderes mentais extraordinários.', '16');
INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES ('Velozes & Furiosos 9', 'Ação', '143', '2021', 'Vin Diesel, Michelle Rodriguez, Jordana Brewster', 'Em Velozes & Furiosos 9, dois anos após o confronto com a ciber-terrorista Cipher, Dominic Toretto (Vin Diesel) - agora aposentado - e Letty (Michelle Rodriguez) vivem uma vida pacata ao lado de seu filho Brian. Mas a vida dos dois é logo interrompida quando Roman Pearce, Tej Parker e Ramsey chegam com notícias de que, pouco depois de prender Cipher (Charlize Theron), o avião de Mr. Nobody foi atacado por agentes e sequestraram Cipher, precisando da ajuda dele para investigar mais afundo.', '14');
INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES ('Resident Evil: Bem-Vindo a Raccoon City ', 'Ação', '107', '2022', 'Kaya Scodelario, Hannah John-Kamen, Robbie Amell', 'e passa quando uma vez próspera empresa farmaceutica Corporação Umbrella que atuava em Raccoon City agora é nada mais do que uma cidade fantasma. O êxodo da empresa deixou a cidade cheia de perigos ainda a serem descobertos. Mas quando o mal é liberado, a população local é ameaçada e apenas um grupo de sobreviventes sobraram para descobrir o mal que se esconde na cidade e na antiga Umbrella para sobreviver a noite.', '14');
INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES (' Halloween Kills: O Terror Continua', 'Terror', '106', '2021', 'Jamie Lee Curtis, Judy Greer, Andi Matichak', 'Em Halloween Kills: O Terror Continua, depois de quatro décadas se preparando para enfrentar Michael Myers, Laurie Strode (Jamie Lee Curtis) acredita que enfim venceu. Minutos depois de deixar o assassino queimando, Laurie vai direto para o hospital com ferimentos graves de vida ou morte. Mas quando Michael consegue escapar da armadilha de Laurie, sua vingança e desejo por um banho de sangue continua.', '16');
INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES ('Pânico', 'Terror', '115', '2022', 'Neve Campbell, Courteney Cox, David Arquette', 'Agora um novo assassino veste a máscara do Ghostface e começa a mirar em um grupo de adolescentes, o que será capaz de ressuscitar segredos do passado mortal da cidade, além de reacender traumas nos sobreviventes, que, novamente, precisaram enfrentar essa ameaça obscura e violenta.', '16');
INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES ('Marighella', 'Drama', '155', '2021', ' Seu Jorge, Adriana Esteves, Bruno Gagliasso', 'Neste filme biográfico, acompanhamos a história de Carlos Marighella, em 1969, um homem que não teve tempo pra ter medo. De um lado, uma violenta ditadura militar. Do outro, uma esquerda intimidada. Cercado por guerrilheiros 30 anos mais novos e dispostos a reagir, o líder revolucionário escolheu a ação. ', '16');
INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES ('Afterimage', 'Drama', '98', '2017', 'Boguslaw Linda, Aleksandra Justa, Bronislawa Zamachowska', 'Wladyslaw Strzeminski (Boguslaw Linda), é um artista de vanguarda polonês que superou todas as dificuldades impostas pelas suas deficiências físicas - ele não possuía uma perna e um braço - e também o ódio, a indiferença e a crueldade dispensados pelas autoridades de seu país para se tornar um dos artistas mais reverenciados do século vinte, uma verdadeira força da natureza que batalhou com todas as forças para construir seu progressista e genial programa artístico.', '12');
INSERT INTO `dbcine`.`FILME` (`Titulo`, `Genero`, `Duracao`, `AnoLancamento`, `Elenco`, `Sinopse`, `FaixaEtaria`) VALUES ('Deserto Particular', 'Drama', '125', '2021', 'Antonio Saboia, Luthero de Almeida, Thomas Aquino', 'Depois de cometer um erro que coloca sua carreira e honra na linha, Daniel parte para procurar Sara, uma mulher que conheceu na internet', '14');



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
