-- ================================
-- DROP DAS TABELAS (caso existam)
-- ================================
DROP TABLE IF EXISTS aluno_disciplina;
DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS disciplina;

-- ================================
-- TABELA DISCIPLINA
-- ================================
CREATE TABLE disciplina (
    id SERIAL PRIMARY KEY,
    nomedisciplina TEXT NOT NULL
);

-- ================================
-- TABELA ALUNO
-- ================================
CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
    nomecompleto TEXT NOT NULL,
    curso TEXT NOT NULL
);

-- ================================
-- TABELA ASSOCIATIVA ALUNO_DISCIPLINA
-- ================================
CREATE TABLE aluno_disciplina (
    idaluno INTEGER NOT NULL,
    iddisciplina INTEGER NOT NULL,
    PRIMARY KEY (idaluno, iddisciplina),
    FOREIGN KEY (idaluno) REFERENCES aluno(id) ON DELETE CASCADE,
    FOREIGN KEY (iddisciplina) REFERENCES disciplina(id) ON DELETE CASCADE
);

-- ================================
-- INSERINDO DISCIPLINAS
-- ================================
INSERT INTO disciplina (nomedisciplina) VALUES
('Modelagem de Dados'),
('Programação Orientada a Objeto'),
('Algoritmos e Programação'),
('Calculo I');
