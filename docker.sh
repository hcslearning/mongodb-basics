# example creation container and conection from local terminal
podman run -d -p 127.0.0.1:27017:27017 --name basedatos -e MONGO_INITDB_ROOT_USERNAME=mongoadmin -e MONGO_INITDB_ROOT_PASSWORD=secret mongo:4.4.6-bionic

mongo "mongodb://127.0.0.1/prueba" --authenticationDatabase admin --username mongoadmin --password secret --verbose

