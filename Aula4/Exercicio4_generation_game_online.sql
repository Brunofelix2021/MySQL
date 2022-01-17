create database db_generation_game_online;

use db_generation_game_online;

/*Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.*/

create table tb_classe(
id bigint auto_increment,
nivel varchar(255) not null,
ativo boolean not null,
primary key (id)
);


/*Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).*/

create table tb_personagem (
id bigint auto_increment,
nome varchar (255) not null,
elemento varchar (255),
poder_ataque int,
poder_defesa int,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

-- Popule esta tabela classe com até 5 dados.-- 
insert into tb_classe (nivel, ativo) values ("Genin", true);
insert into tb_classe (nivel, ativo) values ("Chunin", true);
insert into tb_classe (nivel, ativo) values ("Jonin", true);
insert into tb_classe (nivel, ativo) values ("Ambu", true);
insert into tb_classe (nivel, ativo) values ("Kage", true);
-- Popule esta tabela personagem com até 8 dados.--
insert into tb_personagem (nome, elemento, poder_ataque, poder_defesa, classe_id) values ("Naruto", "Vento", 5000, 3000, 1);
insert into tb_personagem (nome, elemento, poder_ataque, poder_defesa, classe_id) values ("Sasuke", "Trovão", 4000, 4000, 1);
insert into tb_personagem (nome, elemento, poder_ataque, poder_defesa, classe_id) values ("Sakura", "Terra", 3000, 2000, 2);
insert into tb_personagem (nome, elemento, poder_ataque, poder_defesa, classe_id) values ("Kakashi", "Trovão", 5000, 4000, 3);
insert into tb_personagem (nome, elemento, poder_ataque, poder_defesa, classe_id) values ("Gaara", "Terra", 4000, 5000, 5);
insert into tb_personagem (nome, elemento, poder_ataque, poder_defesa, classe_id) values ("Yamato", "Agua", 3000, 3500, 4);
insert into tb_personagem (nome, elemento, poder_ataque, poder_defesa, classe_id) values ("Shikamaru", "Terra", 2000, 3000, 3);
insert into tb_personagem (nome, elemento, poder_ataque, poder_defesa, classe_id) values ("Neji", "Vento", 3500, 5000, 3);

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.--
select * from tb_personagem where poder_ataque > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.--
select * from tb_personagem where poder_defesa between 1000 and 3000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C.--
select * from tb_personagem where nome like "C%";

-- Faça um um select com Inner join entre tabela classe e personagem.--
select tb_personagem.nome, tb_personagem.elemento, tb_personagem.poder_ataque, tb_classe.nivel 
from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;

/* Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).*/

select tb_personagem.nome, tb_personagem.elemento, tb_personagem.poder_ataque, tb_classe.nivel 
from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id where tb_classe.nivel = "Jonin";

