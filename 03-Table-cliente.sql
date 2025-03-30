CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT CHECK (idade >= 0),
    produto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) CHECK (preco >= 0),
    dataVenda DATE NOT NULL
);
