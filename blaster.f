PROGRAM BLASTER_F77
      INTEGER SEG, I
      CHARACTER*40 BARRA

      WRITE(*,*) '============================================'
      WRITE(*,*) '            SISTEMA WINDOWS                 '
      WRITE(*,*) '============================================'
      WRITE(*,*) ' '
      WRITE(*,*) 'O sistema esta sendo desligado. Salve o     '
      WRITE(*,*) 'trabalho em andamento e faca logoff.        '
      WRITE(*,*) ' '
      WRITE(*,*) 'Este desligamento foi iniciado por:         '
      WRITE(*,*) 'NT AUTHORITY\SYSTEM                         '
      WRITE(*,*) ' '
      WRITE(*,*) 'O servico RPC falhou — vulnerabilidade      '
      WRITE(*,*) 'detectada (MS03-026 / CVE-2003-0352)        '
      WRITE(*,*) ' '

      SEG = 10
   10 CONTINUE
      WRITE(*,20) SEG
   20 FORMAT('Tempo restante: ',I2,' seg  [SIMULACAO]')

      BARRA = '['
      DO 30 I = 1, SEG
         IF (I .GE. 38) GOTO 35
         BARRA(I+1:I+1) = '#'
   30 CONTINUE
   35 CONTINUE
      BARRA(31:31) = ']'
      WRITE(*,*) BARRA

      CALL SLEEP(1)
      SEG = SEG - 1
      IF (SEG .GE. 0) GOTO 10

      WRITE(*,*) ' '
      WRITE(*,*) '============================================'
      WRITE(*,*) 'FIM DA SIMULACAO — W32.BLASTER / LOVSAN    '
      WRITE(*,*) '--------------------------------------------'
      WRITE(*,*) 'Ano: 2003 — Atingiu milhoes de maquinas     '
      WRITE(*,*) 'Solucao: shutdown /a + patch MS03-026        '
      WRITE(*,*) '============================================'

      END
