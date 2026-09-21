import time
import os

def simular_blaster():
    # Limpa a tela (equivalente ao CLS do Clipper ou WRITEs iniciais)
    os.system('cls' if os.name == 'nt' else 'clear')
    
    print("============================================")
    print("            SISTEMA WINDOWS                 ")
    print("============================================")
    print()
    print("O sistema esta sendo desligado. Salve o")
    print("trabalho em andamento e faca logoff.")
    print()
    print(r"Iniciado por: NT AUTHORITY\SYSTEM")
    print()
    print("Servico RPC falhou — Vulnerabilidade")
    print("MS03-026 / CVE-2003-0352 — Buffer Overflow")
    print()
    
    # Contagem regressiva (ajustada para 10s para teste rápido, mude para 60 no artigo)
    for seg in range(10, -1, -1):
        # \r faz o cursor voltar para o início da linha (atualizando em tempo real igual ao Clipper/COBOL)
        print(f"Tempo restante: {seg:02d} seg [SIMULACAO]     ", end="\r", flush=True)
        time.sleep(1)
        
    print("\n")
    print("============================================")
    print("FIM DA SIMULACAO — W32.BLASTER / LOVSAN    ")
    print("--------------------------------------------")
    print("Ano: 2003 — Milhoes de computadores infectados")
    print("Solucao na epoca: shutdown /a + patch MS03-026")
    print("Atualizado: Nao afeta Windows 10/11")
    print("============================================")

if __name__ == "__main__":
    simular_blaster()
