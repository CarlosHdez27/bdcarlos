# **CLUB NAUTICO**

* Se quiere diseñar una base de datos relacional para gestionar los datos de los socios de un club náutico.
De cada socio se guardan los datos personales y los datos del barco o barcos que posee: número de
matrícula, nombre, número del amarre y cuota que paga por el mismo. Además, se quiere mantener
información sobre las salidas realizadas por cada barco, como la fecha y hora de salida, el destino y los datos
personales del patrón, que no tiene porque ser el propietario del barco, ni es necesario que sea socio del
club.

## Justificación

Se ralizara la base de datos, para agilizar el contro en cuanto a los socios del club, para saber con cuantos barcos cuenta cada socio, la cuota que se les cobrara, las salidas y entradas de los barcos. y tambien para tener informacion de los patrones por seguridad de sus barcos.


### DATABASE

```SQL
CREATE DATABASE IF NOT EXISTS clubNautico;
```

### TABLAS

```SQL
CREATE TABLE IF NOT EXISTS  socios(
  id_socio int (14);
  direccion varchar (16);
  nombre  varchar (16);
  num_telefono  int (16);
  fecha_nac varchar (16);
PRIMARY KEY (id_socio)
)Engine = InnodB default charset = latin1;

CREATE TABLE IF NOT EXISTS patron(
  nom_patron varchar (16);
  fecha_nac varchar (16);
  direccion varchar (16)
  num_telefono int (16)
  socio varchar (14)
PRIMARY KEY (patron) REFERENCES socio (id_socio)
) Engine=InnodB default charset = latin1;

CREATE TABLE IF NOT EXISTS  barcos(
  matricula int (14);
  nombre varchar (14);
  cuota float (8);
  no_amarre int (4);
  id_socio int (14);
PRIMARY KEY (barcos) REFERENCES socio(id_socio)
) Engine = InnodB default charset = latin1
```

## DICCIONARIO DE DATOS

* **SOCIOS**

| CAMPO | DOMINIO | TIPO DE DATO |
|:-----:|:--------:|:-----------:|
| id_socio | Numero de membresia del socio | int |
| direccion |  direccion de socios | varchar |
| nombre | nombre y apeliidos del socio |  varchar |
| num_telefono | numero de telefono de socios | int |
| fecha_nac | fecha de nacimiento de socios | varchar |

* **PATRON**

| CAMPO | DOMINIO | TIPO DE DATO |
|:----: | :-----: | :----------: |
| nom_patron | nombre del dueño del barco | varchar |
| fecha_nac | fecha de nacimiento de cada dueño | varchar |
| direccion | direccion de los dueños | varchar |
| num_telefono | numero de telefono de los dueños | int |
| socio | nombre del socio al que el dueño le presta el barco | varchar |

* **BARCOS**

| CAMPO | DOMINIO | TIPO DE DATO |
| :---: | :-----: | :----------: |
| matricula | placa o matricula del barco | varchar |
| nombre | nombre del barco | varchar |
| cuota | cuota que se pagara por el anclaje del barco | float |
| no_amarre | Numero del lugar donde estara amarrado y anclado el barco dentro del club | int |
| id_socio | Numero de mebresia del socio que estara en cada barco | 

