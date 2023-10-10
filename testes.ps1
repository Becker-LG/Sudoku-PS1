out-null
clear-host

#Tentativa inicial de fazer a tabela --------------------------------------------------------------->

#$m1 = @('1', '', '', '', '', '', '', '', '', '')
#$m2 = @('2', '', '', '', '', '', '', '', '', '')
#$m3 = @('3', '', '', '', '', '', '', '', '', '')
#$m4 = @('4', '', '', '', '', '', '', '', '', '')
#$m5 = @('5', '', '', '', '', '', '', '', '', '')
#$m6 = @('6', '', '', '', '', '', '', '', '', '')
#$m7 = @('7', '', '', '', '', '', '', '', '', '')
#$m8 = @('8', '', '', '', '', '', '', '', '', '')
#$m9 = @('9', '', '', '', '', '', '', '', '', '')
#
#for (($i = 0); ($i -lt 10); ($i++)){
#    if ($m1[0] -eq $i){
#        write-host $m1
#    }elseif ($m2[0] -eq $i){
#        write-host $m2 `
#    }elseif ($m3[0] -eq $i){
#        write-host $m3 `
#    }elseif ($m4[0] -eq $i){
#        write-host $m4 `
#    }elseif ($m5[0] -eq $i){
#        write-host $m5 `
#    }elseif ($m6[0] -eq $i){
#        write-host $m6 `
#    }elseif ($m7[0] -eq $i){
#        write-host $m7 `
#    }elseif ($m8[0] -eq $i){
#        write-host $m8 `
#    }elseif ($m9[0] -eq $i){
#        write-host $m9 `
#    }
#}

#Utilização de listas irregulares para fazer a tabela --------------------------------------------------------------->

#$matriz = @(
#    @(1, 2, 3),
#    @(4, 5, 6),
#    @(7, 8, 9)
#)

# Usar um loop for para listar os elementos
#for ($linha = 0; $linha -lt $matriz.Length; $linha++) {
#    for ($coluna = 0; $coluna -lt $matriz[$linha].Length; $coluna++) {
#        Write-Host "Elemento [$linha][$coluna]: $($matriz[$linha][$coluna])"
#    }
#}

#tentativa de verificação se foi colocado de maneira certa os números
#for($i = 0; $i -lt 3; $i++){
#    $verificar = ($matriz[$i][0..$matriz.count])-join $null
#    $verificar = [int]$verificar
#    $verificar = ($verificar.ToCharArray() | Where-Object{$_ -eq [int]$i} | Measure-Object).Count
#    Write-Host $verificar
#    if ($verificar -gt 0){
#        Write-Host 'O sudoku não está resolvido! Deseja reiniciar?'                    
#    }
#}