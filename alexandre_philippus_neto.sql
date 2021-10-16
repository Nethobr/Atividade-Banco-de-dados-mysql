-- Ferramenta utilizada: Workbench ( ﾉ ﾟｰﾟ)ﾉ
-- Criando o banco de dados, e colocando para usar o bd;
create database locadora;

use locadora;

-- 1. Em um banco de dados chamado "locadora", crie a tabela "filmes" com a seguinte estrutura: 
create table filmes
	(
		id int auto_increment, -- auto incremento fon
		nome varchar(40),
			
		primary key(id) -- colocando como PK
	);

select * from filmes; -- vendo a table criada

-- 2. Insira os seguintes registros na tabela "filmes": 
insert into filmes (id, nome) values (default, "A Hora do Pesadelo");						 		-- 1
insert into filmes (id, nome) values (default, "Bem-Hur "); 									-- 2
insert into filmes (id, nome) values (default, "Como Eu Era antes de Você "); 							-- 3
insert into filmes (id, nome) values (default, "Estrada Sem Lei"); 								-- 4
insert into filmes (id, nome) values (default, "Forrest Gump – O Contador de Histórias"); 					-- 5
insert into filmes (id, nome) values (default, "Harry Potter e a Ordem da Fênix"); 						-- 6
insert into filmes (id, nome) values (default, "Intocáveis"); 									-- 7
insert into filmes (id, nome) values (default, "It – A Coisa"); 								-- 8
insert into filmes (id, nome) values (default, "Minha Mãe É uma Peça"); 							-- 9
insert into filmes (id, nome) values (default, "O Iluminado"); 									-- 10
insert into filmes (id, nome) values (default, "O Resgate do Soldado Ryan"); 							-- 11
insert into filmes (id, nome) values (default, "Os Infiltrados"); 								-- 12
insert into filmes (id, nome) values (default, "Vingadores"); 									-- 13
insert into filmes (id, nome) values (default, "Pantera Negra"); 								-- 14
insert into filmes (id, nome) values (default, "Para Todos os Garotos que Já Amei"); 						-- 15
    
select * from filmes; -- vendo todos os items inseridos
    
-- 3. Altere o nome da tabela "filmes" para "acervo". 
rename table filmes to acervo;

select * from acervo; -- selecionando tudo para ver se deu certo :)

-- 4. Na tabela "acervo", altere o nome da coluna "nome" para "titulo". 
alter table acervo
rename column nome to titulo;

select * from acervo; -- selecionando tudo para ver se deu certo :)

-- 5. Altere a estrutura da tabela "acervo" como mostrado a seguir: 
alter table acervo
add column genero enum('Ação', 'Aventura', 'Comédia', 'Drama', 'Policial', 'Romance', 'Terror'); -- colocando a coluna genero
	/*
		Só para não me perder (ง •_•)ง
		1 - AÇÃO;
		2 - AVENTURA;
		3 - COMÉDIA;
		4 - DRAMA;
		5 - POLICIAL;
		6 - ROMANCE;
		7 - TERROR.
	*/

alter table acervo
add column ano year; -- colocano a coluno ano

select * from acervo; -- selecionando tudo para ver se deu certo :)

-- 6. Faça a inclusão do gênero e ano para cada registro, conforme mostrado na tabela a seguir. (╯°□°）╯︵ ┻━┻
update acervo set genero = '7', ano = '1986' where id = 1; 				-- 1
update acervo set genero = '2', ano = '1960' where id = 2; 				-- 2
update acervo set genero = '6', ano = '2016' where id = 3; 				-- 3
update acervo set genero = '3', ano = '2014' where id = 4; 				-- 4
update acervo set genero = '3', ano = '1994' where id = 5; 				-- 5
update acervo set genero = '2', ano = '2007' where id = 6; 				-- 6
update acervo set genero = '4', ano = '2012' where id = 7; 				-- 7
update acervo set genero = '7', ano = '2017' where id = 8; 				-- 8
update acervo set genero = '3', ano = '2013' where id = 9; 				-- 9
update acervo set genero = '7', ano = '1980' where id = 10; 				-- 10
update acervo set genero = '4', ano = '1998' where id = 11; 				-- 11
update acervo set genero = '5', ano = '2006' where id = 12; 				-- 12
update acervo set genero = '1', ano = '2012' where id = 13; 				-- 13
update acervo set genero = '1', ano = '2018' where id = 14; 				-- 14
update acervo set genero = '6', ano = '2018' where id = 15; 				-- 15
	
select * from acervo; -- selecionando tudo para ver se deu certo :)

/* 
7. Para o título "Estrada Sem Lei", altere o gênero para "Policial" e o ano para "2019". 
8. Para o título "Vingadores", altere o título para "Os Vingadores – The Avengers". 
*/
update acervo set titulo = "Os Vingadores – The Avengers" where titulo = "Vingadores";
update acervo set genero = '5', ano = '2019' where titulo = "Estrada Sem Lei";
select * from acervo; -- selecionando tudo para ver se deu certo :)

-- 9. Inclua na tabela "acervo" mais um registro à sua escolha, respeitando os gêneros cadastrados no item 5. 
insert into acervo (id, titulo, genero, ano) values (default, "Gente grande", 3, 2010);
select * from acervo; -- selecionando tudo para ver se deu certo :)

-- 10. Crie o backup do Banco de Dados “Locadora”. 
   -- feito.

-- 11. Crie um novo banco como Locadora2 e importe o backup da Locadora.
create database Locadora2;
	-- Importei lá ＼(ﾟｰﾟ＼)
-- 12. Exclua o título "Os Infiltrados" da tabela "acervo". 
use locadora;
delete from acervo where titulo = "Os Infiltrados";
select * from acervo; -- selecionando tudo para ver se deu certo :)

-- 13. Exclua todos os registros da tabela "acervo". 
delete from acervo; -- daria para usar o truncate
select * from acervo; -- selecionando tudo para ver se deu certo :)

-- 14. Exclua a tabela "acervo" do banco de dados "locadora".
drop table acervo;
show tables; -- ver se funciono :>

-- 15. Exclua o banco de dados "locadora".
drop database locadora;

-- Pegando o BK
show databases;

use locadora2;
show tables;
