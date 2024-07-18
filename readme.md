# Ejercicio 5

## Integrantes

- Carlos Quezada.
- Claudio Áranguiz.
- Jorge Delgado.
- Joshua Montt.
- Taysha Coleto.

## Justifique cada tipo de dato utilizado. ¿Es el óptimo en cada caso?

> Al usar `INT AUTO_INCREMENT PRIMARY KEY` le damos importancia a un campo el cual nos ayudará a tener un identificador, asegurando que cada valor sea único e incrementado.
> Usamos `VARCHAR` para determinar la cantidad máxima de caracteres a ingresar en un campo, el cual está determinado por la cantidad que asignemos entre paréntesis.
> Posteriormente se asignó un `DEFAULT UTC-3` para almacenar valores por defecto de una zona horaria específica la cual será cambiada a `UTC-2` usando `ALTER TABLE` y `MODIFY` respectivamente.
> Al usar `INSERT INTO` asignaremos a qué tabla y a qué filas agregaremos datos y en conjunto a `VALUES` nos permitirá encasillar esos datos a cada bloque.
> También utilizamos `ADD UNIQUE` el cual nos permite dar una restricción al campo `TELEFONO` asegurando que tenga valores únicos que garanticen la integridad de las mismas, sin duplicados.
> También, según lo solicitado en el trabajo, se crea una nueva tabla de nombre `CONTACTO` usando `CREATE TABLE` el cual contiene una `FOREIGN KEY` para establecer una relación entre la tabla `USUARIO` y el campo `TELEFONO`.
