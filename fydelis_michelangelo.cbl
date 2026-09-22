       IDENTIFICATION DIVISION.
       PROGRAM-ID. MICHEL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  DIA        PIC 99.
       01  MES        PIC 99.
       01  ANO        PIC 9999.
       PROCEDURE DIVISION.
           DISPLAY "===================="
           DISPLAY " SIMULADOR MICHELANGELO"
           DISPLAY "===================="
           DISPLAY " Dia: "
           ACCEPT DIA
           DISPLAY " Mes: "
           ACCEPT MES
           DISPLAY " Ano: "
           ACCEPT ANO
           DISPLAY " "
           DISPLAY " Data: " DIA "/" MES "/" ANO
           IF MES = 03 AND DIA = 06 THEN
               DISPLAY " PERIGO - 6 DE MARCO!"
               DISPLAY " DADOS SERIAM APAGADOS"
           ELSE
               DISPLAY " SEGURO - Fora da data"
           END-IF
           DISPLAY "===================="
           DISPLAY " FACA BACKUP SEMPRE"
           DISPLAY "===================="
           STOP RUN.
