CREATE DATABASE registros;
USE registros;

CREATE TABLE esporte(
    nomeEsporte VARCHAR(30) not null  PRIMARY KEY
);


CREATE TABLE pessoas(
	idNumero INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nomePessoa VARCHAR(30),
    idade INT,
    sexo VARCHAR(1),
    endereço VARCHAR(30),
    vegetariano BOOLEAN,
    fk_nomeEsporte VARCHAR(30) NOT NULL,    
    FOREIGN KEY (fk_nomeEsporte) REFERENCES esporte (nomeEsporte)
);

Insert into esporte (nomeEsporte) Values ('Futebol'), ('Basquete'), ('Volei'), ('Atletismo');

Select * from esporte;

Insert into pessoas(idNumero, nomePessoa, idade, sexo, endereço, vegetariano,  fk_nomeEsporte) Values ('1', 'Bruna Rocha', '25', 'f', 'Rua do amor N:60', false, 'Volei'),
('2', 'Viviane da Silva', '18', 'f', 'Rua da esperança N:08', true, 'Futebol'),
('3', 'Joaquim Souza', '58', 'm', 'Rua 11 de Agosto N:45', false, 'Basquete'),
('4', 'Pedro Oliveira', '32', 'm', 'Rua ferdinando N:64', false, 'Basquete');

select * from pessoas;

