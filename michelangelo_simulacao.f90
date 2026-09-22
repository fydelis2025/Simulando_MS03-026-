! ===========================================================
! SIMULADOR MICHELANGELO — OnlineGDB Compatível
! FydelisTech • Salvador • Bahia 🇧🇷
! ==========================================================
program michelangelo

    implicit none
    integer :: dia, mes, ano
    logical :: dia_perigoso

    print *, "================================================"
    print *, "  🦠 VÍRUS MICHELANGELO — SIMULAÇÃO EDUCACIONAL"
    print *, "================================================"
    print *, ""
    print *, "O vírus ficava ESCONDIDO no disco..."
    print *, "Só ATACAVA no dia 6 de MARÇO!"
    print *, ""
    print *, "Informe a data (ex: 6 3 2026):"
    print *, "Dia: "; read(*,*) dia
    print *, "Mês: "; read(*,*) mes
    print *, "Ano: "; read(*,*) ano
    print *, ""

    ! Verifica se é o dia fatal: 6 de março
    dia_perigoso = (mes == 3 .and. dia == 6)

    print *, "================================================"
    print *, "  DATA: ", dia, "/", mes, "/", ano
    print *, "  STATUS: INFECTADO (simulação)"
    print *, "  TEMPO OCULTO: 58 dias sem dar sinal"
    print *, "================================================"

    if (dia_perigoso) then
        print *, "  🚨 ALERTA MÁXIMO! HOJE É O DIA!"
        print *, "  DADOS SERIAM SOBRESCRITOS AGORA!"
    else
        print *, "  ✅ FORA DA JANELA DE PERIGO"
        print *, "  Sistema monitorando..."
    end if

    print *, ""
    print *, "LIÇÃO: Nunca confie em dispositivos desconhecidos!"
    print *, "Faça backup sempre 💾"
    print *, "================================================"

end program michelangelo
