create database db_blog_pessoal;
use db_blog_pessoal;

create table tb_postagens(
id bigint auto_increment,
titulo varchar(100) not null,
texto varchar(1000) not null,
dataP date,
usuario_id bigint,
temas_id bigint,
primary key (id),
foreign key (usuario_id) references tb_usuario (id),
foreign key (temas_id) references tb_temas (id)
);

create table tb_usuario(
id bigint auto_increment,
nome varchar(255) not null,
usuario varchar(255) not null,
senha varchar(255) not null,
foto varchar(255),
primary key (id)

);

create table tb_temas(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);