#Include 'Protheus.ch'

/*/{Protheus.doc} User Function AdvNum
    Jogo de adivinhar numero.
    @type  Function
    @author user
    @since 11/03/2024
    @version 1.0
    /*/
User Function AdvNum()
    Local nNumero := Randomize(1,100)
    Local nAposta := 0

    While nAposta != nNumero
        nAposta := Val(FwInputBox('Teste',''))
        If nAposta == nNumero
            msgInfo('Você acertou! - <b>'+cValtoChar(nAposta)+'</b>','Fim de jogo.')
        ElseIf nAposta > nNumero
           msgAlert('Valor muito alto!','Tente novamente...')
        ElseIf nAposta < nNumero
           msgAlert('Valor muito baixo!','Tente novamente...') 
        EndIf
    End
Return 
