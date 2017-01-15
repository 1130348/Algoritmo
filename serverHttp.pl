:- use_module(library(http/ thread_httpd)).
:- use_module(library(http/ http_dispatch)).
:- use_module(library(http/ http_parameters)).
:- use_module(library(uri)).
:- use_module(library(http/ html_write)).
:- use_module(library(thread_pool)).
:- use_module(library(error)).
:- use_module(library(debug)).
:- use_module(library(http/ http_error)).
:- use_module(library(http/ json)).
:- use_module(library(http/ json_convert)).
:- use_module(library(http/ http_json)).
:- use_module(library(http/ http_unix_daemon)).
:- initialization http_daemon.
:- ensure_loaded('Caminho.pl').

%:- thread_pool_create(visita, 5, []).

%http:location(visita1, root(visita), []).

server(Port) :-http_server(http_dispatch, [port(Port),workers(10),timeout(infinite)]).

:- http_handler('/getVisita', getVisita, []).
:- http_handler('/menorDur',menorDur,[]).
:- http_handler('/menorDist',menorDist,[]).


%-----------------------------------------------------Gera Visita-------------------------------------------------------------

:- json_object percurso(lstno:list,dur:float).
:- json_object percursoPoi(lstpoi:list,listno:list,custo:float).


getVisita(Request) :- http_parameters(Request,[coordx(Cx,[float]),coordy(Cy,[float]),velocidade(Vel,[float]),duracao(Dur,[integer])]),
				      call(geraVisita(Cx,Cy,Solucao,Custo,Dur,Vel)),
					  reply(Solucao,Custo).

%--------------------------------------------------Percurso MenorDuracao----------------------------------------------------------					  

menorDur(Request):- http_parameters(Request,[coordx(Cx,[float]),coordy(Cy,[float]),lstpoi(Lstpoi,[integer]),velocidade(Vel,[float]),duracao(Dur,[float])]),
				    test(Lstpoi,LstInt),
					call(menorDurVisita(Cx,Cy,LstInt,Solucao,Custo,Vel,Dur)),
				    reply2(LstInt,Solucao,Custo).
					
					  
%------------------------------------------------Percurso Menor Distancia------------------------------------------------------------------					  
menorDist(Request):-http_parameters(Request,[coordx(Cx,[float]),coordy(Cy,[float]),lstpoi(Lstpoi,[integer])]),
					test(Lstpoi,LstInt),
					call(menorDistVisita(Cx,Cy,LstInt,Solucao,Custo)),
					reply2(LstInt,Solucao,Custo).



reply(List,Custo):-prolog_to_json(percurso(List,Custo),Json),reply_json(Json).			

reply2(ListPoi,ListInt,Custo):-prolog_to_json(percursoPoi(ListPoi,ListInt,Custo),Json),reply_json(Json).
		
test(V,LD) :-number_chars(V, LC),maplist(number_chars_, LD, LC).
number_chars_(N, C) :-number_chars(N, [C]).

		
			












