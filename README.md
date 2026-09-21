# 🛡️ Arqueologia Digital: Simulando o W32.Blaster / MS03-026

Repositório educacional e histórico dedicado ao estudo do comportamento do worm **W32.Blaster (Lovsan)**, que marcou o verão de 2003 ao infectar milhões de computadores rodando sistemas operacionais Microsoft Windows vulneráveis à falha de buffer overflow no serviço RPC — **MS03-026 / CVE-2003-0352**.

---

## ⚠️ Aviso Legal

Este projeto possui **estritamente fins educacionais, de documentação histórica e análise de segurança defensiva**. Os códigos contidos neste repositório **NÃO** executam nenhuma ação real de desligamento, alteração de sistema ou exploração de rede. Tratam-se de simulações puras de interface de console, sem qualquer efeito sobre o sistema hospedeiro.

---

## 📂 Estrutura do Repositório

O projeto reconstrói o clássico painel de alerta de encerramento do Windows XP em linguagens de programação de épocas e paradigmas distintos, demonstrando como uma mesma lógica se manifesta ao longo de mais de 60 anos de história da computação:

| Linguagem / Paradigma | Arquivo | Extensão | Época | Propósito no Projeto |
|---|---|---|---|---|
| **Assembly x86 (NASM)** | `blaster_win.asm` | `.asm` | 1979– | Nível de sistema — manipulação direta de registradores e chamadas de kernel |
| **COBOL** | `blaster.cob` | `.cob` | 1959– | Sistemas corporativos e legados — processamento estruturado |
| **Fortran 77** | `blaster.f` | `.f` | 1957– | Computação científica e engenharia — loops numéricos clássicos |
| **Clipper / xBase** | `blaster.prg` | `.prg` | 1985–1997 | Era de ouro do desenvolvimento desktop DOS no Brasil |
| **Prolog** | `blaster.pl` | `.pl` | 1972– | Programação lógica — declaração de regras e recursão |
| **Python 3** | `blaster.py` | `.py` | 1991– | Abordagem moderna, acessível e multiplataforma |

---

## 📜 Contexto Histórico: A Epidemia de 2003

Em agosto de 2003, o worm **W32.Blaster** se espalhou globalmente explorando uma falha crítica na interface de chamadas de procedimento remoto (RPC) do Windows 2000 e Windows XP. Ao infectar uma máquina, ele exibia uma caixa de diálogo informando que o subsistema `NT AUTHORITY\SYSTEM` estava forçando um reinício do computador em **60 segundos**, acompanhado de contagem regressiva visível e ininterrupta.

### Mensagem original exibida na tela:
> *"O sistema está sendo desligado. Salve todo o trabalho em andamento e faça logoff. Qualquer trabalho não salvo será perdido. O desligamento foi iniciado por NT AUTHORITY\SYSTEM."*

### Como parava na época:
- **Solução imediata:** Digitar no Prompt de Comando:
  ```cmd
  shutdown /a
