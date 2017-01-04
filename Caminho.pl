


%--------------------------------------------BASE DE CONHECIMENTO-----------------------------------------------------


%categoria(id,nome).

categoria(1,'Desporto').
categoria(2,'Ar livre').
categoria(3,'Museus').
categoria(4,'História').
categoria(5,'Música').
categoria(6,'Teatro').


%no_(id,gps_lat,gps_long,descricao).

rua(1,41.16177,-8.5857797,'Antas').
rua(2,41.158881,-8.6328847,'Avenida da Boavista').
rua(3,41.1410111,-8.617906,'Rua Infante D.Henrique').
rua(4,41.1469917,-8.6076057,'Rua de Passos Manuel').
rua(5,41.1483403,-8.6278264,'Rua de Dom Manuel II').
rua(6,41.1407457,-8.6167303,'Rua da Alfandega').
rua(7,41.1457899,-8.6164093,'Rua de São Filipe de Nery').
rua(8,41.145607,-8.612715,'Praça de Almeida Garret').
rua(9,41.142826,-8.6133723,'Terreiro da Sé').
rua(10,41.1413772,-8.6178612,'Rua da Bolsa').
rua(11,41.1431567,-8.6236837,'Rua Nova da Alfandega').
rua(12,41.1477497,-8.6117241,'Praça D.João I').
rua(13,41.1579742,-8.6313003,'Praça de Mouzinho Albuquerque').
rua(14,41.1418164,-8.6170775,'Rua de Mouzinho Silveira').
rua(15,41.1537401,-8.6448158,'Rua do Campo Alegre').
rua(16,41.1686451,-8.6897382,'Via do Castelo do Queijo').
rua(17,41.1469055,-8.6169633,'Rua das Carmelitas').
rua(18,41.1597898,-8.6618548,'Avenida Marechal Gomes da Costa').
rua(19,41.1685555,-8.6902649,'Praça de Gonçalves Zarco').


%poi(id,descricao,categoria,idLocal,DurVisita).

poi(1,'Estádio do Dragão',1,1,45).
poi(2,'Casa da Música',5,2,35).
poi(3,'Torre dos Clérigos',4,7,15).
poi(4,'Estação Ferroviária de Porto São Bento',4,8,30).
poi(5,'Sé do Porto',4,9,25).
poi(6,'Palácio da Bolsa',3,10,33).
poi(7,'Museu Serralves',3,18,50).
poi(8,'Forte de S.Franscisco do Queijo',2,19,15).
poi(9,'Igreja de S.Franscisco',4,3,20).
poi(10,'Coliseu do Porto',6,4,19).
poi(11,'Palácio de Cristal',4,5,29).
poi(12,'Casa do Infante',3,6,15).
poi(13,'Alfandega do Porto',4,11,10).
poi(14,'Teatro Rivoli',6,12,26).
poi(15,'Rotunda da Boavista',2,13,10).
poi(16,'Mercado Ferreira Borges',2,14,30).
poi(17,'Jardim Botanico',2,15,60).
poi(18,'Sealife Matosinhos',3,16,120).
poi(19,'Livralia Lello',4,17,40).


%hora(idhora,hora,minuto)
hora(1,8,0).
hora(2,9,0).
hora(3,10,0).
hora(4,10,30).
hora(5,11,0).
hora(6,12,0).
hora(7,14,20).
hora(8,18,0).

%horario(idPoi,idHoraAbertura,idHoraFecho)
horario(1,1,6).
horario(1,7,8).

%....

%liga(poiInicio,poiFim,distancia). distancia(km)

liga(8,18,0.19).
liga(18,7,2.58).
liga(7,2,2.44).
liga(7,17,1.57).
liga(7,15,2.57).
liga(2,1,3.96).
liga(2,15,0.16).
liga(15,19,1.73).
liga(15,13,1.79).
liga(17,13,2.14).
liga(13,9,0.53).
liga(9,6,0.04).
liga(9,5,0.43).
liga(6,16,0.08).
liga(16,5,0.20).
liga(5,3,0.39).
liga(5,4,0.32).
liga(3,19,0.13).
liga(3,14,0.43).
liga(3,10,0.72).
liga(4,10,0.45).
liga(14,1,2.69).
liga(10,1,2.68).
liga(17,15,1.21).
liga(13,3,0.69).

%---------------------------------------------Algoritmos Auxiliares-----------

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

%-----------------------------------------------Menor Quilometragem da Visita-----------------------------------------

%distancia(km)
%tempo(minutos)


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

											 

%----------------------------------------------Menor Duracao da Visita-------------------------------------------------

%distancia(km)
%tempo(minutos)

menorDurVisita(Origem,LstPoi,Solucao,Custo,Velocidade):-aStar3(Origem,Solucao4,Custo2,LstPoi,Velocidade),
														remove_duplicates2(Solucao4,Solucao),
														write('Caminho com menor Duracao:'),
														imprime(Solucao),nl,
														write('Duracao:'),
														Custo is Custo2*60,
														write(Custo),write('minutos'),nl,!.

aStar3(_,[],0,[],_).

aStar3(Origem,Solucao,Custo,[Destino|LstPoi],Velocidade):-
			estimativaDur(Origem,Destino,Estimativa,Velocidade),
			aStarMnorDur(Destino,[(Estimativa,0,[Origem])],Solucao1,Custo1,Velocidade),!,
			aStar3(Destino,Solucao2,Custo2,LstPoi,Velocidade),
			Custo is Custo1+Custo2,
			append(Solucao1,Solucao2,Solucao),!.

estimativaDur(N1,N2,Valor,Velocidade):-
			rua(N1,X1,Y1,_),
			rua(N2,X2,Y2,_),
			distancia(X1,Y1,X2,Y2,Valor2),
			converte(Valor2,Velocidade,Valor3),
			poi(N2,_,_,_,TmpVis),
			Valor is (Valor3+(TmpVis/60)).


aStarMnorDur(Destino,[(_,Custo,[Destino|T])|_],Solucao,Custo,_):-
					reverse([Destino|T],Solucao),!.

aStarMnorDur(Destino,[(_,Custo,[H|T])|Resto],Solucao,CustoSol,Velocidade):-
			findall((CEC,C,[X,H|T]),
					(	Destino\==H,
						(liga(H,X,CX);liga(X,H,CX)),poi(N2,_,_,_,TmpVis),
						\+ member(X,[H|T]),
						C is ((CX/ Velocidade)+(TmpVis/60))+Custo,
						estimativaDur(X,Destino,Est,Velocidade),
						CEC is Est + C),
					Novos),
			append(Novos,Resto,Todos),
			sort(Todos,LS),
			aStarMnorDur(Destino,LS,Solucao,CustoSol,Velocidade).


