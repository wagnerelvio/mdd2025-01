CREATE TABLE pessoas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Idade INT CHECK (Idade >= 0),
    Cidade VARCHAR(100),
    Estado VARCHAR(50),
    Pais VARCHAR(50) DEFAULT 'Brasil'
);
