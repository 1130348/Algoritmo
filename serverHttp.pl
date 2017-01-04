:- use_module(library(http/ thread_httpd)).
:- use_module(library(http/ http_dispatch)).
:- use_module(library(http/ http_parameters)).
:-['Caminho.pl'].


server(Port) :-						
        http_server(http_dispatch, [port(Port)]).

%-------------------------------------Request para caminho com menor Quilometragem------------------------------------


:-http_handler(root(menor_Dist), menorDist, []).		

menorDist(Request) :-
			http_parameters(Request,
			[origem(Origem, []),
			lstpoi(LstPoi,[])]),
			format('Content-type: text/plain~n~n'),
			format('Origem: ~w~n',[Origem]),
			format('Lista de Pontos de Interesse:~w~n',[LstPoi]).
			

%------------------------------------Request para caminho com menor Duração-----------------------------------------------