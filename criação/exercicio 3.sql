CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
ra int auto_increment,
nome varchar (100) not null,
professor varchar (50) not null,
turma int not null,
nota decimal(6,2) not null,
PRIMARY KEY (ra)

);


SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, professor, turma, nota)
value ("leonardo", "giulia", "5", "9.0");
INSERT INTO tb_estudantes (nome, professor, turma, nota)
value ("mariana", "josé", "6", "5.0");
INSERT INTO tb_estudantes (nome, professor, turma, nota)
value ("olivia", "josé", "6", "8.0");	
INSERT INTO tb_estudantes (nome, professor, turma, nota)
value ("matheus", "giulia", "5", "6.0");
INSERT INTO tb_estudantes (nome, professor, turma, nota)
value ("jainna", "eliza", "1", "10");
INSERT INTO tb_estudantes (nome, professor, turma, nota)
value ("gustavo", "giulia", "5", "4.0");
INSERT INTO tb_estudantes (nome, professor, turma, nota)
value ("fernando", "eliza", "1", "6.0");
INSERT INTO tb_estudantes (nome, professor, turma, nota)
value ("sofia", "josé", "6", "5.0");

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 8.0 WHERE ra = 4;