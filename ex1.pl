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


% estudantes(idEstudante, nome, idUCInscrita)
estudantes(8200118, "Maria Dias", 2).
estudantes(8200119, "Rui Dias", 1).
estudantes(8200120, "Manuel Gomes", 2).


% uc(idUC, nome, ano, idCurso, idDocente)
uc(1, "laboratório de programação", 1, 2, 2).
uc(2, "inteligencia artificial", 3, 2, 1).



%   1.2.    Realize queries à sua base de conhecimento, de forma a responder de forma positiva/negativa às seguintes questões:

%           a) A ESTG pertence ao Politécnico do Porto?
%               escolas(_, estg, ipp).

%           b) LEI é um dos cursos lecionados na ESTG?
%               cursos(_, _, lei, 1), escolas(1, _, _).

%           c) Inteligência Artificial é uma unidade curricular do curso de LEI?
% 				uc(_, "inteligencia artificial", _, 2, _), cursos(2, _, _, _).

%           d) Machine Learning é uma unidade curricular do curso de LEI?
% 				uc(_, "Machine Learning", _, 2, _), cursos(2, _, _, _).

%           e) Laboratório de Programação faz parte do plano de estudos do 3º ano do curso de LEI?
% 				uc(_, "laboratório de programação", 3, _, _).
