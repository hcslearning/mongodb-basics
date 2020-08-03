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



Insertar y Eliminar Datos
--------------------------
```javascript
// ----------------------------------------------
// INSERT
// ----------------------------------------------
// ej de definición de Documento JSON
negra = { nombre: "Negra", nacimiento: new Date('2012-10-12'), edad: 8, color: "negro", tamano: "grande" }
chola = { nombre: "Chola", nacimiento: new Date('2006-11-18'), edad: 14, color: "negro", tamano: "mediano" }
pepa = { nombre: "Pepa", nacimiento: new Date('2017-12-01'), edad: 3, color: "cafe", tamano: "mini" }
mila = { nombre: "Mila", nacimiento: new Date('2015-12-01'), edad: 5, color: "cafe", tamano: "pequeño", raza: "terrier chileno" }
// mongo no exige respetar un esquema, por ej. puedo agregar el campo raza
chimu = { nombre: "Chimu", nacimiento: new Date('2005-01-01'), edad: 15, color: "blanco", tamano: "pequeño", raza: "poodle" } 
// inserta el Documento en la colección 'perros'
db.perros.insert( negra ) 
// si no especifico un campo _id en el Documento, Mongo lo creará automáticamente 
db.perros.insert( chola )
db.perros.insertMany([pepa, mila, chimu])
// -------------------------------------------------------
// DELETE
// -------------------------------------------------------
// borra a todos los perros
db.perros.deleteMany({})
// borra a todos los perros de color café
db.perros.deleteMany({color: "cafe"})
// borra solo 1 por ID
db.perros.deleteOne( {_id: ObjectId('5f27569a9d38f4dba577956c')} ) 
```

Consultar Datos
-----------------
```javascript
// Devuelve todos los Documentos de la colección 'perros'
db.perros.find()
// Formatea los datos para hacerlos más legibles para el humano
db.perros.find().pretty() 
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
// shortcut para limitar a 2 saltar los 3 primeros
db.perros.find({}, {}, 2, 3)
```

Fuentes de Información
-----------------------

- https://docs.mongodb.com/manual/reference/sql-comparison/ 
- https://docs.mongodb.com/manual/tutorial/write-scripts-for-the-mongo-shell/ 
- Membrey, P., Hows, D., & Plugge, E. (2014). MongoDB Basics. Apress.
