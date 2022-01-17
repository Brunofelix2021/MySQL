
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(50) not null,
ativo boolean not null,
primary key (id)
);

create table tb_curso(
id bigint auto_increment,
nome varchar(50) not null,
preco decimal(6,2) not null,
vagas int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

-- Popule esta tabela Categoria com até 5 dados.--
INSERT INTO tb_categoria(descricao,ativo) value ("Front-End" ,true);
INSERT INTO tb_categoria(descricao,ativo) value ("beck-end" ,true);
INSERT INTO tb_categoria(descricao,ativo) value ("Redes" ,true);
INSERT INTO tb_categoria(descricao,ativo) value ("nuvem" ,true);
INSERT INTO tb_categoria(descricao,ativo) value ("banco de dados" ,true);

-- Popule esta tabela Cursos com até 8 dados.--

INSERT INTO tb_curso( nome,preco,vagas) values ("Java",250.00,45);
INSERT INTO tb_curso( nome,preco,vagas) values ("C#",550.00,5);
INSERT INTO tb_curso( nome,preco,vagas) values ("Docker",200.00,65);
INSERT INTO tb_curso( nome,preco,vagas) values ("HTML",100,40);
INSERT INTO tb_curso( nome,preco,vagas) values ("MySQL",150.45,10);
INSERT INTO tb_curso( nome,preco,vagas) values ("CSS",150.00,100);
INSERT INTO tb_curso( nome,preco,vagas) values ("Linux",1000.00,25);
INSERT INTO tb_curso( nome,preco,vagas) values ("Redes",190.00,5);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.--
select * from tb_curso where preco > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.--

select * from tb_curso where preco between 3 and 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.--

select * from  tb_curso where nome like "J%";

-- Faça um um select com Inner join entre tabela categoria e produto.--
select tb_curso.nome, tb_curso.preco, tb_curso.vagas, tb_categoria.descricao, tb_categoria.ativo from tb_curso inner join
tb_categoria on tb_curso.categoria_id = tb_categoria.id;

/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java).*/

select tb_curso.nome, tb_curso.preco, tb_curso.vagas, tb_categoria.descricao as Categoria
from tb_curso  inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id
where tb_categoria.descricao = "Back-End";
