# Sysadmin Scripts

Repositório com scripts diversos para auxiliar no dia a dia de administração de sistemas.  
O objetivo é manter scripts úteis e prontos para uso, evitando a necessidade de recriação no futuro.

## 📂 Estrutura do repositório

- **linux/**  
  Scripts para uso em ambientes Linux.

- **powershell/**  
  Scripts em PowerShell para tarefas administrativas no Windows.
  - `ConsultaSNI.ps1` — Consulta informações de SNI de um host. (IIS)  
  - `Valida status 200 em uma url.ps1` — Testa se uma URL retorna status HTTP 200.

- **teste.txt**  
  Teste

🔑 Script de Verificação de MachineKeys em web.config

Este script em PowerShell tem como objetivo identificar machineKeys comprometidas (armazenadas em um arquivo .txt) dentro de arquivos web.config em um diretório de hospedagem.
📌 Funcionamento
Lê um arquivo de referência (machinekeys.txt) contendo as chaves suspeitas/vazadas.
Percorre recursivamente todas as pastas do diretório definido (ex.: E:\home).
Verifica se alguma das chaves listadas está presente nos arquivos web.config.
Agrupa os resultados por diretório principal, exibindo:
A chave encontrada
O caminho completo do arquivo onde foi localizada

```bash
git clone https://github.com/jlcerqueira/sysadmin-scripts.git

