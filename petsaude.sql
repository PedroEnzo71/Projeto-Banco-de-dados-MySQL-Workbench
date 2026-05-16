CREATE DATABASE PetSaude
    CHARSET = utf8
    COLLATE = utf8_general_ci;

USE PetSaude;

CREATE TABLE pet (
    codigoPet           INT NOT NULL,
    nomePet             VARCHAR(15),
    racaPet             VARCHAR(15),
    dataNascimentoPet   DATE,
    sexoPet             CHAR(1),
    anotacoesCuidado    TEXT,

    PRIMARY KEY (codigoPet)
);

CREATE TABLE tutor (
    codigoTutor     INT NOT NULL,
    nomeTutor       VARCHAR(50),
    telefoneTutor   VARCHAR(15),
    emailTutor      VARCHAR(50),
    codigoPet       INT,

    PRIMARY KEY (codigoTutor),
    FOREIGN KEY (codigoPet) REFERENCES pet(codigoPet)
);

INSERT INTO pet (codigoPet, nomePet, racaPet, dataNascimentoPet, sexoPet, anotacoesCuidado)
    VALUES  (1, 'Lorena', 'Gato',     '2022-09-10', 'F', 'Vacinacao V8'),
            (2, 'Stiff',  'Coelho',   '2024-12-03', 'M', 'Higienização e Limpeza'),
            (3, 'Duda',   'Cachorro', '2019-03-18', 'F', 'Vacinacao V3'),
            (4, 'Bento',  'Cachorro', '2017-07-27', 'M', 'Ferimento na Pata Direita');
