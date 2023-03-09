CREATE DATABASE db_produtoss;

USE db_produtoss;

CREATE TABLE tb_produtoss(
     id bigint auto_increment,
     nome varchar (100) not null,
	 qtd int not null,
	 preco decimal not null,
	 cor varchar (100) not null,
     PRIMARY KEY (id)
 
);

SELECT * FROM tb_produtoss;

INSERT INTO tb_produtoss (nome, qtd, preco, cor)
value ("garrafa", "16", "37", "azul");
INSERT INTO tb_produtoss (nome, qtd, preco, cor)
value ("garrafa", "10", "37.00", "roxo");
INSERT INTO tb_produtoss (nome, qtd, preco, cor)
value ("garrafa", "9", "37.00", "amarelo");
INSERT INTO tb_produtoss (nome, qtd, preco, cor)
value ("garrafa", "5", "37.00", "verde");
INSERT INTO tb_produtoss (nome, qtd, preco, cor)
value ("garrafa", "1", "37.00", "rosa");
INSERT INTO tb_produtoss (nome, qtd, preco, cor)
value ("garrafa", "3", "37.72", "vermelho");
INSERT INTO tb_produtoss (nome, qtd, preco, cor)
value ("garrafa", "11", "37.00", "preto");
INSERT INTO tb_produtoss (nome, qtd, preco, cor)
value ("garrafa", "7", "37.00", "cinza");

UPDATE tb_produtoss SET preco = 501 WHERE id = 8;

SELECT * FROM tb_produtoss WHERE preco > 500;

SELECT * FROM tb_produtoss WHERE preco < 500;

UPDATE tb_produtoss SET preco = 499 WHERE id = 2;