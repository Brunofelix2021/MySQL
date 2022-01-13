

create database bd_farmacia_do_bem;
use bd_farmacia_do_bem;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.*/

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
lote int,
primary key (id)
);

-- Popule esta tabela Categoria com até 5 dados. --

insert into tb_categoria(tipo, lote) value ("Cosmeticos", 233);
insert into tb_categoria(tipo, lote) value ("Remedios", 453);
insert into tb_categoria(tipo, lote) value ("Perfumaria", 663);
insert into tb_categoria(tipo, lote) value ("Higiene Pessoal", 300);
insert into tb_categoria(tipo, lote) value ("Para cabelo", 553);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).*/

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
marca varchar(255),
validade date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);


-- Popule esta tabela Produto com até 8 dados.--

insert into tb_produtos(nome, preco, marca, validade, categoria_id) value ("Paracetamol",10.80, "Cimed", "2022-04-01", 2);
insert into tb_produtos(nome, preco, marca, validade, categoria_id) value ("Nimesulina",20.90, "Cimed", "2022-04-01", 2);
insert into tb_produtos(nome, preco, marca, validade, categoria_id) value ("Dipirona", 6.90,"Cimed", "2022-05-05", 2);
insert into tb_produtos(nome, preco, marca, validade, categoria_id) value ("Sabonete", 4.00, "lux", "2023-04-04", 4);
insert into tb_produtos(nome, preco, marca, validade, categoria_id) value ("Perfume", 55.90, "Avon", "2021-10-01", 3);
insert into tb_produtos(nome, preco, marca, validade, categoria_id) value ("Shampoo", 26.90, "Lorial", "2024-04-01", 5);
insert into tb_produtos(nome, preco, marca, validade, categoria_id) value ("Creme de pele", 22.90, "Dove", "2023-09-01", 1);
insert into tb_produtos(nome, preco, marca, validade, categoria_id) value ("Creme Dental", 7.90, "Colgate", "2022-04-01", 4);

select * from tb_categoria;
select * from tb_produtos;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais. --
select * from tb_produtos where preco > 50.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.--
select * from tb_produtos where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B. --
select * from tb_produtos where nome like "%B%";

-- Faça um um select com Inner join entre tabela categoria e produto. --

select tb_produtos.nome, tb_produtos.marca, tb_produtos.preco, tb_categoria.tipo
from tb_produtos inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id;


/* Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos). */

select tb_produtos.nome, tb_produtos.marca, tb_produtos.preco, tb_categoria.tipo
from tb_produtos inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id where tb_categoria.tipo = "Cosmeticos";