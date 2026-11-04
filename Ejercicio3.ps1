







# EJERCICIO 3 - Monitoreo del estado de la red

# Bucle que realiza exactamente 3 verificaciones
for ($i = 1; $i -le 3; $i++) {

    Write-Host ""
    Write-Host "========================================="
    Write-Host "       VERIFICACION DE RED N° $i"
    Write-Host "========================================="

    # Mostrar fecha y hora exacta
    $fechaHora = Get-Date -Format "dd/MM/yyyy HH:mm:ss.fff"
    Write-Host "Fecha y hora: $fechaHora"

    # Obtener los adaptadores de red activos
    Write-Host ""
    Write-Host "Adaptadores de red activos:"

    # En Debian se utiliza ip para consultar las interfaces activas
    $adaptadores = ip -o link show up

    if ($adaptadores) {
        $adaptadores
    }
    else {
        Write-Host "No se encontraron adaptadores de red activos."
    }

    # Evaluar si la iteracion es par o impar
    if ($i % 2 -eq 0) {
        Write-Host "La iteracion $i es PAR."
    }
    else {
        Write-Host "La iteracion $i es IMPAR."
    }
}

# Mensaje final
Write-Host ""
Write-Host "========================================="
Write-Host "El monitoreo de red ha concluido con exito."
Write-Host "Se realizaron exactamente 3 verificaciones."
Write-Host "========================================="
