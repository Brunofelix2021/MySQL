
/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.*/


create database Ecommerce;
use Ecommerce;

/*Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.*/

create table Produtos(
id bigint auto_increment,
descricao varchar(100) not null,
quantidade int,
preco decimal (6,2) not null,
cor varchar(20),
loja varchar(100),
primary key (id)

);

-- Popule esta tabela com até 8 dados;--

INSERT INTO produtos (descricao, quantidade, preco, cor, loja) values ("Carrinho",6,"2.30","Azul","SP");
INSERT INTO produtos (descricao, quantidade, preco, cor, loja) values ("bola",1200,"10.00","branca","SP");
INSERT INTO produtos (descricao, quantidade, preco, cor, loja) values ("boneca",99,"14.30","rosa","RJ");
INSERT INTO produtos (descricao, quantidade, preco, cor, loja) values ("mochila",600,"100.00","laranja","RJ");
INSERT INTO produtos (descricao, quantidade, preco, cor, loja) values ("Violão",10,"3.000","colorido","GO");
INSERT INTO produtos (descricao, quantidade, preco, cor, loja) values ("patins",87,"249.00","preta","FOR");
INSERT INTO produtos (descricao, quantidade, preco, cor, loja) values ("Quadro",8,"2.30","cinza","BRA");
INSERT INTO produtos (descricao, quantidade, preco, cor, loja) values ("Caixa de lapis",65,"6.80","verde","POA");

-- Faça um select que retorne os produtos com o valor maior do que 500. --

select * from Produtos where preco > 500;


-- Faça um select que retorne os produtos com o valor maior do que 500. --

select * from Produtos where preco < 500;


-- Ao término atualize um dado desta tabela através de uma query de atualização.--

-- Desabilita o modo safe update--
SET SQL_SAFE_UPDATES = 0;

update produtos set preco = 3000 where id =6;



