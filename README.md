# mongodb-basics
Aprendiendo lo básico de MongoDB

Comandos Básicos
------------------

```javascript
show dbs // muestra las bases de datos
show collections // muestras las colecciones
show users // muestra los usuarios
db // muestra la base de datos que se está usando
use <dbname> // cambia la BD en uso a <dbname>
cls // limpia la consola
```

Binarios
---------

```bash
bsondump
mongo # Mongo shell
mongod # Mongo DB Server Daemon
mongodump
mongoexport
mongofiles
mongoimport
mongooplog
mongoperf
mongorestore
mongos
mongosniff
mongostat
mongotop
mongorestore
```

Extraído de (Membrey et al., 2014, pp. 24)



Insertar Datos
----------------
```javascript
negra = { nombre: "Negra", nacimiento: new Date('2012-10-12'), edad: 8, color: "negro", tamano: "grande" } // definicion de Documento (JSON)
db.perros.insert( negra ) // inserta el Documento en la colección 'perros'
```

Fuentes de Información
-----------------------

- https://docs.mongodb.com/manual/reference/sql-comparison/ 
- https://docs.mongodb.com/manual/tutorial/write-scripts-for-the-mongo-shell/ 
- Membrey, P., Hows, D., & Plugge, E. (2014). MongoDB Basics. Apress.
