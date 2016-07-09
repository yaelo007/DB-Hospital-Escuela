


Consultas Escuela.


1.-Todos los alumnos de la materia 3 en el periodo Enero-Agosto del 2010 que tengan un promedio de 6 a 8.9.

SELECT concat(nombreAlumno," ",apAlumno," ",amAlumno) AS alumnos FROM alumnos
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno
INNER JOIN periodos ON periodos.idTipoPeriodo=agrupaciones.idPeriodo
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN calificacionesAlumnos ON calificacionesAlumnos.idCalificacionAlumno=agrupaciones.idAgrupacion
WHERE
materias.idMateria='3'
AND nombrePeriodo="Enero-Agosto2016"
AND YEAR(fecha)=2010
AND calificacionDelParcial BETWEEN '6' AND '8.9';

Empty set (0.02 sec)

SELECT COUNT(*) as Alumnos FROM alumnos
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno
INNER JOIN periodos ON periodos.idTipoPeriodo=agrupaciones.idPeriodo
INNER JOIN materias onON materias.idMateria=agrupaciones.idMateria
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN calificacionesAlumnos ON calificacionesAlumnos.idCalificacionAlumno=agrupaciones.idAgrupacion
WHERE
materias.idMateria='3'
or nombrePeriodo="Enero-Agosto2016"
or YEAR(fecha)=2010
or calificacionDelParcial BETWEEN '6' AND '8.9';

+-------------+
| Alumnos  |
+-------------+
|  125140   |
+-------------+
1 row in set (15.72 sec)

2.-Todos los alumnos de ingeniería del periodo Enero-Agosto del 2011 del grupo 3

SELECT concat(nombreAlumno," ",apAlumno," ",amAlumno) AS alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno
INNER JOIN periodos ON periodos.idTipoPeriodo=agrupaciones.idPeriodo
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN grupos ON grupos.idGrupo=agrupaciones.idGrupo
WHERE
tipoAlumno="ING"
AND nombrePeriodo="Enero-Agosto2016"
AND grupos.idGrupo=3;

Empty set (0.11 sec)

SELECT COUNT(*) AS Alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno
INNER JOIN periodos ON periodos.idTipoPeriodo=agrupaciones.idPeriodo
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN grupos ON grupos.idGrupo=agrupaciones.idGrupo
WHERE
tipoAlumno="Ingeniero"
or nombrePeriodo="Enero-Agosto2016"
or grupos.idGrupo=3;

+-------------+
| Alumnos  |
+-------------+
|  500329   |
+-------------+
1 row in set (18.47 sec)
 
3.-Todos los alumnos TSU que faltaron el 20 de enero del 2012

SELECT concat(nombreAlumno," ",apAlumno," ",amAlumno)AS Alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno 
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
WHERE
tipoAlumno="TSU"
AND fecha="2016-01-20";

Empty set (0.02 sec)

SELECT COUNT(*) AS Alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno 
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
WHERE
tipoAlumno="TSU"
or fecha="2016-01-20";

+------------+
| Alumnos |
+------------+
|  499671  |
+------------+
1 row in set (6.60 sec)
 
4.-Todos los alumnos de Ingeniería que entren entre las 5pm y las 8pm

SELECT concat(nombreAlumno," ",apAlumno," ",amAlumno) AS alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno 
INNER JOIN horario ON horario.idAgrupacion=agrupaciones.idAgrupacion
WHERE
tipoAlumno="Ingeniero"
AND horaInicio='17:00'
AND horaFInal='20:00';

Empty set, 4 warnings (1.93 sec)

SELECT COUNT(*) AS Alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno 
INNER JOIN horario ON horario.idAgrupacion=agrupaciones.idAgrupacion
WHERE
tipoAlumno="Ingeniero"
or horaInicio='17:00'
or horaFInal='20:00';

+-------------+
| Alumnos  |
+-------------+
|  500329   |
+-------------+
1 row in set, 4 warnings (8.96 sec)
 
5.-Todos los alumnos de Ingeniería que en la materia 2 reprobaron

SELECT concat(nombreAlumno," ",apAlumno," ",amAlumno) AS alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno  
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria
INNER JOIN calificacionesAlumnos ON calificacionesAlumnos.idCalificacionAlumno=agrupaciones.idAgrupacion
WHERE
tipoAlumno="Ingeniero"
AND materias.idMateria=2
AND calificacionDelParcial=7;

Empty set (0.08 sec)

SELECT COUNT(*) AS Alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno  
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria
INNER JOIN calificacionesAlumnos ON calificacionesAlumnos.idCalificacionAlumno=agrupaciones.idAgrupacion
WHERE
tipoAlumno = "Ingeniero"
or materias.idMateria=2
or calificacionDelParcial = 7;

+-------------+
| Alumnos  |
+-------------+
|  500329   |
+-------------+
1 row in set (10.36 sec)


6.-Todos los alumnos de TSU de la materia 4 en el periodo Mayo-Agosto del 2013 que tienen entre 2 y 5 faltas y que tienen más de 2 retardos 

SELECT concat(nombreAlumno,"  ",apAlumno,"  ",amAlumno) AS Alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno  
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria
INNER JOIN periodos ON periodos.idTipoPeriodo=agrupaciones.idPeriodo
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN tipoAsistencias ON tipoAsistencias.idTipoAsistencia=asistencias.idAsistencia
WHERE
tipoAlumno="TSU"
AND materias.idMateria=4
AND nombrePeriodo="Mayo-Agosto2016" 
AND (SELECT COUNT(tipoAsistencia) FROM tipoAsistencias WHERE tipoAsistencia="Inasistencia") BETWEEN 2 AND 5 limit 10;

Empty set (0.77 sec)

SELECT COUNT(*) AS Alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno  
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria
INNER JOIN periodos ON periodos.idTipoPeriodo=agrupaciones.idPeriodo
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN tipoAsistencias ON tipoAsistencias.idTipoAsistencia=asistencias.idAsistencia
WHERE
tipoAlumno="TSU"
or materias.idMateria=4
or nombrePeriodo="Mayo-Agosto2016" 
or (SELECT COUNT(tipoAsistencia) FROM tipoAsistencias WHERE tipoAsistencia="Inasistencia") BETWEEN 2 AND 5 limit 10;

+-------------+
| Alumnos  |
+-------------+
|  666492   |
+-------------+
1 row in set (19.92 sec) 

7.-Todos los alumnos de Ingeniería de la materia 3

SELECT concat(nombreAlumno," ",apAlumno," ",amAlumno) AS Alumnos FROM alumnos
INNER JOIN tipoAlumnos ON tipoAlumnos.idTipoAlumno=alumnos.idAlumno
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno  
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria
WHERE
tipoAlumno="Ingeniero"
AND materias.idMateria=3;

+--------------------------------+
| Alumnos                            |
+--------------------------------+
| Peña Hernandez Hector          |
+--------------------------------+
1 row in set (0.00 sec)

8.-Todos los grupos que la media de sus promedios sea entre 8 y 8.5 ordenados por periodos y año

SELECT AVG(calificacionDelParcial) AS Media, nombreGrupo, nombrePeriodo FROM grupos
INNER JOIN agrupaciones ON grupos.idGrupo=agrupaciones.idGrupo
INNER JOIN calificacionesAlumnos ON agrupaciones.idAgrupacion=calificacionesAlumnos.idAgrupacion
INNER JOIN periodos ON agrupaciones.idPeriodo=periodos.idTipoPeriodo
group by(nombreGrupo) HAVING media BETWEEN '8' AND '8.5' ORDER BY(nombrePeriodo);

Empty set (17.43 sec) 


9.-El promedio de las calificaciones de los alumnos en el periodo Septiembre-Diciembre del 2011 del profesor 6 para la materia 3

SELECT concat(nombreAlumno," ",apAlumno," ",amAlumno) AS Alumnos, AVG(calificacionDelParcial)AS Promedio FROM alumnos
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno  
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria 
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN periodos ON periodos.idTipoPeriodo=agrupaciones.idPeriodo
INNER JOIN profesores ON profesores.idMateria=materias.idMateria
INNER JOIN calificacionesAlumnos ON calificacionesAlumnos.idCalificacionAlumno=agrupaciones.idAgrupacion
WHERE nombrePeriodo = "Septiembre-Diciembre2016”
AND materias.idMateria = 3
AND idProfesor = 6;

+-------------+--------------+
| Alumnos  | Promedio |
+-------------+--------------+
| NULL        |     NULL     |
+-------------+--------------+
1 row in set (0.03 sec)

SELECT concat(nombreAlumno," ",apAlumno," ",amAlumno) AS Alumnos, AVG(calificacionDelParcial)AS Promedio FROM alumnos
INNER JOIN agrupaciones ON agrupaciones.idAlumno=alumnos.idAlumno  
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria 
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN periodos ON periodos.idTipoPeriodo=agrupaciones.idPeriodo
INNER JOIN profesores ON profesores.idMateria=materias.idMateria
INNER JOIN calificacionesAlumnos ON calificacionesAlumnos.idCalificacionAlumno=agrupaciones.idAgrupacion
WHERE 
nombrePeriodo="Septiembre-Diciembre2016”
OR materias.idMateria=3
OR idProfesor=6;
+--------------------------------------+---------------+
| Alumnos                                    | Promedio  |
+--------------------------------------+---------------+
| Peña Hernandez Hector |        0           |
10.-Los tres grupos con mejor promedio del 2010 para las materias 1, 3 y 5

SELECT nombreGrupo, AVG(calificacionDelParcial)AS Promedio FROM grupos
INNER JOIN agrupaciones ON agrupaciones.idGrupo=grupos.idGrupo
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN calificacionesAlumnos ON calificacionesAlumnos.idCalificacionAlumno=agrupaciones.idAgrupacion
WHERE
fecha = YEAR(fecha)=2010
AND materias.idMateria="1,3,5";

+--------------------+---------------+
| nombreGrupo | Promedio  |
+--------------------+---------------+
| NULL        	  |     NULL      |
+-------------+----------------------+
1 row in set, 1 warning (0.11 sec)

SELECT nombreGrupo, AVG(calificacionDelParcial)AS Promedio FROM grupos
INNER JOIN agrupaciones ON agrupaciones.idGrupo=grupos.idGrupo
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria
INNER JOIN asistencias ON asistencias.idAsistencia=agrupaciones.idAgrupacion
INNER JOIN calificacionesAlumnos ON calificacionesAlumnos.idCalificacionAlumno=agrupaciones.idAgrupacion
WHERE
fecha = YEAR(fecha)=2016
OR materias.idMateria="1,3,5";

+--------------------+---------------+
| nombreGrupo | Promedio  |
+--------------------+---------------+
| 7ITI2                  |        0          |
+--------------------+---------------+
1 row in set, 1 warning (12.26 sec)
 
11.-Los mejores 10 promedios para el 1er parcial de la materia 4 en el periodo Septiembre- Diciembre y los nombres de los profesores

SELECT AVG(calificacionDelParcial)AS Promedio, concat(nombreProfesor," ",apProfesor," ",amProfesor)AS Profesores FROM calificacionesalumnos
INNER JOIN agrupaciones ON agrupaciones.idAgrupacion=calificacionesAlumnos.idAgrupacion
INNER JOIN periodos ON periodos.idTipoPeriodo=agrupaciones.idPeriodo
INNER JOIN materias ON materias.idMateria=agrupaciones.idMateria
INNER JOIN parciales ON parciales.idParcial=agrupaciones.idParcial
INNER JOIN profesores ON profesores.idMateria=materias.idMateria
WHERE
nombreParcial="1er parcial"
AND materias.idMateria=4
AND nombrePeriodo="Septiembre-Diciembre2016";

+--------------+----------------------------------+
| Promedio  | Profesores                         |
+--------------+----------------------------------+
|     NULL      | Balam Paramo Castillo |
+--------------+----------------------------------+
1 row in set (0.00 sec)

 
REGISTROS

mysql> SELECT COUNT(*) FROM alumnos;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.50 sec)

mysql> SELECT COUNT(*) FROM agrupaciones;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.50 sec)

mysql> SELECT COUNT(*) FROM asistencias;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.50 sec)

mysql> SELECT COUNT(*) FROM calificaciones;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.63 sec)
mysql> SELECT COUNT(*) FROM calificacionesalumnos;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.53 sec)

mysql> SELECT COUNT(*) FROM escuelas;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.81 sec)

mysql> SELECT COUNT(*) FROM grupos;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.66 sec)

mysql> SELECT COUNT(*) FROM horario;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.44 sec)

mysql> SELECT COUNT(*) FROM materias;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.95 sec)

mysql> SELECT COUNT(*) FROM parciales;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.66 sec)



mysql> SELECT COUNT(*) FROM periodos;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (1.11 sec)

mysql> SELECT COUNT(*) FROM salones;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.94 sec)

mysql> SELECT COUNT(*) FROM tipoalumnos;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.74 sec)

mysql> SELECT COUNT(*) FROM tipoasistencias;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.80 sec)

mysql> SELECT COUNT(*) FROM trabajos;
+----------+
| COUNT(*) |
+----------+
|  1000000 |
+----------+
1 row in set (0.68 sec)
