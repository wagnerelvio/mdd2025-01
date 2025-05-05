-- ================================
-- ASSOCIAR TODOS OS ALUNOS A TODAS AS DISCIPLINAS
-- ================================
-- Isso associa todos os alunos (1 a 10) com todas as disciplinas (1 a 4)
DO $$
DECLARE
    aluno_id INTEGER;
    disciplina_id INTEGER;
BEGIN
    FOR aluno_id IN 1..43 LOOP
        FOR disciplina_id IN 1..4 LOOP
            INSERT INTO aluno_disciplina (idaluno, iddisciplina)
            VALUES (aluno_id, disciplina_id);
        END LOOP;
    END LOOP;
END $$;
