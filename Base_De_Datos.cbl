      ******************************************************************
      * Author: Alex_Dan                                               *
      * Date: 04/05/2024                                               *
      * Purpose: Proyecto                                              *
      * Tectonics: cobc                                                *
      ******************************************************************
       IDENTIFICATION DIVISION.
           PROGRAM-ID. Base_De_Datos.
           AUTHOR. Alex_Dan
           INSTALLATION. C:\Users\Alex\Dividiones.cbl
           DATE-WRITTEN. 04/05/2024
           DATE-COMPILED. 04/05/2024
           REMARKS. Programa creado para aprender bases de datos de COBOL.

       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
               SOURCE-COMPUTER. VivoBook_ASUSLaptop X515UA-D515UA.
               OBJECT-COMPUTER. VivoBook_ASUSLaptop X515UA-D515UA.

           INPUT-OUTPUT SECTION.
           FILE-CONTROL.
           SELECT OPTIONAL EMPLEADOS_ARCHIVO
           ASSIGN TO "C:\Users\bauga\Documentos\COBOL\Empleados.dat"
           ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
           FILE SECTION.
           FD EMPLEADOS_ARCHIVO.
               01 EMPLEADOS_REGISTRO.
                   05 EMPLEADOS_ID PIC X(8).
                   05 EMPLEADOS_NOMBRE PIC X(30).
                   05 EMPLEADOS_APELLIDOS PIC X(30).
                   05 EMPLEADOS_EDAD PIC X(3).
                   05 EMPLEADOS_TELEFONO PIC X(10).
                   05 EMPLEADOS_DIRECCION PIC X(50).

           WORKING-STORAGE SECTION.
               01 IDENTIFICADOR PIC X(36)
                   VALUE "Introduce un ID del nuevo empleado: ".
               01 NOMBRE PIC X(34)
                   VALUE "Introduce el nombre del empleado: ".
               01 APELLIDOS PIC X(25)
                   VALUE "Introduce los apellidos: ".
               01 EDAD PIC X(19)
                   VALUE "Introduce la edad: ".
               01 TELEFONO PIC X(33)
                   VALUE "Introduce un numero de telefono: ".
               01 DIRECCION PIC X(25)
                   VALUE "Introduce una direccion: ".

               01 SI-NO PIC X.
               01 ENTRADA PIC X.

       PROCEDURE DIVISION.
           MAIN-LOGIC SECTION.

           PROGRAM_BEGIN.
               PERFORM PROCEDIMIENTO_DE_APERTURA.
               MOVE "S" TO SI-NO.
               PERFORM AGREGAR_REGISTROS
               UNTIL SI-NO = "N".
               PERFORM PROCEDIMIENTO_DE_CIERRE.

            PROGRAM_DONE.
               STOP RUN.

            PROCEDIMIENTO_DE_APERTURA.
                OPEN EXTEND EMPLEADOS_ARCHIVO.

            PROCEDIMIENTO_DE_CIERRE.
               CLOSE EMPLEADOS_ARCHIVO.

            AGREGAR_REGISTROS.
                MOVE "N" TO ENTRADA.
                PERFORM OBTENER_CAMPOS
                UNTIL ENTRADA = "S".
                PERFORM ESCRIBIR_REGISTRO.
                PERFORM REINICIAR.

            OBTENER_CAMPOS.
                MOVE SPACE TO EMPLEADOS_REGISTRO.
                DISPLAY IDENTIFICADOR.
                ACCEPT EMPLEADOS_ID.
                DISPLAY NOMBRE.
                ACCEPT EMPLEADOS_NOMBRE.
                DISPLAY APELLIDOS.
                ACCEPT EMPLEADOS_APELLIDOS.
                DISPLAY EDAD.
                ACCEPT EMPLEADOS_EDAD.
                DISPLAY TELEFONO.
                ACCEPT EMPLEADOS_TELEFONO.
                DISPLAY DIRECCION.
                ACCEPT EMPLEADOS_DIRECCION.
                PERFORM CONTINUAR.

            CONTINUAR.
                MOVE "S" TO ENTRADA.
                IF EMPLEADOS_NOMBRE = SPACE
                MOVE "N" TO ENTRADA.

            ESCRIBIR_REGISTRO.
                WRITE EMPLEADOS_REGISTRO.

            REINICIAR.
                DISPLAY
                "¿Desea almacenar otro registro en la base de datos?".
                ACCEPT SI-NO.
                IF SI-NO = "S"
                MOVE "S" TO SI-NO.
                IF SI-NO NOT = "S"
                MOVE "N" TO SI-NO.

            END PROGRAM Base_De_Datos.
