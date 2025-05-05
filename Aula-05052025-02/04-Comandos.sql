-- =============================
-- CONSULTAS BÁSICAS (SELECT)
-- =============================

-- 1. Listar todos os alunos
SELECT * FROM aluno;

-- 2. Listar todas as disciplinas
SELECT * FROM disciplina;

-- 3. Listar alunos do curso de Ciência da Computação
SELECT * FROM aluno WHERE curso = 'Ciência da Computação';

-- 4. Contar quantos alunos há por curso
SELECT curso, COUNT(*) AS total FROM aluno GROUP BY curso;

-- 5. Listar todos os alunos com suas disciplinas
SELECT a.nomecompleto, d.nomedisciplina
FROM aluno a
JOIN aluno_disciplina ad ON a.id = ad.idaluno
JOIN disciplina d ON d.id = ad.iddisciplina;

-- 6. Listar alunos que estão na disciplina 'Algoritmos e Programação'
SELECT a.nomecompleto
FROM aluno a
JOIN aluno_disciplina ad ON a.id = ad.idaluno
JOIN disciplina d ON d.id = ad.iddisciplina
WHERE d.nomedisciplina = 'Algoritmos e Programação';

-- 7. Listar disciplinas com número de alunos
SELECT d.nomedisciplina, COUNT(ad.idaluno) AS total_alunos
FROM disciplina d
LEFT JOIN aluno_disciplina ad ON d.id = ad.iddisciplina
GROUP BY d.id, d.nomedisciplina;

-- 8. Buscar aluno pelo nome (parte do nome)
SELECT * FROM aluno WHERE nomecompleto ILIKE '%lucas%';

-- =============================
-- INSERÇÕES (INSERT)
-- =============================

-- 9. Adicionar nova disciplina
INSERT INTO disciplina (nomedisciplina) VALUES ('Inteligência Artificial');

-- 10. Adicionar novo aluno
INSERT INTO aluno (nomecompleto, curso) VALUES ('MARIA JOANA DOS SANTOS', 'Engenharia Civil');

-- 11. Relacionar aluno ID 1 com disciplina ID 5
INSERT INTO aluno_disciplina (idaluno, iddisciplina) VALUES (1, 5);

-- =============================
-- ATUALIZAÇÕES (UPDATE)
-- =============================

-- 12. Atualizar o curso de um aluno
UPDATE aluno SET curso = 'Engenharia de Software' WHERE id = 1;

-- 13. Corrigir nome de disciplina
UPDATE disciplina
SET nomedisciplina = 'POO - Programação Orientada a Objetos'
WHERE nomedisciplina = 'Programação Orientada a Objeto';

-- =============================
-- EXCLUSÕES (DELETE)
-- =============================

-- 14. Remover uma relação entre aluno e disciplina
DELETE FROM aluno_disciplina WHERE idaluno = 1 AND iddisciplina = 2;

-- 15. Remover aluno específico
DELETE FROM aluno WHERE nomecompleto = 'MARIA JOANA DOS SANTOS';

-- 16. Remover disciplina sem afetar os alunos (se possível)
DELETE FROM disciplina WHERE nomedisciplina = 'Inteligência Artificial';

-- =============================
-- CONSULTAS COM ORDENAÇÃO/LIMITE
-- =============================

-- 17. Listar os 5 primeiros alunos em ordem alfabética
SELECT * FROM aluno ORDER BY nomecompleto ASC LIMIT 5;

-- 18. Listar as disciplinas que têm mais de 3 alunos
SELECT d.nomedisciplina, COUNT(ad.idaluno) AS total
FROM disciplina d
JOIN aluno_disciplina ad ON d.id = ad.iddisciplina
GROUP BY d.nomedisciplina
HAVING COUNT(ad.idaluno) > 3;

-- 19. Listar alunos com mais de uma disciplina
SELECT a.nomecompleto, COUNT(ad.iddisciplina) AS qtd_disciplinas
FROM aluno a
JOIN aluno_disciplina ad ON a.id = ad.idaluno
GROUP BY a.nomecompleto
HAVING COUNT(ad.iddisciplina) > 1;

-- 20. Ver alunos e número de disciplinas cursadas, ordenado pelo total
SELECT a.nomecompleto, COUNT(ad.iddisciplina) AS total_disciplinas
FROM aluno a
LEFT JOIN aluno_disciplina ad ON a.id = ad.idaluno
GROUP BY a.nomecompleto
ORDER BY total_disciplinas DESC;
