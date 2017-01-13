:- use_module(library(http/ thread_httpd)).
:- use_module(library(http/ http_dispatch)).
:- use_module(library(http/ http_parameters)).
:- use_module(library(uri)).
:- use_module(library(http/ html_write)).
:- use_module(library(thread_pool)).
:- use_module(library(error)).
:- use_module(library(debug)).
:- use_module(library(http/ http_error)).
:- consult('C:/Users/Asus/Desktop/Lapr5/AlgavPart/REP/Caminho.pl').

%:- thread_pool_create(visita1, 5, []).

%http:location(visita1, root(visita1), []).


server(Port) :-http_server(http_dispatch, [port(Port),timeout(120),global(3000)]).

:- http_handler('/geraVisita', geraVisita, []).
:- http_handler('/menorDur',menorDur,[]).
:- http_handler('/menorDist',menorDist,[]).

%------------------------------------------------Gera Visita-------------------------------------------------------------


geraVisita(Request) :- http_parameters(Request,[coordx(Cx,[float]),coordy(Cy,[float]),velocidade(Vel,[float]),duracao(Dur,[integer])]),
				       format('Content-type: text/plain~n~n'),
					   call(geraVisita(Cx,Cy,_,_,Dur,Vel)).
			

		
				
		





		
			
			












