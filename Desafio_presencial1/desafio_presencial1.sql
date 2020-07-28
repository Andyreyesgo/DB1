CREATE TABLE departamento (
nombre_departamento VARCHAR(40),
id_departamento SERIAL PRIMARY KEY
);

CREATE TABLE trabajadores(
rut_trabajador VARCHAR(20) PRIMARY KEY,
nombre_trabajador VARCHAR (20),
direccion VARCHAR (20),
id_departamento INT REFERENCES departamento (id_departamento)
);


CREATE TABLE liquidaciones(                                         
rut_trabajador VARCHAR(20) REFERENCES trabajadores (rut_trabajador),            id_liquidacion SERIAL PRIMARY KEY ,                                             drive TEXT
);


CREATE TABLE curso(                                                
nombre_curso VARCHAR (20),                                                      curso_id SERIAL PRIMARY KEY                                                     );


CREATE TABLE alumno(                                              
rut VARCHAR (20),                                                               nombre_alumno VARCHAR (20),                                                     alumno_id SERIAL PRIMARY KEY,                                                   id_curso INT REFERENCES curso (curso_id)                                        );

CREATE TABLE departamento_escolar(
desafios_(# nombre_departamento VARCHAR (20), 
desafios_(# departamento_id SERIAL PRIMARY KEY 
desafios_(# );


CREATE TABLE profesor (
desafios_(# nombre_profesor VARCHAR (30), 
desafios_(# profesor_id SERIAL PRIMARY KEY, 
desafios_(# id_departamento SERIAL REFERENCES departamento_escolar (departamento_id)
desafios_(# );



CREATE TABLE prueba_academica(                                     
id_prueba SERIAL PRIMARY KEY ,                                                  id_profesor INT  REFERENCES profesor(profesor_id),                              id_alumno INT  REFERENCES alumno(alumno_id),                                    puntaje VARCHAR (15)                                                            );
CREATE TABLE