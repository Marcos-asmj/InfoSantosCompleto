CREATE DATABASE infosantos;

USE infosantos;

CREATE TABLE jogadores (
    id integer not null auto_increment,
    nome varchar(30),
    pos varchar(30),
    partidas integer,
    gols integer,
    ass integer,
    amarelo integer,
    vermelho integer,
    PRIMARY KEY (id)
);

INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Joao Paulo', 'Goleiro', 56, 0, 0, 9, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('John', 'Goleiro', 2, 0, 0, 0, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Madson', 'Defensor', 39, 5, 4, 5, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Auro', 'Defensor', 14, 0, 0, 4, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Luiz Felipe', 'Defensor', 14, 1, 1, 2, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Felipe Jonatan', 'Defensor', 32, 0, 2, 5, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Lucas Pires', 'Defensor', 39, 0, 5, 8, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Nathan Santos', 'Defensor', 6, 0, 1, 0, 1);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Eduardo Bauermann', 'Defensor', 54, 2, 1, 9, 1);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Maicon', 'Defensor', 26, 0, 3, 3, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Vinicius Balieiro', 'Meia', 13, 0, 1, 3, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Carlos Sanchez', 'Meia', 19, 0, 3, 2, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Luan', 'Meia', 9, 1, 1, 0, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Ed Carlos', 'Meia', 4, 0, 1, 0, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Rodrigo Fernandez', 'Meia', 33, 1, 0, 14, 1);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Vinicius Zanocelo', 'Meia', 49, 5, 0, 15, 1);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Carabajal', 'Meia', 4, 0, 0, 1, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Jhojan', 'Meia', 20, 1, 2, 3, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Lucas Barbosa', 'Meia', 36, 3, 4, 7, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Bruno Oliveira', 'Meia', 22, 0, 1, 2, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Sandry', 'Meia', 34, 0, 2, 3, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Camacho', 'Meia', 40, 1, 1, 13, 1);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Angelo', 'Atacante', 40, 2, 6, 7, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Rwan', 'Atacante', 26, 4, 0, 2, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Lucas Braga', 'Atacante', 55, 5, 2, 2, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Marcos Leonardo', 'Atacante', 51, 19, 4, 11, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Angulo', 'Atacante', 24, 5, 1, 0, 0);
INSERT INTO jogadores (nome, pos, partidas, gols, ass, amarelo, vermelho) VALUES ('Soteldo', 'Atacante', 7, 0, 1, 1, 0);