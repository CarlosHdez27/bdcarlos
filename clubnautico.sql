CREATE DATABASE IF NOT EXISTS clubnaval;

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

# Consultas

 SELECT * FROM socio;
 SELECT * FROM patron;
 SELECT * FROM barcos;

SELECT 
  socios.id_socio, direccion, nombre, num_telefono, fecha_nac AS patron, barcos FROM socios INNER JOIN ciudad ON socios. id_socio = patron.nom_patron

  INSERT INTO socios (id_socio, direccion, nombre, num_telefono, fecha_nac) VALUES (001, 'leon cavallo', 'Juan carlos', 6589514, 27/05/1994);
  INSERT INTO  patron( nom_patron, fecha_nac, direccion, socio) VALUES ('Luis', 02/11/1990, 'la villa', 'Juan carlos');
  INSERT INTO barcos( matricula, nombre, cuota, no_amarre, id_socio) VALUES (02542, 'LA COSTERA', 2658.65, 45, 001);

