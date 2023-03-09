CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias( 
id BIGINT AUTO_INCREMENT,
tipo VARCHAR (150),
receita BOOLEAN,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(150) not null,
valor DECIMAl(6,2) not null,
receita VARCHAR(200) not null,
tamanho VARCHAR(100) not null,
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (tipo, receita)
values ("Manipulado","1");

INSERT INTO tb_categorias (tipo, receita)
values ("Generico","0");

INSERT INTO tb_categorias (tipo, receita)
values ("comprimido","1");

INSERT INTO tb_categorias (tipo, receita)
values ("Gotas","0");

INSERT INTO tb_categorias (tipo, receita)
values ("Cápsula","1");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, valor, receita, tamanho, categoria_id)
values ("Vitamina woman","57.00","vitamina para auxilio de mulheres","pequeno","1");

INSERT INTO tb_produtos (nome, valor, receita, tamanho, categoria_id)
values ("Pantoprazol","34.00","tratamento de gastrite","grande","2");

INSERT INTO tb_produtos (nome, valor, receita, tamanho, categoria_id)
values ("Dorflex","21.00","tratamento para dores musculares e dores de cabeça","grande","3");

INSERT INTO tb_produtos (nome, valor, receita, tamanho, categoria_id)
values ("Dipirona","18.00","anti-inflamatório","pequeno","4");

INSERT INTO tb_produtos (nome, valor, receita, tamanho, categoria_id)
values ("Buscopan","19.00","relaxa os espasmos musculares dos órgãos abdominais agindo somente onde ocorrem dores e cólicas - no abdômen","grande","5");

INSERT INTO tb_produtos (nome, valor, receita, tamanho, categoria_id)
values ("Vitamina man","57.00","vitamina para auxilio de homens","pequeno","1");

INSERT INTO tb_produtos (nome, valor, receita, tamanho, categoria_id)
values ("amoxicilina","26.00"," combate infecções causadas por bactérias que podem se manifestar nos pulmões (pneumonia e bronquite)","pequeno","2");

INSERT INTO tb_produtos (nome, valor, receita, tamanho, categoria_id)
values ("anticoncepcional","28.00","reduz as cólicas e a tensão pré-menstrual (TPM), diminui o fluxo menstrual e regula o ciclo de menstruação.","pequeno", "3");

SELECT * FROM tb_produtos WHERE valor > 50; 

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;





