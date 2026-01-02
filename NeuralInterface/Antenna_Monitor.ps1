# =========================================================
# NEXO OS - MONITOR DE TRANSMISSÃO NEURAL (HARDWARE)
# PROJETO: ETERNIDADE LINK | DIRETOR: EDY CARLOS
# =========================================================

function Exibir-Sinal {
    param ($potencia, $frequencia)
    $barras = "█" * ($potencia / 10)
    $vazio = "░" * (10 - ($potencia / 10))
    
    Clear-Host
    Write-Host "--- NEXO OS: MONITOR DE ANTENA WIFI ---" -ForegroundColor Cyan
    Write-Host "DIRETOR: EDY CARLOS" -ForegroundColor Magenta
    Write-Host "---------------------------------------"
    
    Write-Host "SINAL: [$barras$vazio] $potencia%" -ForegroundColor Green
    Write-Host "FREQ:  $frequencia GHz" -ForegroundColor Yellow
    Write-Host "MODO:  TRANSMISSÃO PSL ATIVA" -ForegroundColor White
    Write-Host "---------------------------------------"
}

# Simulação de Transmissão em Tempo Real
$i = 0
while ($i -lt 5) {
    $p = Get-Random -Minimum 95 -Maximum 100 # Sinal sempre forte para o Diretor
    Exibir-Sinal -potencia $p -frequencia "5.8"
    
    # Simula pacote PSL sendo enviado
    $idPacote = Get-Random -Minimum 1000 -Maximum 9999
    Write-Host "[PSL-TX] Pacote Φ-NEXO-$idPacote enviado com sucesso." -ForegroundColor Cyan
    Write-Host "[ENERGIA] Estável em 20Wh por nó." -ForegroundColor Green
    
    Start-Sleep -Seconds 1
    $i++
}

Write-Host "`nMonitoramento concluído. Link mantido em standby." -ForegroundColor Gray
