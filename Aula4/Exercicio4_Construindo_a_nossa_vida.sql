create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Piso",true);
insert into tb_categoria (descricao, ativo) values ("Telhado",true);
insert into tb_categoria (descricao, ativo) values ("Balheiro",true);
insert into tb_categoria (descricao, ativo) values ("Cozinha",true);
insert into tb_categoria (descricao, ativo) values ("Ferramentas",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Alicate", 40.00, 30, 5);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Telha", 4.00, 300, 2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cerâmica", 50.00, 350, 1);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Pia de Porcelona", 140.00, 30, 3);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Balção de Cozinha", 340.00, 30, 4);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Carrinho de mão", 120.00, 20, 5);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Madeira", 30.00, 302, 2);
insert into tb_produtos (nome, preco, qtProduto, categoria_id) values ("Vaso sanitario", 90.00, 90, 3);

select * from tb_produtos;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%c%";

select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.preco, tb_categoria.descricao as Categoria
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id 
where tb_categoria.descricao = "Ferramentas";