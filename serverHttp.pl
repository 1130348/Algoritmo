:- use_module(library(http/ thread_httpd)).
:- use_module(library(http/ http_dispatch)).
:- use_module(library(http/ http_parameters)).
:- use_module(library(uri)).



server(Port) :-						
        http_server(http_dispatch, [port(Port)]).

%-------------------------------------Request para caminho com menor Quilometragem------------------------------------%


:-http_handler(root(menor_Dist), menorDist, []).		


menorDist(Request) :-
			http_parameters(Request,
			[origem(Origem, []),
			lstpoi(LstPoi,[])]),
			G=[menorDistVisita,Origem,LstPoi,X,Y],
			call(G),
			format('Content-type: text/plain~n~n'),
			format('Origem: ~w~n',[Origem]),
			format('Lista de Pontos de Interesse:~w~n',[LstPoi]),
			format('Custo:~w~n',[Y]),
			format('Solucao:~w~n',[X]).
			
			
%------------------------------------Request para caminho com menor Duração---------------------------------------------%








%----------------------------------------------------------------------------------------------------------------------%
menorDistVisita(Origem,LstPoi,Solucao,Custo):-aStar(Origem,Solucao4,Custo,LstPoi),
											 remove_duplicates2(Solucao4,Solucao),
											 write('Caminho com menor Quilometragem:'),
											 imprime(Solucao),nl,!.
											 
aStar(_,[],0,[]).

aStar(Origem,Solucao,Custo,[Destino|LstPoi]):-
			estimativa(Origem,Destino,Estimativa),
			aStar2(Destino,[(Estimativa,0,[Origem])],Solucao1,Custo1),!,
			aStar(Destino,Solucao2,Custo2,LstPoi),
			Custo is Custo1+Custo2,
			append(Solucao1,Solucao2,Solucao),!.
			
estimativa(N1,N2,Valor):-
			rua(N1,X1,Y1,_),
			rua(N2,X2,Y2,_),
			distancia(X1,Y1,X2,Y2,Valor).




%----------------------------------------------------------------------------------------------------------------------%
add(X,[],[X]).
add(X,[Y|Tail],[Y|Tail1]):-add(X,Tail,Tail1).

remove_duplicates([],[]).

remove_duplicates([H | T], List) :-    
     member(H, T),
     remove_duplicates( T, List).

remove_duplicates([H | T], [H|T1]) :- 
      \+member(H, T),
      remove_duplicates( T, T1).

remove_duplicates2([],[]).

remove_duplicates2([H],[H]).

remove_duplicates2([H ,H| T], List) :-remove_duplicates( [H|T], List).

remove_duplicates2([H,Y | T], [H|T1]):- Y \= H,remove_duplicates( [Y|T], T1).

imprime([]).
imprime([X|Solucao]):-write(X),write(,),imprime(Solucao).

converte(Distancia,Velocidade,Duracao):-Duracao is Distancia/ Velocidade.

aStar2(Destino,[(_,Custo,[Destino|T])|_],Solucao,Custo):-
					reverse([Destino|T],Solucao),!.

aStar2(Destino,[(_,Custo,[H|T])|Resto],Solucao,CustoSol):-
			findall((CEC,C,[X,H|T]),
					(	Destino\==H,
						(liga(H,X,CX);liga(X,H,CX)),
						\+ member(X,[H|T]),
						C is CX+Custo,
						estimativa(X,Destino,Est),
						CEC is Est + C),
					Novos),
			append(Novos,Resto,Todos),
			sort(Todos,LS),
			aStar2(Destino,LS,Solucao,CustoSol).
			
distancia(X1,Y1,X2,Y2,Distancia):-
			Distancia is sqrt((X1-X2)*(X1-X2)+(Y1-Y2)*(Y1-Y2)).

quick_sort(List,Sorted):-q_sort(List,[],Sorted).
q_sort([],Acc,Acc).
q_sort([(Y,H,Orig,Dest)|T],Acc,Sorted):-pivoting(H,T,L1,L2),q_sort(L1,Acc,Sorted1),q_sort(L2,[(Y,H,Orig,Dest)|Sorted1],Sorted),!.			

pivoting(_,[],[],[]).
pivoting(H,[(Y,X,Orig,Dest)|T],[(Y,X,Orig,Dest)|L],G):- X>=H,pivoting(H,T,L,G).
pivoting(H,[(Y,X,Orig,Dest)|T],L,[(Y,X,Orig,Dest)|G]):- X<H,pivoting(H,T,L,G).





