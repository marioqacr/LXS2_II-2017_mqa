Primero debe dar derechos de ejecución al archivo busca_distrito:

~$sudo chmod u+x busca_distrito

Ingrese a mysql con el password de root:

~$mysql -u root -p

Una vez en mysql, ejecute la siguiente instrucción:

mysql> SOURCE codigo_postal_cr.sql;

Este procedimiento generó la base de datos zipcode y dentro de ella tres tablas: provincias, cantones y distritos.

Proceda a ejecutar el script busca_distrito.  Proporcione la clave de root cuando se le solicite y seguidamente el nombre o parte del distrito a consultar.  Tenga en cuenta que si el nombre lo comparten varios distritos saldra por orden de provincia y cantón.  

Puede realizar las consultas que quiera y luego terminar con una x. 
