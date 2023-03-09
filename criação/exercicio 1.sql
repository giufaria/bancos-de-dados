CREATE DATABASE db_RH;

USE db_rh;

CREATE TABLE tb_colaboradores(
      id bigint auto_increment,
	nome varchar(100) not null,
	idade int not null,
	salario decimal not null,
	genero varchar (30),
	qt_filhos int,
	PRIMARY KEY (id)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores (nome, idade, salario, genero, qt_filhos)
value ("Yuri", "24", "5000", "masculino", "0");
INSERT INTO tb_colaboradores ( nome, idade, salario, genero, qt_filhos)
value ("Jainna", "22", "3000", "não binario", "0");
INSERT INTO tb_colaboradores (nome, idade, salario, genero, qt_filhos)
value ("Maria", "23", "1600", "feminino", "1");
INSERT INTO tb_colaboradores (nome, idade, salario, genero, qt_filhos)
value ("Giulia", "19", "3000", "feminino", "0");

DELETE  FROM tb_colaboradores WHERE id <= 4;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_produtos SET salario = 2000 WHERE id = 7;