/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.*/

create database DB_RH;
use DB_RH;

/*Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.*/

create table TB_Funcionarios(

id bigint auto_increment,
nome varchar(50) not null,
cpf varchar(50) not null,
funcao varchar(50) not null,
salario decimal(6,2) not null,
idade varchar(2),
primary key (id)

);

-- Popule esta tabela com até 5 dados; --

INSERT INTO TB_funcionarios (nome, cpf, funcao, salario, idade) values ("Bruno Felix" , "454.545.454.54", "Assistente de RH", "3.000", "26");
INSERT INTO TB_funcionarios (nome, cpf, funcao, salario, idade) values ("Ana" , "454.545.454-54", "Assistente de RH", "3.000", "36");
INSERT INTO TB_funcionarios (nome, cpf, funcao, salario, idade) values ("Julia" , "787.787.878-45", "gerente", "5.000", "46");
INSERT INTO TB_funcionarios (nome, cpf, funcao, salario, idade) values ("Laura" , "454.111.222-45", "Auxiliar de RH", "2.000", "46");
INSERT INTO TB_funcionarios (nome, cpf, funcao, salario, idade) values ("Joana" , "411.655.455-78", "Contatora de RH", "3.500", "56");

-- Faça um select que retorne os funcionaries com o salário maior do que 2000. --


select * from TB_funcionarios where salario > 2.000;

-- Faça um select que retorne os funcionaries com o salário menor do que 2000. --

select * from TB_funcionarios where salario < 2.000;

-- Ao término atualize um dado desta tabela através de uma query de atualização.--

-- Desabilita o modo safe update--
SET SQL_SAFE_UPDATES = 0;

-- Fazendo alteração  --
update TB_funcionarios set funcao = "Analista" where id =16;




