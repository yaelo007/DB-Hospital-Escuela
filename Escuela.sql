
DROP DATABASE escuela;
CREATE DATABASE escuela;
USE escuela;

CREATE TABLE tipoAlumnos(idTipoAlumno INT auto_increment PRIMARY KEY,
                         tipoAlumno VARCHAR (25))engine=innodb;


CREATE TABLE alumnos(idAlumno INT auto_increment PRIMARY KEY, 
                     nombreAlumno VARCHAR(25), 
                     apAlumno VARCHAR(25), 
                     amAlumno VARCHAR(25),
                     matricula VARCHAR (20),
                     idTipoAlumno INT,
                     FOREIGN KEY(idTipoAlumno)REFERENCES tipoAlumnos(idTipoAlumno))engine=innodb;


CREATE TABLE grupos(idGrupo INT auto_increment PRIMARY KEY,
                    nombreGrupo VARCHAR(25))engine=innodb;


CREATE TABLE periodos(idTipoPeriodo INT auto_increment PRIMARY KEY,
                      nombrePeriodo VARCHAR(25))engine=innodb;


CREATE TABLE materias(idMateria INT auto_increment PRIMARY KEY,
                      nombreMateria VARCHAR(25))engine=innodb;


CREATE TABLE escuelas(idEscuela INT auto_increment PRIMARY KEY,
                      nombreEscuela VARCHAR(25))engine=innodb;


CREATE TABLE parciales(idParcial INT auto_increment PRIMARY KEY,
                     nombreParcial VARCHAR(25))engine=innodb;

CREATE TABLE salones(idSalon INT auto_increment PRIMARY KEY,
                     nombreSalon VARCHAR(25))engine=innodb;


CREATE TABLE horarios(idHorario INT auto_increment PRIMARY KEY,
                      dia DATE,
                      horaInicio DATE,
                      horaFinal DATE,
                      idAgrupacion INT,
                      idSalon INT,
                      FOREIGN KEY(idSalon)REFERENCES salones(idSalon))engine=innodb;


CREATE TABLE agrupaciones(idAgrupacion INT auto_increment PRIMARY KEY,
                          idGrupo INT,
                          idAlumno INT,
                          idTipoPeriodo INT,
                          idMateria INT,
                          idEscuela INT,
                          idParcial INT,
			  FOREIGN KEY(idGrupo)REFERENCES grupos(idGrupo),
                          FOREIGN KEY(idAlumno)REFERENCES alumnos(idAlumno),
                          FOREIGN KEY(idTipoPeriodo)REFERENCES periodos(idTipoPeriodo),
                          FOREIGN KEY(idMateria)REFERENCES materias(idMateria),
                          FOREIGN KEY(idEscuela)REFERENCES escuelas(idEscuela),
                          FOREIGN KEY(idParcial)REFERENCES parciales(idParcial))engine=innodb;


CREATE TABLE tipoAsistencias(idTipoAsistencia INT auto_increment PRIMARY KEY,
                             tipoAsistencia VARCHAR(25))engine=innodb;


CREATE TABLE asistencias(idAsistencia INT auto_increment PRIMARY KEY,
                         idAlumno INT,
                         idTipoAsistencia INT,
                         idAgrupacion INT,
                         fecha DATE,
                         FOREIGN KEY(idAlumno)REFERENCES alumnos(idAlumno),
                         FOREIGN KEY(idTipoAsistencia)REFERENCES tipoAsistencias(idTipoAsistencia),
                         FOREIGN KEY(idAgrupacion)REFERENCES agrupaciones(idAgrupacion))engine=innodb;


CREATE TABLE calificaciones(idCalificacion INT auto_increment PRIMARY KEY,
                            nombreCalificacion VARCHAR(25))engine=innodb;


CREATE TABLE calificacionesAlumnos(idCalificacionAlumno INT auto_increment PRIMARY KEY,
                                   idAgrupacion INT,
                                   calificacionTrabajos DOUBLE,
                                   calificacionAsistencias DOUBLE,
                                   calificacionCompetencias DOUBLE,
                                   calificacionTrabajoEnClase DOUBLE,
                                   calificacionDelParcial DOUBLE,
                                   FOREIGN KEY(idAgrupacion)REFERENCES agrupaciones(idAgrupacion))engine=innodb;


CREATE TABLE trabajos(idTrabajo INT auto_increment PRIMARY KEY,
                      nombreTrabajo VARCHAR(25),
                      idAgrupacion INT,
                      idCalificacion INT, 
                      FOREIGN KEY(idAgrupacion)REFERENCES agrupaciones(idAgrupacion),
                      FOREIGN KEY(idCalificacion)REFERENCES calificaciones(idCalificacion))engine=innodb; 
                      























INSERT INTO alumnos(nombre) VALUES("Buckminster"),("Austin"),("Davis"),("Aaron"),("Cade");
SELECT (SELECT nombre FROM noms_hombre WHERE id_nombH = 1 + rand() * 4);