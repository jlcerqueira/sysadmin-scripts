cd "php8_deploy\PHP8.3\Test Plan"
$listaPath = ".\ValidaPHP.txt"`

# `Ler cada linha do arquivo como uma URL e verificar o status`

`Get-Content $listaPath | ForEach-Object {
$url = $_
try {
$response = Invoke-WebRequest -Uri $url -Method Get
if ($response.StatusCode -eq 200) {
Write-Host "A página $url retornou o status 200 (OK)."
} else {
Write-Host "A página $url não retornou o status 200. Status: $($response.StatusCode)"
}
} catch {
if ($.Exception.Response.StatusCode -eq 500) {
Write-Host "A página $url retornou o erro 500 (Internal Server Error)."
} else {
Write-Host "Erro ao acessar a página $url. Status: $($.Exception.Response.StatusCode)"
}
}
}`