Out-Null
Clear-Host
$data = ''

$teste = @(
    @(1, 2, 3),
    @(4, 5, 6),
    @(7, 8, 9)
)

for(($i = 0); ($i -lt 3); ($i++)){
    for(($j = 0); ($j -lt 3); ($j++)){
        $data += $teste[$i][$j]
    }
}

Write-Host $data

#$coluna = 0
#
#$semx = Get-Random -Maximum 3
#$semy = Get-Random -Maximum 3
#
#Write-Host $semx
#Write-Host $semy
#
#
#
## Criar uma matriz 3x3
#$matriz = @(
#    @(1, 2, 3),
#    @(4, 5, 6),
#    @(7, 8, 9)
#)
#
#$matriz[$semx][$semy] = " "
#
#for ($linha = 0; $linha -lt $matriz.Length; $linha++){
#    Write-Host "$($matriz[$linha][$coluna]) $($matriz[$linha][$coluna+1]) $($matriz[$linha][$coluna+2])"
#}