


%--------------------------------------------BASE DE CONHECIMENTO-----------------------------------------------------


%categoria(id,nome).

categoria(1,'Desporto').
categoria(2,'Ar livre').
categoria(3,'Museus').
categoria(4,'História').
categoria(5,'Música').
categoria(6,'Teatro').


%noL(id,gps_lat,gps_long,descricao).

:- dynamic noL/4.

noL(1,41.1678,-8.6822,'Praça Gonçalves Zarco 1').
noL(2,41.1623,-8.6555,'Avenida da Boavista 1').
noL(3,41.1601,-8.6599,'Avenida Marechal Gomes da Costa').
noL(4,41.1551,-8.6726,'Praça Império').
noL(5,41.1519,-8.6779,'R.Cel.Raúl Peres').
noL(6,41.1483,-8.6535,'Largo António Calem').
noL(7,41.1511,-8.6565,'R.Dom Pedro de Meneses').
noL(8,41.1541,-8.6424,'Rua do Campo Alegre 1216').
noL(9,41.1598,-8.6406,'Avenida da Boavista 2').
noL(10,41.1579,-8.6299,'Praça de Mouzinho de Albuquerque').
noL(11,41.1526,-8.6322,'Rua do Campo Alegre 312').
noL(12,41.1525,-8.6261,'Rua de Júlio Dinis 386').
noL(13,41.1473,-8.6206,'Rua do Rosário').
noL(14,41.1472,-8.6172,'Largo do Prof.Abel Salazar').
noL(15,41.1464,-8.6143,'Rua das Carmelitas 100').
noL(16,41.1447,-8.6268,'Rua de Monchique 110').
noL(17,41.1407,-8.6155,'Rua Infante D.Henrique 109').
noL(18,41.1429,-8.6117,'Terreiro da Sé').
noL(19,41.1454,-8.6108,'Praça Almeida Garret').
noL(20,41.1468,-8.6114,'Praça da Liberdade').
noL(21,41.1472,-8.6079,'R.de Passos Manuel 40').
noL(22,41.1512,-8.6043,'Rua da Alegria 299').
noL(23,41.1594,-8.6011,'Rua da Alegria 889').
noL(24,41.1613,-8.6002,'Rua da Constituição 204').
noL(25,41.1535,-8.6099,'Rua de Camões 234').
noL(26,41.1552,-8.6133,'Rua da Lapa').
noL(27,41.1627,-8.6112,'Rua da Constituicao 1084').
noL(28,41.1605,-8.5936,'R.Carlos Malheiro Dias 16').
noL(29,41.1641,-8.5894,'Av.de Fernão de Magalhães 1700').
noL(30,41.1622,-8.5853,'Via Futebol Clube do Porto 26').
noL(31,41.1459,-8.6142,'R.de Sao Filipe de Nery').
noL(32,41.1476,-8.6096,'R.do Dr.Magalhaes Lemos 83').
noL(33,41.1416,-8.6145,'Rua da Bolsa 16').
noL(34,41.1482,-8.6364,'Rua do Ouro').
noL(35,41.1686,-8.6899,'Praça de Gonçalves Zarco 2').
noL(36,41.1576,-8.5937,'Av.de Fernão de Magalhães 910').
noL(37,41.1491,-8.5988,'Campo 24 de Agosto 31').



%liga(noInit,noFinal,distancia)
:- dynamic liga/3.

liga(1,35,0.18).
liga(1,2,2.75).
liga(1,5,1.96).
liga(2,3,0.44).
liga(2,9,1.29).
liga(3,4,1.15).
liga(4,5,0.50).
liga(4,7,1.36).
liga(5,6,2.07).
liga(6,7,0.35).
liga(6,34,1.62).
liga(7,8,1.23).
liga(8,9,0.63).
liga(8,11,0.85).
liga(9,10,0.87).
liga(10,11,0.52).
liga(10,12,0.53).
liga(10,26,1.24).
liga(11,12,0.50).
liga(12,13,0.77).
liga(13,14,0.23).
liga(13,16,0.50).
liga(14,15,0.22).
liga(15,32,0.37).
liga(15,31,0.07).
liga(16,17,1.06).
liga(16,34,0.79).
liga(17,33,0.09).
liga(18,20,0.33).
liga(18,19,0.28).
liga(18,33,0.31).
liga(19,20,0.10).
liga(19,21,1.09).
liga(20,31,0.26).
liga(21,32,0.48).
liga(21,37,0.59).
liga(21,22,1).
liga(22,23,2).
liga(23,24,0.25).
liga(23,28,0.66).
liga(24,27,0.60).
liga(24,28,0.63).
liga(25,26,0.25).
liga(25,32,0.79).
liga(26,27,0.72).
liga(28,29,0.78).
liga(28,36,0.40).
liga(30,36,0.93).
liga(36,37,1).

%poi(id,descricao,categoria,idLocal,DurVisita,idHorario).

poi(1,'Estádio do Dragão',1,30,45,1). 
poi(2,'Casa da Música',5,10,35,1).
poi(3,'Torre dos Clérigos',4,31,15,1).
poi(4,'Estação Ferroviária de Porto São Bento',4,19,30,1).
poi(5,'Sé do Porto',4,18,25,1).
poi(6,'Palácio da Bolsa',3,17,33,1).
poi(7,'Museu Serralves',3,3,50,1).
poi(8,'Forte de S.Franscisco do Queijo',2,35,15,1).
poi(9,'Igreja de S.Franscisco',4,33,20,1).
poi(10,'Coliseu do Porto',6,21,19,1).
poi(11,'Palácio de Cristal',4,12,29,1).
poi(12,'Casa do Infante',3,17,15,1).
poi(13,'Alfandega do Porto',4,16,10,1).
poi(14,'Teatro Rivoli',6,32,26,1).
poi(15,'Rotunda da Boavista',2,10,16,1).
poi(16,'Marques',2,27,30,1).
poi(17,'Jardim Botanico',2,11,60,1).
poi(18,'Sealife Matosinhos',3,1,120,1).
poi(19,'Livralia Lello',4,15,40,1).



%horario(idHorario,horaAbertura,horaFecho)
horario(1,540,1200).


%----------------------------Ordenação de Lista de PontosPassagem------------------------------------


sortList(Orig,ListPts,LstFinal):-calcEstimativa(Orig,ListPts,LstFinal4),
								 quick_sort(LstFinal4,LstFinal5),
								 rect(LstFinal5,LstFinal6),reverse(LstFinal6,LstFinal).


rect([],[]).
rect([(X,_)|LstFinal5],LstFinal):-rect(LstFinal5,LstFinal1),
								  add(X,LstFinal1,LstFinal),!.

calcEstimativa(_,[],[]).
calcEstimativa(Orig,[P|ListPts],LstFinal):-poi(P,_,_,Dest,_,_),(liga(Orig,Dest,Valor);estimativa(Orig,Dest,Valor)),calcEstimativa(Orig,ListPts,LstFinal1),!,
											add((P,Valor),LstFinal1,LstFinal),!.

quick_sort(List,Sorted):-q_sort(List,[],Sorted).
q_sort([],Acc,Acc).
q_sort([(Y,H)|T],Acc,Sorted):-pivoting(H,T,L1,L2),q_sort(L1,Acc,Sorted1),q_sort(L2,[(Y,H)|Sorted1],Sorted),!.


pivoting(_,[],[],[]).
pivoting(H,[(Y,X)|T],[(Y,X)|L],G):- X>=H,pivoting(H,T,L,G).
pivoting(H,[(Y,X)|T],L,[(Y,X)|G]):- X<H,pivoting(H,T,L,G).

%-------------------------------------------------Menor Quilometragem da Visita-----------------------------------------

%distancia(km)
%tempo(minutos)

menorDistVisita(Cx,Cy,LstPoi,Solucao,Custo):- IdOrigem is 0,
											  assertz(noL(IdOrigem,Cx,Cy,'Origem')),
											  sortList(Origem,LstPoi,NewList),
											  ligaP(NewList,IdOrigem),
											  aStar(Origem,Solucao,Custo,NewList),
											  write('Caminho com menor Quilometragem:'),
											  imprimeSolucao(Solucao),nl,
											  retract(liga(IdOrigem,_,_)),
											  retract(noL(IdOrigem,Cx,Cy,'Origem')),!.

aStar(_,[],0,[]).
aStar(Origem,Solucao,Custo,[IdPoi|LstPoi]):-  poi(IdPoi,_,_,Dest,_,_),
											  estimativa(Origem,Dest,Estimativa),
											  aStar2(Dest,[(Estimativa,0,[Origem])],Solucao1,Custo1),!,
											  aStar(Dest,Solucao2,Custo2,LstPoi),
											  Custo is Custo1+Custo2,
											  checkRepetedElements(Solucao1,Solucao2,Solucao3),
											  append(Solucao3,Solucao2,Solucao),!.

%-----------------------------------------------------Menor Duracao da Visita-------------------------------------------------

%distancia(km)
%tempo(minutos)
%Restricao de Velocidade e tempo

menorDurVisita(Cx,Cy,LstPoi,Solucao,Custo,Velocidade,DurVisita):-IdOrigem is 0,
															     assertz(noL(IdOrigem,Cx,Cy,'Origem')),
																 sortList(IdOrigem,LstPoi,NewList),
																 ligaP(NewList,IdOrigem),
																 aStar3(IdOrigem,Solucao,Custo,0,NewList,Velocidade,DurVisita),nl,
																 imprimeSolucao(Solucao),
																 retract(liga(IdOrigem,_,_)),
																 retract(noL(IdOrigem,Cx,Cy,'Origem')),!.


																  
aStar3(_,[],0,CustoAux,_,_,DurVisita):-(CustoAux>=DurVisita-0.5,CustoAux=<DurVisita+0.5),!.

aStar3(Origem,Solucao,Custo,CustoAux,[IdPoi|LstPois],Velocidade,DurVisita):-
														poi(IdPoi,X,_,Dest,Dur,_),
														write(-----),write(X),write(---),nl,
														estimativaDur(Origem,Dest,Estimativa,Velocidade),
														aStarMnorDur(Dest,[(Estimativa,0,[Origem])],Solucao1,Custo1,Velocidade),!,
														Custo5 is CustoAux+(Custo1)+(Dur/60),
														aStar3(Dest,Solucao2,Custo2,Custo5,LstPois,Velocidade,DurVisita),
														Custo is (Custo1+(Custo2)+(Dur/60)),
														checkRepetedElements(Solucao1,Solucao2,Solucao3),
														append(Solucao3,Solucao2,Solucao),!.
aStar3(_,[],0,_,[],_,_):-write('finish').


aStarMnorDur(Destino,[(_,Custo,[Destino|T])|_],Solucao,Custo,_):-
											       reverse([Destino|T],Solucao).
					
aStarMnorDur(Destino,[(_,Custo,[H|T])|Resto],Solucao,CustoSol,Velocidade):-
																findall((CEC,C,[X,H|T]),
																(Destino\==H,
																((liga(H,X,CX);liga(X,H,CX))),
																\+ member(X,[H|T]),
																C is (CX/ Velocidade)+Custo,
																estimativaDur(X,Destino,Est,Velocidade),
																CEC is Est + C),Novos),
																append(Novos,Resto,Todos),
																sort(Todos,LS),
																aStarMnorDur(Destino,LS,Solucao,CustoSol,Velocidade).


%---------------------------------------------------------GeraVisita------------------------------------------------------------------------			

geraVisita(Cx,Cy,Solucao,Custo,Duracao,Velocidade):- findall(X,poi(X,_,_,_,_,_),List),
													 menorDurVisita(Cx,Cy,List,Solucao,Custo,Velocidade,Duracao),nl,nl,!.
									  
													  
								
%-----------------------------------------------------Predicados Auxiliares--------------------------------------------------
checkRepetedElements(Lst1,[],Lst1).
checkRepetedElements(Lst1,[X|_],Lst3):-((last(Lst1,Y),X=Y,remove_last(Lst1,Lst3));(append(Lst1,[],Lst3))),!.

remove_last([_], []).
remove_last([X|Xs], [X|RemoveLast]) :-remove_last(Xs, RemoveLast),!.

%Cria a ligacao entre a posicao origem do utilizador e o primeiro poi da visita.

ligaP([P|_],IdOrigem):-estimativa(IdOrigem,P,Valor),assertz(liga(IdOrigem,P,Valor)).


getListLocals([],[]).
getListLocals([P|LstPoi],NewList):-poi(P,_,_,Id,_,_),getListLocals(LstPoi,NewList1),add(Id,NewList1,NewList),!.

add(X,[],[X]).
add(X,[Y|Tail],[Y|Tail1]):-add(X,Tail,Tail1).

imprimeSolucao([]).													  
imprimeSolucao([X|Solucao]):-noL(X,_,_,Y),write(Y),write(','),nl,nl,imprimeSolucao(Solucao),!.	


aStar2(Destino,[(_,Custo,[Destino|T])|_],Solucao,Custo):-
					reverse([Destino|T],Solucao),!.

aStar2(Destino,[(_,Custo,[H|T])|Resto],Solucao,CustoSol):-
			findall((CEC,C,[X,H|T]),(Destino\==H,(liga(H,X,CX);liga(X,H,CX)),
			\+ member(X,[H|T]),C is CX+Custo,
			estimativa(X,Destino,Est),CEC is Est + C),Novos),
			append(Novos,Resto,Todos),
			sort(Todos,LS),
			aStar2(Destino,LS,Solucao,CustoSol).
			
distancia(X1,Y1,X2,Y2,Distancia):-Distancia is (((X1-X2)*(X1-X2)+(Y1-Y2)*(Y1-Y2))).
converte(Distancia,Velocidade,Duracao):-Duracao is (Distancia)/(Velocidade).


estimativa(N1,N2,Valor):-
			noL(N1,X1,Y1,_),
			noL(N2,X2,Y2,_),
			distancia(X1,Y1,X2,Y2,Valor).

estimativaDur(N1,N2,Valor,Velocidade):-!,
			noL(N1,X1,Y1,_),
			noL(N2,X2,Y2,_),
			distancia(X1,Y1,X2,Y2,Valor2),
			converte(Valor2,Velocidade,Valor).
			








