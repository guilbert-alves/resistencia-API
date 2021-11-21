CREATE TYPE GENERO AS ENUM ('MASCULINO', 'FEMININO', 'INDEFINIDO');

CREATE TABLE IF NOT EXISTS REBELDE (
    ID UUID PRIMARY KEY NOT NULL,
    NOME VARCHAR(100) NOT NULL,
    IDADE NUMERIC (4) NOT NULL,
    GENERO GENERO NOT NULL
);

CREATE TABLE IF NOT EXISTS LOCALIZACAO(
    ID UUID PRIMARY KEY NOT NULL,
    REBELDE_ID UUID NOT NULL,
    NOME VARCHAR(100) NOT NULL,
    LATITUDE NUMERIC(16) NOT NULL,
    LONGETUDE NUMERIC(16) NOT NULL,
    FOREIGN KEY (REBELDE_ID) REFERENCES REBELDE (ID)
);

CREATE TABLE IF NOT EXISTS INVENTARIO(
    ID UUID PRIMARY KEY NOT NULL,
    REBELDE_ID UUID NOT NULL,
    ARMA NUMERIC(16),
    MUNICAO NUMERIC(16),
    AGUA NUMERIC(16),
    COMIDA NUMERIC (16),
    FOREIGN KEY (REBELDE_ID) REFERENCES REBELDE (ID)
);

