$rootPath = "E:\home"
$keysFile = "C:\temp\machinekeys.txt"

# Lê o arquivo linha por linha, removendo espaços vazios
$searchKeys = Get-Content $keysFile | ForEach-Object { $_.Trim() } | Where-Object { $_ -ne "" }

# Cria um objeto para armazenar resultados agrupados
$results = @{}

Get-ChildItem -Path $rootPath -Recurse -Filter "web.config" -ErrorAction SilentlyContinue |
ForEach-Object {
    try {
        $content = (Get-Content $_.FullName -ErrorAction Stop) -join "`n"
        $siteFolder = Split-Path $_.DirectoryName -Parent  # pega o diretório principal da subpasta FTP

        foreach ($key in $searchKeys) {
            if ($content -match [regex]::Escape($key)) {
                if (-not $results.ContainsKey($siteFolder)) {
                    $results[$siteFolder] = @()
                }
                $results[$siteFolder] += [PSCustomObject]@{
                    MachineKey = $key
                    FilePath   = $_.FullName
                }
            }
        }
    }
    catch {
        Write-Warning "Erro ao ler arquivo: $($_.FullName)"
    }
}

# Exibe os resultados agrupados por diretório
foreach ($folder in $results.Keys) {
    Write-Host "===== $folder =====" -ForegroundColor Cyan
    $results[$folder] | Format-Table -AutoSize
}