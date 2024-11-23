-- INNER JOIN
SELECT professores.nome_professor,
	   disciplinas.nome_disciplina
FROM professores
INNER JOIN disciplinas ON disciplinas.professor_id = professores.professor_id;


-- CONTAR DISCIPLINAS POR CURSO
SELECT COUNT(disciplinas.disciplina_id) AS QUANTIDADE,
	   cursos.nome_curso AS CURSO
FROM disciplinas
INNER JOIN cursos ON cursos.curso_id = disciplinas.curso_id
GROUP BY CURSO;


-- DISCIPLINAS QUE TENHAM ALUNOS CADASTRADOS
SELECT alunos.nome,
	   disciplinas.nome_disciplina,
       cursos.nome_curso
FROM alunos
INNER JOIN disciplinas ON disciplinas.curso_id = alunos.curso_id
INNER JOIN cursos ON cursos.curso_id = disciplinas.curso_id;


-- MOSTRA A QUANTIDADE DE DISCIPLINAS POR PROFESSOR E AS DESCREVE
SELECT professores.nome_professor PROFESSOR,
	   COUNT(disciplinas.nome_disciplina) AS TOTAL,
       GROUP_CONCAT(disciplinas.nome_disciplina SEPARATOR ', ') AS DISCIPLINAS
FROM professores
INNER JOIN disciplinas ON disciplinas.professor_id = professores.professor_id
GROUP BY professores.nome_professor;

