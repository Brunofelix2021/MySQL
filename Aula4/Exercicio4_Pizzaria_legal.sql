create database db_pizzaria_legal;
use db_pizzaria_legal;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
tamanho varchar(255) not null,
primary key (id)
);

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).*/

create table tb_pizza (
id bigint auto_increment,
nome varchar (255) not null,
descricao varchar (255),
bordas varchar (255),
preco decimal(8,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- Popule esta tabela Categoria com até 5 dados.--
insert into tb_categoria (tipo, tamanho) values ("Salgada","Grande");
insert into tb_categoria (tipo, tamanho) values ("Salgada","Media");
insert into tb_categoria (tipo, tamanho) values ("Salgada","Pequena");
insert into tb_categoria (tipo, tamanho) values ("Doce","Grande");
insert into tb_categoria (tipo, tamanho) values ("Doce","Media");

-- Popule esta tabela pizza com até 8 dados.--

insert into tb_pizza (nome, descricao, bordas, preco, categoria_id) values ("Napolitana", "Queijo e tomate", "Chedar", 45.00, 1);
insert into tb_pizza (nome, descricao, bordas, preco, categoria_id) values ("Portuguesa", "Queijo tomate e manjerição", "Chedar", 55.00, 3);
insert into tb_pizza (nome, descricao, bordas, preco, categoria_id) values ("Frango", "Frango com catupiry", "Queijo", 65.00, 2);
insert into tb_pizza (nome, descricao, bordas, preco, categoria_id) values ("Banana", "Banana e chocolate", "doce de leite", 40.00, 4);
insert into tb_pizza (nome, descricao, bordas, preco, categoria_id) values ("Carne Seca", "Carne seca com queijo", "Catupiry", 60.00, 1);
insert into tb_pizza (nome, descricao, bordas, preco, categoria_id) values ("Morango", "Morando com chocolate", "doce de leite", 38.00, 5);
insert into tb_pizza (nome, descricao, bordas, preco, categoria_id) values ("Quadro Queijos", "Quatro queijos diferentes e tomate", "Chedar", 45.00, 1);


-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.--
select * from tb_pizza where preco > 45.00;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.--
select * from tb_pizza where preco between 29 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.--
select * from tb_pizza where nome like "C%";

-- Faça um um select com Inner join entre tabela categoria e pizza.--

select tb_pizza.nome, tb_pizza.descricao, tb_pizza.preco, tb_categoria.tipo, tb_categoria.tamanho 
from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).
*/
select tb_pizza.nome, tb_pizza.descricao, tb_pizza.preco, tb_categoria.tipo, tb_categoria.tamanho 
from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where tb_categoria.tipo = "Doce";