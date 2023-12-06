import "bialet" for Db

Db.migrate("Tabla de regalos", "
  create table regalos (
    id integer primary key,
    nombre text
  );
")
Db.migrate("Datos iniciales", "
  insert into regalos (id, nombre) values
    (1, 'Medias'),
    (2, 'Caramelos'),
    (3, 'Vitel Toné');
")

