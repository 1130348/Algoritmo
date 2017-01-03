


%--------------------------------------------BASE DE CONHECIMENTO-----------------------------------------------------


%categoria(id,nome).

categoria(1,'Desporto').
categoria(2,'Ar livre').
categoria(3,'Museus').
categoria(4,'História').
categoria(5,'Música').
categoria(6,'Teatro').


%local(id,gps_lat,gps_long,descricao).

local(1,41.16177,-8.5857797,'Antas').
local(2,41.158881,-8.6328847,'Avenida da Boavista').
local(3,41.1410111,-8.617906,'Rua Infante D.Henrique').
local(4,41.1469917,-8.6076057,'Rua de Passos Manuel').
local(5,41.1483403,-8.6278264,'Rua de Dom Manuel II').
local(6,41.1407457,-8.6167303,'Rua da Alfandega').
local(7,41.1457899,-8.6164093,'Rua de São Filipe de Nery').
local(8,41.145607,-8.612715,'Praça de Almeida Garret').
local(9,41.142826,-8.6133723,'Terreiro da Sé').
local(10,41.1413772,-8.6178612,'Rua da Bolsa').
local(11,41.1431567,-8.6236837,'Rua Nova da Alfandega').
local(12,41.1477497,-8.6117241,'Praça D.João I').
local(13,41.1579742,-8.6313003,'Praça de Mouzinho Albuquerque').
local(14,41.1418164,-8.6170775,'Rua de Mouzinho Silveira').
local(15,41.1537401,-8.6448158,'Rua do Campo Alegre').
local(16,41.1686451,-8.6897382,'Via do Castelo do Queijo').
local(17,41.1469055,-8.6169633,'Rua das Carmelitas').
local(18,41.1597898,-8.6618548,'Avenida Marechal Gomes da Costa').
local(19,41.1685555,-8.6902649,'Praça de Gonçalves Zarco').


%poi(id,descricao,categoria,idLocal).

poi(1,'Estádio do Dragão',1,1).
poi(2,'Casa da Música',5,2).
poi(3,'Torre dos Clérigos',4,7).
poi(4,'Estação Ferroviária de Porto São Bento',4,8).
poi(5,'Sé do Porto',4,9).
poi(6,'Palácio da Bolsa',3,10).
poi(7,'Museu Serralves',3,18).
poi(8,'Forte de S.Franscisco do Queijo',2,19).
poi(9,'Igreja de S.Franscisco',4,3).
poi(10,'Coliseu do Porto',6,4).
poi(11,'Palácio de Cristal',4,5).
poi(12,'Casa do Infante',3,6).
poi(13,'Alfandega do Porto',4,11).
poi(14,'Teatro Rivoli',6,12).
poi(15,'Rotunda da Boavista',2,13).
poi(16,'Mercado Ferreira Borges',2,14).
poi(17,'Jardim Botanico',2,15).
poi(18,'Sealife Matosinhos',3,16).
poi(19,'Livralia Lello',4,17).


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



%liga(poiInicio,poiFim,distancia). distancia(Km)

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













