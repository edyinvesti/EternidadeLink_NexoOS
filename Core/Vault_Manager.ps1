# =========================================================
# NEXO OS - GESTOR DO COFRE (BANCO DE DADOS PSL)
# PROJETO: ETERNIDADE LINK | DIRETOR: EDY CARLOS
# =========================================================

function Salvar-No-Cofre {
    param (
        [string]$FonteOriginal,
        [string]$CodigoPSL
    )
    
    $DataSincronia = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
    $LogEntry = "[$DataSincronia] FONTE: $FonteOriginal | PSL: $CodigoPSL | STATUS: Sincronizado"
    
    # Salva no arquivo de base de dados (Vault.txt)
    $CaminhoArquivo = "C:\Users\edyin\Downloads\EternidadeLink_NexoOS\Logs\Vault_Intelligence.txt"
    $LogEntry | Out-File -FilePath $CaminhoArquivo -Append -Encoding utf8
    
    Write-Host "[COFRE] Inteligência armazenada no Banco de Dados." -ForegroundColor Yellow
}

# Interface de Consulta do Diretor
function Consultar-Cofre {
    $CaminhoArquivo = "C:\Users\edyin\Downloads\EternidadeLink_NexoOS\Logs\Vault_Intelligence.txt"
    if (Test-Path $CaminhoArquivo) {
        Write-Host "`n--- CONSULTANDO MEMÓRIA DO NEXO OS ---" -ForegroundColor Cyan
        Get-Content $CaminhoArquivo | Select-Object -Last 10
    } else {
        Write-Host "[!] Cofre vazio. Inicie o Funil primeiro." -ForegroundColor Red
    }
}
