# ==========================================
# EJERCICIO PARCIAL
# MONITOREO DE CONECTIVIDAD
# ==========================================

Clear-Host

$servidor = "8.8.8.8"

for ($i = 1; $i -le 3; $i++) {

    $fechaHora = Get-Date

    Write-Host "------------------------------"
    Write-Host "Intento numero: $i"
    Write-Host "Fecha y hora: $($fechaHora.ToString('dd/MM/yyyy HH:mm:ss'))"

    if ($i % 2 -eq 0) {
        Write-Host "La iteracion es PAR."
    }
    else {
        Write-Host "La iteracion es IMPAR."
    }

    $conexion = Test-Connection -ComputerName $servidor -Count 1 -Quiet

    if ($conexion) {
        Write-Host "Conexion exitosa con $servidor." -ForegroundColor Green
    }
    else {
        Write-Host "No se obtuvo respuesta de $servidor." -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "El monitoreo de conectividad ha concluido con exito." -ForegroundColor Cyan
