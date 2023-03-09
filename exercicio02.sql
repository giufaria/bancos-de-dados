CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(45) not null,
tamanho VARCHAR(50) not null,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR (150) not null,
borda boolean,
valor DECIMAL not null,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

 INSERT INTO tb_categorias (tipo, tamanho)
values ("salgada","broto");

INSERT INTO tb_categorias (tipo, tamanho)
values ("salgada","grande");

INSERT INTO tb_categorias (tipo, tamanho)
values ("doce","médio");

INSERT INTO tb_categorias (tipo, tamanho)
values ("doce","broto");

INSERT INTO tb_categorias (tipo, tamanho)
values ("salgada","média");

SELECT * FROM tb_categorias;


ALTER TABLE tb_pizzas ADD nome varchar(150);

INSERT INTO tb_pizzas (nome, sabor, borda, valor,categoria_id)
values ("frango catupiry","frango temperado com catupiry","1","42.00",1);

INSERT INTO tb_pizzas (nome, sabor, borda, valor,categoria_id)
values ("mineirinha","frango temperado, com calabresa, mussarela e bacon","0","53.00",2);

INSERT INTO tb_pizzas (nome, sabor, borda, valor,categoria_id)
values ("cheesecake","geleia de morango, com chocolate e cream cheese","0","37.00",4);

INSERT INTO tb_pizzas (nome, sabor, borda, valor,categoria_id)
values ("confetti","chocolate nobre derretido com cofetti","0","28.00",4);

INSERT INTO tb_pizzas (nome, sabor, borda, valor,categoria_id)
values ("4 queijos","mussarela, catupiry, queijo provolone e queijo cheedar ","1","44.00",2);

INSERT INTO tb_pizzas (nome, sabor, borda, valor,categoria_id)
values ("sushi","salmão com cream cheese, molho tarê e cebolinha picada","0","67.00",1);

INSERT INTO tb_pizzas (nome, sabor, borda, valor,categoria_id)
values ("potuguesa","presunto, queijo, ervilha, ovo, pimentão e palmito","1","53.00",1);

INSERT INTO tb_pizzas (nome, sabor, borda, valor,categoria_id)
values ("brigadeiro","chocolate nobre derretido com granulados","0","37.00",4);


SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND  100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";



DROP TABLE tb_pizzas;

DELETE FROM tb_pizzas;





