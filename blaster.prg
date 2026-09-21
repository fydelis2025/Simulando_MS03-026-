
*// BLASTEREDU.PRG
*// SIMULAÇÃO EDUCACIONAL — W32.Blaster / Lovsan (2003)
*// Linguagem: Clipper 5.x — Estudo e documentação histórica
*// NÃO EXECUTA NENHUMA AÇÃO REAL — FINS DIDÁTICOS
*// Compatível com Clipper 5.01, 5.2, 5.3

PROCEDURE Main()
    LOCAL nSeg := 60
    
    CLS
    ? REPLICATE("=",44)
    ? "            SISTEMA WINDOWS                "
    ? REPLICATE("=",44)
    ?
    ? "O sistema esta sendo desligado. Salve o"
    ? "trabalho em andamento e faca logoff."
    ?
    ? "Iniciado por: NT AUTHORITY\SYSTEM"
    ?
    ? "Servico RPC falhou — Vulnerabilidade"
    ? "MS03-026 / CVE-2003-0352 — Buffer Overflow"
    ?
    
    DO WHILE nSeg >= 0
        ?? "Tempo restante: " + LTRIM(STR(nSeg)) + " seg [SIMULACAO]"
        ?? CHR(13)  // Volta o cursor — atualiza na mesma linha
        
        nSeg--
        INKEY(1)  // Espera 1 segundo — função nativa do Clipper
    ENDDO
    
    ?
    ? REPLICATE("=",44)
    ? "FIM DA SIMULACAO — W32.BLASTER / LOVSAN"
    ? REPLICATE("-",44)
    ? "Ano: 2003 — Milhoes de computadores infectados"
    ? "Solucao na epoca: shutdown /a + patch MS03-026"
    ? "Atualizado: Nao afeta Windows 10/11"
    ? REPLICATE("=",44)
    
    RETURN
