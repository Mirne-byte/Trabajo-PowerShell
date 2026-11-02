

# TP3 - Ejercicio 1
# Contador de numeros pares e impares con fecha y hora

[int]$limite = Read-Host "Introduce un numero limite"

for ($numero = 1; $numero -le $limite; $numero++) {

    $hora = Get-Date -Format "dd/MM/yyyy HH:mm:ss.fff"

    if ($numero % 2 -eq 0) {
        Write-Host "$hora - El numero $numero es PAR" -ForegroundColor Green
    }
    else {
        Write-Host "$hora - El numero $numero es IMPAR" -ForegroundColor Yellow
    }

}
