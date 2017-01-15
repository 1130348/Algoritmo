:- ensure_loaded('Caminho.pl').

test(noL):-noL(1,X,_,_),X=:=41.1678.
test(poi):-poi(1,_,X,_,_,_),X=:=1.

test(distancia):- distancia(41.1541,-8.6424,41.1472,-8.6172,X),
				   X =:= 0.0006826500000000176,
				   write(X).

test(estimativa):-estimativa(2,4,Est),Est=:=0.00034425000000003886,write(Est).

test(quick_sort):-quick_sort([(1,2),(2,9),(8,4)],X),
					X=[(1,2),(8,4),(2,9)],write(X).

test(quick_sort1):-quick_sort([(1,2),(3,2),(8,2)],X),
					X=[(1,2),(3,2),(8,2)],write(X).
					
test(calc_Estimativa):-calcEstimativa(1,[3,4,7],X),
						X=[ (7, 0.0005565799999999768), 
						(4, 0.005599719999999971), 
						(3, 0.005103610000000047)],write(X).
						
test(calc_Estimativa1):-calcEstimativa(99,[2,1,8,2,3],X).

test(rect):-rect([(1,2),(2,9),(8,4)],X),
			X=[8,2,1].

test(rect1):-rect([(1,_),(2,9),(3,4)],X),X=[2,3,1].


test(sortlist):-sortList(1,[3,8,5,4],X),X=[3, 5, 4, 8].