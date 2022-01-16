
/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.*/


create database DB_Escola;
use DB_Escola;

/*Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço desta escola.*/

create table Alunos(
id bigint auto_increment,
nome varchar(100) not null,
idade int,
serie varchar(2) not null,
nota decimal(6,2) not null,
sexo char(1),
primary key (id)

);

-- Popule esta tabela com até 8 dados;--

INSERT INTO Alunos (nome, idade, serie, nota, sexo) values ("Bruno",15,"6º","7.5","M");
INSERT INTO Alunos (nome, idade, serie, nota, sexo) values ("Pedro",14,"5º","5.5","M");
INSERT INTO Alunos (nome, idade, serie, nota, sexo) values ("Ana",18,"9º","9.75","F");
INSERT INTO Alunos (nome, idade, serie, nota, sexo) values ("Marina",17,"8º","10","F");
INSERT INTO Alunos (nome, idade, serie, nota, sexo) values ("Alana",14,"6º","4.5","F");
INSERT INTO Alunos (nome, idade, serie, nota, sexo) values ("Tayra",20,"9º","6.5","F");
INSERT INTO Alunos (nome, idade, serie, nota, sexo) values ("Diego",12,"3º","5.5","M");
INSERT INTO Alunos (nome, idade, serie, nota, sexo) values ("Lais",19,"9º","9.5","F");

-- Faça um select que retorne o/as estudantes com a nota maior do que 7.. --

select * from Alunos where nota > 7;


-- Faça um select que retorne o/as estudantes com a nota menor do que 7. --

select * from Produtos where preco < 7;


-- Ao término atualize um dado desta tabela através de uma query de atualização.--

-- Desabilita o modo safe update--
SET SQL_SAFE_UPDATES = 0;

update Alunos set nome = "Lana Manoela" where id =4;




