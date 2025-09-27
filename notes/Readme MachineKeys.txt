🔑 Script de Verificação de MachineKeys em web.config

Este script em PowerShell tem como objetivo identificar machineKeys comprometidas (armazenadas em um arquivo .txt) dentro de arquivos web.config em um diretório de hospedagem. 📌 Funcionamento Lê um arquivo de referência (machinekeys.txt) contendo as chaves suspeitas/vazadas.
Percorre recursivamente todas as pastas do diretório definido (ex.: E:\home). Verifica se alguma das chaves listadas está presente nos arquivos web.config. Agrupa os resultados por diretório principal, exibindo: A chave encontrada O caminho completo do arquivo onde foi localizada

