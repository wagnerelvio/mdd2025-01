-- Criar a tabela aluno 
 
CREATE TABLE aluno (
    idaluno INTEGER PRIMARY KEY,
    nomealuno TEXT NOT NULL,
    idcurso INTEGER,
    FOREIGN KEY (idcurso) REFERENCES curso(idcurso)
);
