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
// ej de definición de Documento JSON
negra = { nombre: "Negra", nacimiento: new Date('2012-10-12'), edad: 8, color: "negro", tamano: "grande" }
chola = { nombre: "Chola", nacimiento: new Date('2006-11-18'), edad: 14, color: "negro", tamano: "mediano" }
pepa = { nombre: "Pepa", nacimiento: new Date('2017-12-01'), edad: 3, color: "negro", tamano: "pequeño" }
mila = { nombre: "Mila", nacimiento: new Date('2015-12-01'), edad: 5, color: "negro", tamano: "pequeño", raza: "terrier chileno" }
// mongo no exige respetar un esquema, por ej. puedo agregar el campo raza
chimu = { nombre: "Chimu", nacimiento: new Date('2005-01-01'), edad: 15, color: "blanco", tamano: "pequeño", raza: "poodle" } 
// inserta el Documento en la colección 'perros'
db.perros.insert( negra ) 
// si no especifico un campo _id en el Documento, Mongo lo creará automáticamente 
db.perros.insert( chola ) 
db.perros.insert( chimu )
```

Consultar Datos
-----------------
```javascript
// Devuelve todos los Documentos de la colección 'perros'
db.perros.find() 
// Busca a los perros de raza poodle
db.perros.find( {raza: "poodle"} )
// Busca los perros en que la raza sea NULL o no esté definida (devuelve 3 docs) 
db.perros.find( {raza: null} ) 
// Busca a los perros de color negro y muestra solo el nombre. El _id siempre se muestra
db.perros.find( {color: "negro"}, {nombre: 1} ) 
// Busca a los perros de color negro y muestra todos los campos excepto el de nacimiento
db.perros.find( {color: "negro"}, {nacimiento: 0} ) 
// Ordena los documentos por nombre de manera ASC
db.perros.find().sort({nombre: 1}) 
// Ordena los documentos por nombre de manera DESC
db.perros.find().sort({nombre: -1}) 
// No filtra y devuelve solo el campo nombre
db.perros.find({}, {nombre: 1}) 
// Limita a 2 los registros que se devuelven
db.perros.find({}, {nombre: 1}).limit(2) 
// Salta 2 docs y devuelve los 2 sgtes
db.perros.find({}, {nombre: 1}).skip(2).limit(2) 

```

Fuentes de Información
-----------------------

- https://docs.mongodb.com/manual/reference/sql-comparison/ 
- https://docs.mongodb.com/manual/tutorial/write-scripts-for-the-mongo-shell/ 
- Membrey, P., Hows, D., & Plugge, E. (2014). MongoDB Basics. Apress.
