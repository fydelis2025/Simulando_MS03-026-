IDENTIFICATION DIVISION.
       PROGRAM-ID. BLASTER-EDU.
       AUTHOR. DOCUMENTACAO-HISTORICA.
       DATE-WRITTEN. SETEMBRO-2026.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  SEGUNDOS           PIC 9(2) VALUE 10.
       01  CONTADOR           PIC 9(2).
       01  ESPACOS            PIC X(35) VALUE SPACES.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY '============================================'
           DISPLAY '            SISTEMA WINDOWS                 '
           DISPLAY '============================================'
           DISPLAY ' '
           DISPLAY 'O sistema esta sendo desligado. Salve o      '
           DISPLAY 'trabalho em andamento e faca logoff.        '
           DISPLAY ' '
           DISPLAY 'Iniciado por: NT AUTHORITY\SYSTEM           '
           DISPLAY ' '
           DISPLAY 'Servico RPC falhou — Vulnerabilidade        '
           DISPLAY 'MS03-026 / CVE-2003-0352 — Buffer Overflow '
           DISPLAY ' '.

       CONTAGEM.
           DISPLAY 'Tempo restante: ' SEGUNDOS ' seg [SIMULACAO]'.
           
           PERFORM AGUARDA-1-SEGUNDO.
           
           SUBTRACT 1 FROM SEGUNDOS.
           IF SEGUNDOS >= 0 GO TO CONTAGEM.

       FIM-SIMULACAO.
           DISPLAY ' '
           DISPLAY '============================================'
           DISPLAY 'FIM DA SIMULACAO — W32.BLASTER / LOVSAN    '
           DISPLAY '--------------------------------------------'
           DISPLAY 'Verao de 2003 — Milhoes de maquinas         '
           DISPLAY 'Solucao: shutdown /a + patch MS03-026        '
           DISPLAY '============================================'
           STOP RUN.

       AGUARDA-1-SEGUNDO.
           CALL 'C$SLEEP' USING 1.
           EXIT.
