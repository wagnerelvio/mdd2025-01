-- 1. Selecionar todos os dados da tabela
SELECT * FROM Informacoes;

-- 2. Selecionar apenas nomes e cursos
SELECT NomeCompleto, Curso FROM Informacoes;

-- 3. Selecionar alunos do curso de 'Engenharia Civil'
SELECT * FROM Informacoes WHERE Curso = 'Engenharia Civil';

-- 4. Selecionar alunos com idade maior que 10
SELECT * FROM Informacoes WHERE Idade > 10;

-- 5. Selecionar alunos de um curso e disciplina específicos
SELECT * FROM Informacoes 
WHERE Curso = 'Sistema da Informação' AND Disciplina = 'Banco de Dados';

-- 6. Listar os 5 alunos mais jovens
SELECT * FROM Informacoes ORDER BY Idade ASC LIMIT 5;

-- 7. Listar cursos distintos cadastrados
SELECT DISTINCT Curso FROM Informacoes;

-- 8. Contar quantos alunos há no total
SELECT COUNT(*) FROM Informacoes;

-- 9. Contar quantos alunos existem por curso
SELECT Curso, COUNT(*) AS TotalAlunos FROM Informacoes GROUP BY Curso;

-- 10. Média de idade por disciplina
SELECT Disciplina, AVG(Idade) AS MediaIdade FROM Informacoes GROUP BY Disciplina;

-- 11. Maior idade por curso
SELECT Curso, MAX(Idade) AS MaiorIdade FROM Informacoes GROUP BY Curso;

-- 12. Atualizar o curso de um aluno específico
UPDATE Informacoes 
SET Curso = 'Engenharia de Software' 
WHERE NomeCompleto = 'ANA BEATRIZ TORRES DIAS LEITE';

-- 13. Atualizar a idade dos alunos de Banco de Dados para +1 ano
UPDATE Informacoes 
SET Idade = Idade + 1 
WHERE Disciplina = 'Banco de Dados';

-- 14. Corrigir nome digitado incorretamente
UPDATE Informacoes 
SET NomeCompleto = 'AUGUSTO JOHNY RIBEIRO CAVALCANTE DIAS' 
WHERE NomeCompleto = 'AUGUSTO JOHNYE RIBEIRO CAVALCANTE DIAS';

-- 15. Deletar um aluno específico pelo nome
DELETE FROM Informacoes 
WHERE NomeCompleto = 'VANESSA PEREIRA DOS SANTOS';

-- 16. Deletar todos os alunos de uma disciplina
DELETE FROM Informacoes 
WHERE Disciplina = 'Programação Orientada a Objeto II';

-- 17. Buscar alunos cujo nome começa com 'RA'
SELECT * FROM Informacoes 
WHERE NomeCompleto LIKE 'RA%';

-- 18. Selecionar alunos dos cursos de Computação e Informação
SELECT * FROM Informacoes 
WHERE Curso IN ('Ciência da Computação', 'Sistema da Informação');

-- 19. Selecionar alunos com idade entre 10 e 11
SELECT * FROM Informacoes 
WHERE Idade BETWEEN 10 AND 11;

-- 20. Inserir novo aluno
INSERT INTO Informacoes (Id, NomeCompleto, Curso, Disciplina, Idade) 
VALUES (44, 'JOANA DARC SOUSA LIMA', 'Engenharia de Produção', 'Banco de Dados', 10);
