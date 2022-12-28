CREATE DATABASE lojine;
USE lojine;
CREATE TABLE produto (id INT AUTO_INCREMENT, nome VARCHAR (50) NOT NULL, descricao VARCHAR (250), PRIMARY KEY (id));
CREATE TABLE categoria (id INT auto_increment, nome VARCHAR (50) NOT NULL, PRIMARY KEY(id));
INSERT INTO categoria (nome) VALUES ('doces'), ('salgados');
ALTER TABLE produto ADD COLUMN categoria_id INT;
ALTER TABLE produto ADD FOREIGN KEY (categoria_id) REFERENCES categoria (id);
