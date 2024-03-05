% 1. Considere o universo académico onde se encontra inserido.

% 1.1. Utilize Prolog para escrever factos que representem este universo de dados, e onde estejam 
% representados: politécnico, escolas, cursos, unidades curriculares, docentes, e estudantes.
% (pode encontrar informação sobre a oferta curricular da ESTG em https://www.estg.ipp.pt/cursos)



% escolas(idEscola, escola, politecnico)
escolas(1, estg, ipp).
escolas(2, isep, ipp).


% cursos(idCurso, tipo, siglaCurso, idEscola)
cursos(1, licenciatura, lce, 1).
cursos(2, licenciatura, lei, 1).
cursos(3, licenciatura, lgil, 1).
cursos(4, licenciatura, lsta, 1).
cursos(5, licenciatura, lsirc, 1).
cursos(6, licenciatura, lsig, 1).
cursos(7, licenciatura, ls, 1).
cursos(8, licenciatura, lei, 2).


% docentes(idDocente, nome)
docentes(1, "Davide Carneiro").
docentes(2, "Óscar Oliveira").


% estudantes(id, idEstudante, nome, idUCInscrita)
estudantes(1, 8200118, "Maria Dias", 2).
estudantes(2, 8200119, "Rui Dias", 1).
estudantes(3, 8200120, "Manuel Gomes", 2).
estudantes(4, 8200119, "Rui Dias", 3).


% uc(idUC, nome, ano, idCurso)
uc(1, "laboratório de programação", 1, 2).
uc(2, "inteligencia artificial", 3, 2).
uc(3, "projeto final", 3, 2).


% ucDocentes(id, idUC, idDocente)
ucDocentes(1, 2, 1).
ucDocentes(2, 2, 2).
ucDocentes(3, 1, 2).
ucDocentes(4, 3, 1).


%   1.2.    Realize queries à sua base de conhecimento, de forma a responder de forma positiva/negativa às seguintes questões:
%           a) A ESTG pertence ao Politécnico do Porto?
%               escolas(_, estg, ipp).

%           b) LEI é um dos cursos lecionados na ESTG?
%               cursos(2, _, _, _), escolas(1, _, _).

%           c) Inteligência Artificial é uma unidade curricular do curso de LEI?
% 				uc(2, _, _, 2), cursos(2, _, _, _).

%           d) Machine Learning é uma unidade curricular do curso de LEI?
% 				uc(_, "Machine Learning", _, 2), cursos(2, _, _, _).

%           e) Laboratório de Programação faz parte do plano de estudos do 3º ano do curso de LEI?
% 				uc(_, "laboratório de programação", 3, _).



%	1.3. 	Realize queries à sua base de conhecimento, que lhe permitam obter respostas às seguintes questões:
%			a) Quais são os cursos presentes na oferta curricular da ESTG?
%				cursos(_, _, CURSO, 1), escolas(1, _, _).
%			
%			b) Que unidades curriculares fazem parte do plano de estudos do 3º ano do curso de LEI?
%				uc(_, UC, 3, 2), cursos(2, _, _, _).
%			
%			c) Quem são os docentes que lecionam Inteligência Artificial?
%				docentes(IDDOCENTE, NOMEDOCENTE), ucDocentes(_, 2, IDDOCENTE), uc(2, _, _, _).
%			
%			d) Quais são os alunos inscritos na unidade curricular de Inteligência Artificial? Guarde as possíveis alternativas numa lista. (a abordar futuramente)
%				estudantes(_, _, NOMEESTUDANTE, 2), uc(2, _, _, _).
%			
% 			e) Quais são os alunos inscritos na unidade curricular de Inteligência Artificial ou Projeto Final?
%				estudantes(_, _, NOMEESTUDANTE, 2); estudantes(_, _, NOMEESTUDANTE, 3).