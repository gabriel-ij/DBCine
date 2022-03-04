
# DBCine

Sistema gerenciador de banco de dados, usando esquema de banco de dados relacional para conceituar, modelar e programar o banco de dados para uma empresa de mídia (cinema).

Projeto feito durante o curso de Administrador de Banco de Dados, no Senac-DF.

## Introdução

O mercado teatral mundial arrecadou 42 bilhões de dólares há apenas dois anos atrás, e ao incluir a receita de bilheteria e entretenimento doméstico, a indústria cinematográfica global em 2018 valia 136 bilhões de dólares . E apesar da produção de filmes ter sido fortemente atingida pela pandemia, com cinemas sendo fechados e centenas de filmes adiados, a industria continuou a se desenvolver com a ascenção dos serviços de streaming.
	A lucratividade de um estúdio de cinema depende crucialmente da escolha dos projetos de filme certos e do envolvimento da gestão certa e das equipes criativas (elenco, direção, design visual, trilha sonora, fotografia, figurino, cenografia, edição e muitas especialidades adicionais), mas também depende muito da escolha da escala e abordagem corretas para a promoção de filmes, controle sobre as receitas por meio de tecnologias como gerenciamento de direitos digitais (DRM), práticas contábeis sofisticadas e gerenciamento de fluxos de receita auxiliares; no extremo, para uma grande franquia de mídia centrada no filme, o próprio filme pode ser apenas um grande componente de muitas grandes contribuições para a receita total da franquia. Por outro lado, visando a indústria de exibição de mídia, um sistema de banco de dados é uma ferramenta indispensável para gerenciar o modus operandi do negócio em si.
	A indústria de cinemas lentamente retoma as engrenagens, e a Infame, Inc. deseja retomar os investimentos no setor. Para isso, nós da Startrati fomos contactados para modelar o banco de dados e o sistema web com o objetivo de dar subsídio à Infame, Inc. em gerenciar seu negócio. O projeto será chamado DBCine.


## Objetivos

Desenvolver e implantar um sistema para cadastro, leitura, atualização e remoção dos filmes e programação.


## Estrutura dos arquivos
Em `database` encontra-se a modelagem, estrutura e carga do banco. Em `system` está o sistema administrador que conecta ao banco.

## Funcionalidades

- Visualização simples, modificação, atualização e remoção de filiais, clientes, filmes, sessões e ingressos
- atualização instantânea no banco de dados
- Fácil navegação
- Gerido por sistema de login

## Screenshots

![App Screenshot](system/screenshots/1.%20main.jpg)

Clicar em "Adicionar" leva à página para inserir um novo registro.

![App Screenshot](system/screenshots/2.%20add.jpg)

![App Screenshot](system/screenshots/3.%20insert.jpg)

![App Screenshot](system/screenshots/4.%20success.jpg)

A mudança no é aferida no banco de dados

![App Screenshot](system/screenshots/5.%20register.jpg)

Para apagar o registro, basta clicar no botão vermelho. E clicar no botão verde leva à página de atualização dos dados, semelhante à página de adicionar. Aqui alterou-se o telefone e o email do cinema registrado anteriormente.

![App Screenshot](system/screenshots/6.%20alter.jpg)

## Aprendizados

A engenharia de requisitos e uma modelagem conceitual coerente com as regras de negócio são parte crucial para a fluidez das etapas da modelagem lógica e para a implantação física do banco de dados.
Os feitos desse projeto podem ser usados para a construção de um site próprio para o cinema. Como seria feito? Usando o banco de dados como fonte para mostrar a programação de filmes, ingressos, informações sobre o sistema e afins. Tudo o que for necessário para uma boa experiência client-side.

## Contribuições ao Banco de Dados

<a href="https://github.com/MariaHRCastro">Maria Alice Ribeiro</a>

<a href="https://github.com/ThalytaSN">Thalyta Sampaio Noronha</a>

<a href="">Wendell Baresi</a>