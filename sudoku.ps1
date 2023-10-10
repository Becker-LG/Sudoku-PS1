Out-Null
Clear-Host

#declaração de variáveis que serão utilizadas durante o jogo -------------------------------------------------------->
$nmr
$pscx
$pscy
$cntdr = 0
$cntrl

#Listas para localização -------------------------------------------------------------------------------------------->

$matriz = @(
    @(5, 6, 9, 3, 2, 1, 8, 4, 7), #1
    @(3, 4, 8, 6, 7, 5, 9, 2, 1), #2
    @(1, 2, 7, 9, 4, 8, 5, 6 ,3), #3
    @(4, 8, 1, 2, 5, 9, 3, 7, 6), #4
    @(7, 3, 5, 4, 1, 6, 2, 8, 9), #5
    @(6, 9, 2, 8, 3, 7, 1, 5, 4), #6
    @(9, 1, 4, 5, 6, 2, 7, 3, 8), #7
    @(8, 5, 6, 7, 9, 3, 4, 1, 2), #8
    @(2, 7, 3, 1, 8, 4, 6, 9, 5)  #9
)

$local = @(
    @(" ", " ", " ", " ", " ", " ", " ", " ", " "), #1
    @(" ", " ", " ", " ", " ", " ", " ", " ", " "), #2
    @(" ", " ", " ", " ", " ", " ", " ", " ", " "), #3
    @(" ", " ", " ", " ", " ", " ", " ", " ", " "), #4
    @(" ", " ", " ", " ", " ", " ", " ", " ", " "), #5
    @(" ", " ", " ", " ", " ", " ", " ", " ", " "), #6
    @(" ", " ", " ", " ", " ", " ", " ", " ", " "), #7
    @(" ", " ", " ", " ", " ", " ", " ", " ", " "), #8
    @(" ", " ", " ", " ", " ", " ", " ", " ", " ")  #9
)

#remove um número aleatório ----------------------------------------------------------------------------------------->
$semx = Get-Random -Maximum 9
$semy = Get-Random -Maximum 9
$local[$semx][$semy] = $matriz[$semx][$semy]
$matriz[$semx][$semy] = " "

while($true){
    Out-Null
    Clear-Host

    #for (($lnh = 0), ($cln = 0); $lnh -lt $local.Length; $lnh++){
    #    Write-Host "$($local[$lnh][$cln]) $($local[$lnh][$cln+1]) $($local[$lnh][$cln+2])"
    #}

    #imprime a tabela 9x9 ----------------------------------------------------------------------------------------------->
    #pra 3x3
    #for (($lnh = 0), ($cln = 0); $lnh -lt $matriz.Length; $lnh++){
    #    Write-Host "$($matriz[$lnh][$cln]) $($matriz[$lnh][$cln+1]) $($matriz[$lnh][$cln+2])"
    #}
    
    #pra 9x9
    for (($lnh = 0), ($cln = 0); $lnh -lt $matriz.Length; $lnh++){
        Write-Host "$($matriz[$lnh][$cln])  $($matriz[$lnh][$cln+1])  $($matriz[$lnh][$cln+2])  $($matriz[$lnh][$cln+3])  $($matriz[$lnh][$cln+4])  $($matriz[$lnh][$cln+5])  $($matriz[$lnh][$cln+6])  $($matriz[$lnh][$cln+7])  $($matriz[$lnh][$cln+8])"
    }

    #recebe a posição da tabela ou os valores 0 para sair do jogo --------------------------------------------------->
    Write-Output 'Insira a posição da tabela para colocar o número.'
    Write-Output 'P.S: Insira null ("") em todas as opções para sair.'
    $pscx = Read-Host 'Insira a posição X'
    $pscy = Read-Host 'Insira a posição Y'
    $nmr = Read-Host 'Insira o número'

    #confere se ambos os valores são 0, e confere para ver se o jogador realmente quis sair. ------------------------>
    if (($pscx -eq '') -and ($pscy -eq '') -and ($nmr -eq '')){
        Write-Output 'Você está saindo do jogo.'
        $cnf = Read-Host "Tem Certeza? (S / N)"
        if ($cnf -eq "S"){
            Write-Output 'Saindo do jogo!'
            break
        }
    }

    #Confere se algum valor inválido foi digitado, e avisa caso ocorra --------------------------------------------->
    elseif (($pscx -eq 0) -or ($pscx -gt 9) -or ($pscy -eq 0) -or ($pscy -gt 9) -or ($nmr -eq 0) -or ($nmr -gt 9)){
        Write-Output 'Foi inserido algum valor inválido!'
        Write-Output 'Preste mais atenção no momento de digitar os valores.'
        Start-Sleep -Seconds 5
    }

    #vai colocar o número inserido na posição informada -------------------------------------------------------------->
    else{
        $matriz[($pscy-1)][($pscx-1)] = $nmr
        
        #confere se possui algum " " dentro da matriz
        for(($i = 0); $i -lt 3; ($i++)){
            for($j = 0; $j -lt 3; $j++){
                if ((" ") -eq ($matriz[$i][$j])){
                    $cntdr++
                    #Write-Host $j 'j' para testes
                }
                #Write-Host $i 'i' para testes
            }
        }

        #Termina o código se não tiver nenhum " " dentro da matriz
        if ($cntdr -eq 0){

            #tentativa de verificação se foi colocado de maneira certa os números

            for (($i = 0); ($i -lt 9); ($i++)){
                for(($j = 0); ($j -lt 9); ($j++)){
                    $verificar += $matriz[$i][$j]
                }
            }
            
            #for(($i = 0); ($i -lt 9); ($i++)){
            #    $verificar
            #    [String]$character = $i+1
            #    $comp = ($verificar -replace $character, "")
            #    $count = $verificar.Length - $comp.Length
            #    Write-Host $count
            #}

            #$verificar
            #$character = $i
            #$comp = ($verificar -replace $character, "")
            #$count = $verificar.Length - $comp.Length
            #Write-Host $count

            #$character = $i+1
            #$count = ($verificar.Sp)

            Write-Host $cntrl
            Write-Host "Parabéns!!! Você conseguiu completar o sudoku!!!"
            break
        }
    }
}

#criar a tabela com uma variável pra cada local, e transformar as variáveis que recebem em lista...
#o primeiro valor da lista é a posição (x ou y) e a segunda o valor
#se o segundo valor das duas for igual, é colocado em tal posição, que é o número das listas
#talvez criar 81 variáveis, mas vai ser muito trabalhoso, deve ter um jeito melhor
#vai pensando ai

#matriz multidimensional
#9 matrizes, primeiro valor é o que define em qual linha que tá

#elseif ((($pscx -eq 0) -or ($pscx -gt 9) -or ($pscy -eq 0) -or ($pscy -gt 9) -or ($nmr -eq 0) -or ($nmr -gt 9)) -eq (False))