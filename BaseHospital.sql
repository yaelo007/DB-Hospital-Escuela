

DROP DATABASE hospital;
CREATE DATABASE hospital;
USE hospital;

CREATE TABLE persona(idPersona INT auto_increment PRIMARY KEY, 
                     cedula  VARCHAR(12),
                     nombre VARCHAR(45), 
                     apellido VARCHAR(45), 
                     fechaNacimiento DATE,
                     telefono VARCHAR (45),
                     direccion VARCHAR (45))engine=innodb;

INSERT INTO persona (idPersona) VALUES(1); 

INSERT INTO persona (cedula) VALUES ("19988442"),("82804102"),("75581205"),("90081487"),("33368739"),("25766781"),
                                    ("30372005"),("63651408"),("68936817"),("25832947"),("62068111"),("98192659"),
                                    ("75796092"),("24902837"),("85735282"),("52885694"),("20204740"),("83502958"),  
                                    ("70854437"),("38021175");

INSERT INTO persona(nombre) VALUES ("Constance"),("Ila"),("Walter"),("Cathleen"),("Ferdinand"),("Bernard"),
                                   ("Vernon"),("Daria"),("Carlos"),("Hakeem"),("Zena"),("Alexis"),("Hunter"),
                                   ("Cullen"),("Vernon"),("Macaulay"),("Jack"),("Alana"),("Hedley"),("Nadine");   
                        
INSERT INTO persona (apellido) VALUES ("Baldwin"),("Rios"),("Dunn"),("Cline"),("Hogan"),("Mack"),("English"),
                                      ("Logan"),("Maxwell"),("Burks"),("Foley"),("Sawyer"),("Crosby"),("Cohen"),
                                      ("Bolton"),("Holland"),("Byers"),("Montgomery"),("Little"),("Whitaker");

INSERT INTO persona (fechaNacimiento) VALUES ('08/04/25'),('01/09/12'),('12/03/18'),('03/12/27'),('03/04/12'),
                                             ('03/03/17'),('01/05/30'),('01/06/16'),('01/08/26'),('08/06/18'),
                                             ('01/07/26'),('08/07/16'),('06/09/09'),('03/08/17'),('07/03/16'),
                                             ('03/05/06'),('08/07/19'),('02/11/17'),('07/11/06'),('08/04/14');

INSERT INTO persona (telefono) VALUES ("515-913-4876"),("281-563-1638"),("687-470-1251"),("612-108-8065"),
                                      ("564-898-5530"),("949-540-2460"),("489-308-0439"),("302-557-9728"),
                                      ("457-791-4420"),("746-719-0232"),("851-828-8158"),("180-479-8195"),
                                      ("699-761-6994"),("328-536-1062"),("931-953-3282"),("459-483-2384"),
                                      ("494-657-2293"),("647-141-9833"),("121-583-1877"),("234-754-3347");

INSERT INTO persona (direccion) VALUES ("6594 Urna Rd."),("889-408 Tincidunt. Ave"),("Ap #807-5213 Sed Avenue"),
                                       ("7318 Tortor. Rd."),("2401 Interdum Road"),("3649 Augue Road"),
                                       ("7607 Pede Road"),("P.O. Box 944, 6275 Imperdiet, Avenue"),("Ap #667-8715 Magna Rd."),
                                       ("P.O. Box 270, 944 Nisl. Road"),("6199 Et Rd."),("2287 Arcu. Road"),
                                       ("P.O. Box 428, 9189 Fermentum Avenue"),("1009 Neque Ave"),("342-2062 Ac, Street"),
                                       ("P.O. Box 913, 9921 Hendrerit Av."),("P.O. Box 836, 705 Nonummy Rd."),
                                       ("659-5174 Nec, Rd."),("P.O. Box 880, 8057 Mauris Ave"),("Ap #426-7939 Justo. Rd.");
                                       

CREATE TABLE historiaClinica(idHistoriaClinica INT auto_increment PRIMARY KEY
                             )engine=innodb;

INSERT INTO historiaClinica(idHistoriaClinica) VALUES((1));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((2));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((4));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((5));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((6));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((7));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((8));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((9));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((10));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((11));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((12));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((13));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((14));
INSERT INTO historiaClinica(idHistoriaClinica) VALUES((15));

INSERT INTO historiaClinica idHistoriaClinica) VALUES(1);



CREATE TABLE tipoTratamiento(idTipoTratamiento INT auto_increment PRIMARY KEY,
                             nombre VARCHAR(45), 
                             descripcion VARCHAR(400))engine=innodb;

INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((1));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((2));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((4));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((5));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((6));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((7));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((8));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((9));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((10));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((11));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((12));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((13));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((14));
INSERT INTO tipoTratamiento(idTipoTratamiento) VALUES((15));


INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos con láser"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamiento de la gonorrea"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamiento de la presbicia"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamiento de la sífilis"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos con células madre"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos de fertilidad"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos con ozono"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos corporales"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos de alopecia"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos del sida"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamiento de la erisipela"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos del cáncer"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos del dolor"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos para la diabetes"));
INSERT INTO tipoTratamiento(nombre) VALUES(("Tratamientos para la artrosis"));




INSERT INTO tipoTratamiento(descripcion) VALUES(("Tratamiento Láser: Son terapias de aplicaciones médicas o veterinarias 
                                                que utilizan láser de bajo nivel o diodos emisores de luz para alterar 
                                                la función celular"));
INSERT INTO tipoTratamiento(descripcion) VALUES(("El tratamiento de la gonorrea: es con antibióticos, se prescriben 
                                                antibióticos se ingieran como indique el médico"));
INSERT INTO tipoTratamiento(descripcion) VALUES(("Fibrilación ocular: Se necesitarán lentes con prescripción médica si
                                                los de venta libre no son adecuados o si se requieren lentes correctivas 
                                                con prescripción para la miopía, la hipermetropía o el astigmatismo"));
INSERT INTO tipoTratamiento(descripcion) VALUES(("El tratamiento de la sífilis: lo constituye una sola inyección de 
                                                penicilina que puede detener el progreso de la enfermedad si es que esta
                                                infección tiene un tiempo de menos de un año."));
INSERT INTO tipoTratamiento(descripcion) VALUES(("Tratamiento celulas madre: Es un tipo de estrategia de intervención que
                                                introduce nuevas células en el tejido dañado con el fin de tratar una 
                                                enfermedad o lesión."));
INSERT INTO tipoTratamiento(descripcion) VALUES(("Tratamientos de fertilidad: Se refiere a los métodos utilizados para 
                                                lograr el embarazo por medios artificiales o parcialmente artificiales."));
INSERT INTO tipoTratamiento(descripcion) VALUES(("El tratamiento de la endolimax nana consiste en diferentes dosis de 
                                                metronidazol que se administran según las necesidades de cada paciente."));
INSERT INTO tipoTratamiento(descripcion) VALUES(("El tratamiento de la fibrilación auricular es necesario cuando un corazón 
                                                no late de manera eficiente"));
INSERT INTO tipoTratamiento(descripcion) VALUES(("Los tratamientos con ozono se aplican con distintas finalidades, terapias
                                                dentales, tratamientos contra el cáncer y el sida."));
INSERT INTO tipoTratamiento(descripcion) VALUES(("Los tratamientos corporales son todas aquellas terapias de relajación y 
                                                belleza que conducen a un bienestar físico"));
INSERT INTO tipoTratamiento(descripcion) VALUES(("Alopecia: El más común es el que trata con parches la pérdida del cabello 
                                                es pequeño tramos"));
INSERT INTO tipoTratamiento(descripcion) VALUES(("En los distintos tratamientos del sida, encontramos varios métodos de 
                                                terapia, entre los más conocidos están la combinación de drogas"));
INSERT INTO tipoTratamiento(descripcion) VALUES(("El tratamiento de la erisipela es principalmente la penicilina,"));
INSERT INTO tipoTratamiento(descripcion) VALUES(("Cancer: tratamientos como la quimioterapia, la radioterapia, la terapia 
                                                de los inhibidores de la angiogénesis, las terapias biológicas, la 
                                                hipertermia, la aplicación de láser"));
INSERT INTO tipoTratamiento(descripcion) VALUES(("Tratamientos de dolor: con una infinidad de medicamentos de venta libre
                                                y otros de venta con receta médica que pueden bien calmar los síntomas"));

CREATE TABLE tratamiento(idTratamiento INT auto_increment PRIMARY KEY,
                         idHistoriaClinica INT,
                         idTipoTratamiento INT,
                         fechaSolicitud DATE,
                         fechaInicio DATE, 
                         fechaFinalizacion DATE,
                         descripcion VARCHAR(45),
                         FOREIGN KEY(idHistoriaClinica)REFERENCES historiaClinica(idHistoriaClinica),
                         FOREIGN KEY(idTipoTratamiento)REFERENCES tipoTratamiento(idTipoTratamiento))engine=innodb;

INSERT INTO tratamiento (fechaSolicitud) VALUES ('08/04/25'),('01/09/12'),('12/03/18'),('03/12/27'),('03/04/12'),
                                                ('03/03/17'),('01/05/30'),('01/06/16'),('01/08/26'),('08/06/18'),
                                                ('01/07/26'),('08/07/16'),('06/09/09'),('03/08/17'),('07/03/16'),
                                                ('03/05/06'),('08/07/19'),('02/11/17'),('07/11/06'),('08/04/14');

INSERT INTO tratamiento (fechaInicio) VALUES ('08/04/25'),('01/09/12'),('12/03/18'),('03/12/27'),('03/04/12'),
                                                ('03/03/17'),('01/05/30'),('01/06/16'),('01/08/26'),('08/06/18'),
                                                ('01/07/26'),('08/07/16'),('06/09/09'),('03/08/17'),('07/03/16'),
                                                ('03/05/06'),('08/07/19'),('02/11/17'),('07/11/06'),('08/04/14');

INSERT INTO tratamiento (fechaFinalizacion) VALUES ('08/04/25'),('01/09/12'),('12/03/18'),('03/12/27'),('03/04/12'),
                                                ('03/03/17'),('01/05/30'),('01/06/16'),('01/08/26'),('08/06/18'),
                                                ('01/07/26'),('08/07/16'),('06/09/09'),('03/08/17'),('07/03/16'),
                                                ('03/05/06'),('08/07/19'),('02/11/17'),('07/11/06'),('08/04/14');

INSERT INTO tratamiento (descripcion) VALUES ('08/04/25'),('01/09/12'),('12/03/18'),('03/12/27'),('03/04/12'),
                                             ('03/03/17'),('01/05/30'),('01/06/16'),('01/08/26'),('08/06/18'),
                                             ('01/07/26'),('08/07/16'),('06/09/09'),('03/08/17'),('07/03/16'),
                                             ('03/05/06'),('08/07/19'),('02/11/17'),('07/11/06'),('08/04/14');

CREATE TABLE tipoExamen(idTipoExamen INT auto_increment PRIMARY KEY,
                        nombre VARCHAR(45), 
                        descripcion VARCHAR(45))engine=innodb;

INSERT INTO tipoExamen(idTipoExamen) VALUES((1));
INSERT INTO tipoExamen(idTipoExamen) VALUES((2));
INSERT INTO tipoExamen(idTipoExamen) VALUES((4));
INSERT INTO tipoExamen(idTipoExamen) VALUES((5));
INSERT INTO tipoExamen(idTipoExamen) VALUES((6));
INSERT INTO tipoExamen(idTipoExamen) VALUES((7));
INSERT INTO tipoExamen(idTipoExamen) VALUES((8));
INSERT INTO tipoExamen(idTipoExamen) VALUES((9));
INSERT INTO tipoExamen(idTipoExamen) VALUES((10));
INSERT INTO tipoExamen(idTipoExamen) VALUES((11));
INSERT INTO tipoExamen(idTipoExamen) VALUES((12));
INSERT INTO tipoExamen(idTipoExamen) VALUES((13));
INSERT INTO tipoExamen(idTipoExamen) VALUES((14));
INSERT INTO tipoExamen(idTipoExamen) VALUES((15));
INSERT INTO tipoExamen(idTipoExamen) VALUES((16));

INSERT INTO tipoExamen(nombre) VALUES(("Sangre"));
INSERT INTO tipoExamen(nombre) VALUES(("Orina"));
INSERT INTO tipoExamen(nombre) VALUES(("Tejido"));
INSERT INTO tipoExamen(nombre) VALUES(("Auditivo"));
INSERT INTO tipoExamen(nombre) VALUES(("Vista"));
INSERT INTO tipoExamen(nombre) VALUES(("Neuronal"));
INSERT INTO tipoExamen(nombre) VALUES(("Psicometrico"));
INSERT INTO tipoExamen(nombre) VALUES(("Quimico"));
INSERT INTO tipoExamen(nombre) VALUES(("Glandular"));
INSERT INTO tipoExamen(nombre) VALUES(("Fisico"));
INSERT INTO tipoExamen(nombre) VALUES(("Heces"));
INSERT INTO tipoExamen(nombre) VALUES(("Fetilidad"));
INSERT INTO tipoExamen(nombre) VALUES(("Patologico"));
INSERT INTO tipoExamen(nombre) VALUES(("Cardiovascular"));
INSERT INTO tipoExamen(nombre) VALUES(("Oseo"));
INSERT INTO tipoExamen(nombre) VALUES(("Muscular"));

INSERT INTO tipoExamen(descripcion) VALUES(("Muestra de Sangre"));
INSERT INTO tipoExamen(descripcion) VALUES(("Muestra de Orina"));
INSERT INTO tipoExamen(descripcion) VALUES(("Muestra de Tejido"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen Auditivo"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen de la Vista"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen a nivel Neuronal"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen Psicometrico"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen de tipo Quimico"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen Glandular"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen Fisico"));
INSERT INTO tipoExamen(descripcion) VALUES(("Muestra de Heces fecales"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen de Fetilidad"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen Patologico"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen Cardiovascular"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen de tipo Oseo"));
INSERT INTO tipoExamen(descripcion) VALUES(("Examen de funciones Musculares"));

CREATE TABLE examen(idExamen INT auto_increment PRIMARY KEY,
                    idHistoriaClinica INT, 
                    idTipoexamen INT, 
                    fechaSolicitud DATE,
                    descripcion VARCHAR(45),
                    FOREIGN KEY(idHistoriaClinica)REFERENCES historiaClinica(idHistoriaClinica),
                    FOREIGN KEY(idTipoexamen)REFERENCES tipoExamen(idTipoexamen))engine=innodb;

INSERT INTO examen(idExamen) VALUES((1));
INSERT INTO examen(idExamen) VALUES((2));
INSERT INTO examen(idExamen) VALUES((4));
INSERT INTO examen(idExamen) VALUES((5));
INSERT INTO examen(idExamen) VALUES((6));
INSERT INTO examen(idExamen) VALUES((7));
INSERT INTO examen(idExamen) VALUES((8));
INSERT INTO examen(idExamen) VALUES((9));
INSERT INTO examen(idExamen) VALUES((10));
INSERT INTO examen(idExamen) VALUES((11));
INSERT INTO examen(idExamen) VALUES((12));
INSERT INTO examen(idExamen) VALUES((13));
INSERT INTO examen(idExamen) VALUES((14));
INSERT INTO examen(idExamen) VALUES((15));
INSERT INTO examen(idExamen) VALUES((16));

INSERT INTO examen (fechaSolicitud) VALUES ('08/04/25'),('01/09/12'),('12/03/18'),('03/12/27'),('03/04/12'),
                                           ('03/03/17'),('01/05/30'),('01/06/16'),('01/08/26'),('08/06/18'),
                                           ('01/07/26'),('08/07/16'),('06/09/09'),('03/08/17'),('07/03/16'),
                                           ('03/05/06'),('08/07/19'),('02/11/17'),('07/11/06'),('08/04/14');

INSERT INTO examen(descripcion) VALUES(("Muestra de Sangre"));
INSERT INTO examen(descripcion) VALUES(("Muestra de Orina"));
INSERT INTO examen(descripcion) VALUES(("Muestra de Tejido"));
INSERT INTO examen(descripcion) VALUES(("Examen Auditivo"));
INSERT INTO examen(descripcion) VALUES(("Examen de la Vista"));
INSERT INTO examen(descripcion) VALUES(("Examen a nivel Neuronal"));
INSERT INTO examen(descripcion) VALUES(("Examen Psicometrico"));
INSERT INTO examen(descripcion) VALUES(("Examen de tipo Quimico"));
INSERT INTO examen(descripcion) VALUES(("Examen Glandular"));
INSERT INTO examen(descripcion) VALUES(("Examen Fisico"));
INSERT INTO examen(descripcion) VALUES(("Muestra de Heces fecales"));
INSERT INTO examen(descripcion) VALUES(("Examen de Fetilidad"));
INSERT INTO examen(descripcion) VALUES(("Examen Patologico"));
INSERT INTO examen(descripcion) VALUES(("Examen Cardiovascular"));
INSERT INTO examen(descripcion) VALUES(("Examen de tipo Oseo"));
INSERT INTO examen(descripcion) VALUES(("Examen de funciones Musculares"));

CREATE TABLE resultado(idResultado INT auto_increment PRIMARY KEY,
                       idExamen INT, 
                       fechaEntrega DATE,
                       documentoAsociado INT,
                       descripcion VARCHAR(45),
                       FOREIGN KEY(idExamen)REFERENCES examen(idExamen))engine=innodb;

CREATE TABLE dieta(idDieta INT auto_increment PRIMARY KEY,
                   idHistoriaClinica INT, 
                   idTipoexamen INT, 
                   fechaInicio DATE,
                   fechaFinalizacion DATE,
                   contenido VARCHAR(45),
                   descripcion VARCHAR(45),
                   FOREIGN KEY(idHistoriaClinica)REFERENCES historiaClinica(idHistoriaClinica),
                   FOREIGN KEY(idTipoexamen)REFERENCES tipoExamen(idTipoexamen))engine=innodb;

CREATE TABLE paciente(idPaciente INT auto_increment PRIMARY KEY,
                      idPersona INT, 
                      idHistoriaClinica INT,
                      FOREIGN KEY(idPersona)REFERENCES persona(idPersona),
                      FOREIGN KEY(idHistoriaClinica)REFERENCES historiaClinica(idHistoriaClinica))engine=innodb;

CREATE TABLE factura(idFactura INT auto_increment PRIMARY KEY,
                     idPaciente INT, 
                     fechaGeneracion DATE,
                     FOREIGN KEY(idPaciente)REFERENCES paciente(idPaciente))engine=innodb;

CREATE TABLE formaDePago(idformaDePago INT auto_increment PRIMARY KEY,
                         nombre VARCHAR(45), 
                         valor DECIMAL(12))engine=innodb; 

CREATE TABLE pago(idPago INT auto_increment PRIMARY KEY,
                  idFactura INT,
                  idformaDePago INT,
                  fechadePago DATE, 
                  observaciones VARCHAR(45),
                  FOREIGN KEY(idFactura)REFERENCES factura(idFactura),
                  FOREIGN KEY(idformaDePago)REFERENCES formaDePago(idformaDePago))engine=innodb;

CREATE TABLE cuenta(idCuenta INT auto_increment PRIMARY KEY,
                    fechaGeneracion DATE, 
                    descripcion VARCHAR(45),
                    valor DECIMAL)engine=innodb;

CREATE TABLE cargo(idCargo INT auto_increment PRIMARY KEY,
                   nombre VARCHAR(45), 
                   descripcion VARCHAR(45))engine=innodb;                    

CREATE TABLE tipoEmpleado(idTipoEmpleado INT auto_increment PRIMARY KEY,
                          nombre VARCHAR(45), 
                          descripcion VARCHAR(45))engine=innodb;

CREATE TABLE dependencia(idDependencia INT auto_increment PRIMARY KEY,
                         nombre VARCHAR(45), 
                         descripcion VARCHAR(45))engine=innodb;

CREATE TABLE usuario(idUsuario INT auto_increment PRIMARY KEY,
                     login VARCHAR(45), 
                     clave VARCHAR(45))engine=innodb;

CREATE TABLE permiso(idPermiso INT auto_increment PRIMARY KEY,
                     nombre VARCHAR(45), 
                     descripcion VARCHAR(45))engine=innodb;

CREATE TABLE permisosXUsuario(idUsuario INT auto_increment,
                              idPermiso INT auto_increment,
                              PRIMARY KEY(idUsuario,idPermiso),
                              FOREIGN KEY(idUsuario), REFERENCES usuario(idUsuario),
                              FOREIGN KEY(idPermiso), REFERENCES permiso(idPermiso))engine=innodb;

CREATE TABLE empleado(idEmpleado INT auto_increment PRIMARY KEY,
                      idPersona INT,
                      idCargo INT,
                      idTipoEmpleado INT,
                      idDependencia INT,
                      idUsuario INT,
                      FOREIGN KEY(idPersona) REFERENCES persona(idPersona),
                      FOREIGN KEY(idCargo) REFERENCES cargo(idCargo),
                      FOREIGN KEY(idTipoEmpleado) REFERENCES tipoEmpleado(idTipoEmpleado),
                      FOREIGN KEY(idDependencia) REFERENCES dependencia(idDependencia),
                      FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario))engine=innodb;


SHOW ENGINE INNODB STATUS     LATEST FOREIGN KEY ERROR

Date ('04.05.21'), ('05/05/21'), ('06@05@21'), (NOW()), (CURDATE( ))                         

INSERT INTO persona (cedula, nombre, apellido, fechaNacimiento, telefono, direccion) VALUES(1, 
                           "12345678", 
                           "Asustin", 
                           "Pera", 
                           CURDATE(),
                           "512723456",
                           "casita vieja .no mames");