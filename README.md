# Aplicacion de ejemplo para curso de Docker, del canal Hola Mundo.

Curso completo gratis aca: https://www.youtube.com/watch?v=4Dko5W96WHg

# ejecucion de comandos

```
# listamos las redes
docker network ls

# creamos una red de trabajo
docker network crate mired

# para borrar la red
docker network rm mired
```

# crear la imagen en base al archivo DockerFile

docker build -t miapp:1 .

# crear la imagen de mongo atado a la red

docker create -p27017:27017 --name mongito --network mired -e MONGO_INITDB_ROOT_USERNAME=nico -e MONGO_INITDB_ROOT_PASSWORD=password mongo

# crea el contenedor de applicacion

docker create -p3000:3000 --name chanchito --network mired miapp:1
