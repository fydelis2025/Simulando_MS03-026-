# 🛡️ Arqueologia Digital: Simulando o W32.Blaster / MS03-026

Repositório educacional e histórico dedicado ao estudo do comportamento do worm **W32.Blaster (Lovsan)**, que marcou o verão de 2003 ao infectar milhões de computadores rodando sistemas operacionais Microsoft Windows vulneráveis à falha de buffer overflow no serviço RPC (**MS03-026 / CVE-2003-0352**).

> **⚠️ Aviso Legal:** Este projeto possui **estritamente fins educacionais, de documentação histórica e análise de segurança defensiva**. Os códigos contidos neste repositório **NÃO** executam nenhuma ação real de desligamento, alteração de sistema ou exploração de rede. Tratam-se de simulações puras de interface de console.

---

## 📂 Estrutura do Repositório

O projeto reconstrói o clássico painel de alerta de encerramento do Windows XP em quatro linguagens de programação de épocas e paradigmas completamente diferentes:

| Linguagem / Tecnologia | Extensão | Propósito no Projeto |
| :--- | :--- | :--- |
| **Assembly (x86)** | `.asm` | Demonstração em nível de sistema operacional e manipulação direta de interrupções de kernel. |
| **COBOL** | `.cob` | Abordagem corporativa e legada, simulando o processamento estruturado de mainframes/sistemas clássicos. |
| **Fortran** | `.f` | Resgate da computação científica e de engenharia aplicada ao comportamento de loop histórico. |
| **Clipper (xBase)** | `.prg` | Representante da era de ouro do desenvolvimento desktop DOS dos anos 90. |

---

## 📜 Contexto Histórico: A Epidemia de 2003

Em agosto de 2003, o worm **W32.Blaster** se espalhou globalmente explorando uma falha crítica na interface de chamadas de procedimento remoto (RPC) do Windows. Quando infectado, o sistema exibia uma caixa de diálogo informando que o subsistema `NT AUTHORITY\SYSTEM` estava forçando um reinício do computador em 60 segundos, acompanhado de uma contagem regressiva ininterrupta.

### A Solução na Época
* **Mitigação imediata:** O comando `shutdown /a` via prompt de comando para abortar o encerramento.
* **Correção definitiva:** Instalação do patch oficial da Microsoft referente ao boletim **MS03-026**.

---

## 🧠 Objetivos Educacionais
Compreensão de Vetores de Ataque Clássicos: Entender o impacto visual e psicológico que um malware de propagação em massa causava nos usuários nos anos 2000.

Estudo de Portabilidade Lógica: Analisar como uma mesma regra de negócio (uma contagem regressiva com interface de texto e atraso de tempo) é implementada em paradigmas tão distintos quanto Assembly, COBOL, Fortran e Clipper.

Segurança Defensiva: Reforçar a importância de políticas de gerenciamento de patches e atualização contínua de infraestruturas de TI.

## 🚀 Como Compilar e Executar os Exemplos

Cada diretório deste repositório contém o código-fonte isolado. Veja abaixo como testá-los:

### 1. Assembly (x86 Linux / NASM)
Para montar e executar a simulação baseada em syscalls de baixo nível:
```bash
nasm -f elf32 blaster_win.asm -o blaster.o
ld -m elf_i386 blaster.o -o blaster
./blaster

