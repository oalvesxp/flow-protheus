#Include 'Protheus.ch'

/*/{Protheus.doc} User Function AdvNum
    Jogo de adivinhar numero.
    @type  Function
    @author user
    @since 11/03/2024
    @version 1.0
    /*/
User Function AdvNum()
    Local nNumero    := Randomize(1,100)
    Local nAposta    := 0
    Local nTentativa := 0

    While nAposta != nNumero
        nAposta := Val(FwInputBox('Escolha um número de [1-100]:',''))
        If nAposta == nNumero
            msgInfo('Você acertou! - <b>'+cValtoChar(nAposta)+;
            '</b> Com <b>'+cValToChar(nTentativa)+'</b> tentativas.','Fim de jogo.')
        ElseIf nAposta > nNumero
           msgAlert('Valor muito alto!','Tente novamente...')
           nTentativa++
        ElseIf nAposta < nNumero
           msgAlert('Valor muito baixo!','Tente novamente...')
           nTentativa++
        EndIf
    End
Return 
