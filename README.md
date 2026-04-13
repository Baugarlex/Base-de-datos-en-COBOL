# Base de Datos

El siguiente programa hecho en COBOL crea un archivo .dat en la dirección indicada y si el archivo ya esta creado lo modifica.

## Condiciones para su funcionamiento

- **Se debe de cambiar la dirección en la que se quiere guardar el archivo en la cláusula** `ASSIGN TO`
 ```bash
FILE-CONTROL.
           SELECT OPTIONAL EMPLEADOS_ARCHIVO
           ASSIGN TO "C:\Users\bauga\Documentos\COBOL\Empleados.dat"
           ORGANIZATION IS LINE SEQUENTIAL.
```
- **En caso de que se quiera cambiar el tipo de archivo que se crea, se debe cambiar el tipo de archivo en la dirección de la cláusula** `ASSIGN TO`
