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
- **En caso de que se quiera cambiar el tipo de archivo que se crea, se debe cambiar el .dat por la extensión de archivo que se prefiera desde la dirección de la cláusula** `ASSIGN TO`
```bash
ASSIGN TO "C:\Users\bauga\Documentos\COBOL\Empleados.txt"
```
- **Preferiblemente personalizar los datos a los de uno mismo que vienen en** `IDENTIFICATION DIVISION.`
```bash
IDENTIFICATION DIVISION.
    PROGRAM-ID. Base_De_Datos.
    AUTHOR. Alex_Dan
    INSTALLATION. C:\Users\Alex\Dividiones.cbl
    DATE-WRITTEN. 04/05/2024
    DATE-COMPILED. 04/05/2024
```
- **Si se desea se puede borrar o cambiar sin ningún problema la parte que está antes de** `IDENTIFICATION DIVISION.`
```bash
******************************************************************
* Author: Alex_Dan                                               *
* Date: 04/05/2024                                               *
* Purpose: Proyecto                                              *
* Tectonics: cobc                                                *
******************************************************************
```
