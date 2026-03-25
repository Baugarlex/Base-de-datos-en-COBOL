      ******************************************************************
      * Author: Alex_Dan                                               *
      * Date: 04/05/2024                                               *
      * Purpose: Proyecto                                              *
      * Tectonics: cobc                                                *
      ******************************************************************
       IDENTIFICATION DIVISION.
           PROGRAM-ID. Operaciones_Basicas.
           AUTHOR. Alex_Dan
           INSTALLATION. C:\Users\Alex\Dividiones.cbl
           DATE-WRITTEN. 04/05/2024
           DATE-COMPILED. 04/05/2024
           REMARKS. Programa creado para ver las operaciones básicas de COBOL.

       ENVIRONMENT DIVISION.
           CONFIGURATION SECTION.
               SOURCE-COMPUTER. VivoBook_ASUSLaptop X515UA-D515UA.
               OBJECT-COMPUTER. VivoBook_ASUSLaptop X515UA-D515UA.

       DATA DIVISION.
           FILE SECTION.
           WORKING-STORAGE SECTION.
               01 OPERACION PIC X(5).
               01 NUM1 PIC 9(5).
               01 NUM2 PIC 9(5).
               01 RESULTADO PIC Z(6).
               01 NUM3 PIC 9(5).
               01 NUM4 PIC 9(5).
               01 RESULTADOMUL PIC Z(10).

       PROCEDURE DIVISION.
           PREGUNTA.
               DISPLAY "Seleccione que operacion quiere hacer (S/R/M/D)".
               DISPLAY "Si desea salir introduzca en la consola ´Salir´".
               ACCEPT OPERACION.
               IF OPERACION = "S" OR OPERACION = "s"
                   GO TO SUMA
               ELSE IF OPERACION = "R" OR OPERACION = "r"
                   GO TO RESTA
               ELSE IF OPERACION = "M" OR OPERACION = "m"
                   GO TO MULTIPLICACION
               ELSE IF OPERACION = "D" OR OPERACION = "d"
                   GO TO PARTICION
               ELSE IF OPERACION = "Salir" OR OPERACION = "salir"
                   GO TO FINALIZAR
               ELSE
                   DISPLAY "Por favor introduce una S, R, M, D"
                   GO TO PREGUNTA.

           SUMA.
               DISPLAY "Introduce el primer numero a sumar: "
               ACCEPT NUM1.
               DISPLAY "Introduce el segundo numero a sumar: "
               ACCEPT NUM2.
               ADD NUM1 TO NUM2 GIVING RESULTADO.
               DISPLAY "El resultado de la suma es: " RESULTADO.
               GO TO PREGUNTA.

           RESTA.
               DISPLAY "Introduce el primer numero a restar: "
               ACCEPT NUM1.
               DISPLAY "Introduce el segundo numero a restar: "
               ACCEPT NUM2.
               SUBTRACT NUM1 FROM NUM2 GIVING RESULTADO.
               DISPLAY "El resultado de la resta es: " RESULTADO.
               GO TO PREGUNTA.

           MULTIPLICACION.
               DISPLAY "Introduce el primer numero a multiplicar: "
               ACCEPT NUM3.
               DISPLAY "Introduce el segundo numero a multiplicar: "
               ACCEPT NUM4.
               MULTIPLY NUM3 BY NUM4 GIVING RESULTADOMUL.
               DISPLAY "El resultado de la multiplicacion es: "
               RESULTADOMUL.
               GO TO PREGUNTA.

           PARTICION.
               DISPLAY "Introduce el primer numero a dividir: "
               ACCEPT NUM1.
               DISPLAY "Introduce el segundo numero a dividir: "
               ACCEPT NUM2.
               DIVIDE NUM1 BY NUM2 GIVING RESULTADO.
               DISPLAY "El resultado de la division es: " RESULTADO.
               GO TO PREGUNTA.

           FINALIZAR.
               DISPLAY "¡Adios!".
               STOP RUN.

       END PROGRAM Operaciones_Basicas.
