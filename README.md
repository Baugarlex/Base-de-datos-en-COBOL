# Base de Datos

El siguiente programa hecho en COBOL crea un archivo .dat en la dirección indicada y si el archivo ya esta creado lo modifica.

## Condiciones para su funcionamiento

- **Se debe de cambiar la dirección en la que se quiere guardar el archivo en la cláusula** `ASSIGN TO`
 ```bash
docker run -d \
  --name tk4-hercules \
  -p 3270:3270 \
  -p 8038:8038 \
  ghcr.io/skunklabz/tk4-hercules:latest
```
- **En caso de que se quiera cambiar el tipo de archivo que se crea, se debe cambiar el tipo de archivo en la dirección de la cláusula** `ASSIGN TO`
