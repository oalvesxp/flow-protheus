#Include 'Protheus.ch'
#Include 'Parmtype.ch'

/*/{Protheus.doc} User Function AdvNum
    Jogo de adivinhar numero.
    @type  Function
    @author user
    @since 11/03/2024
    @version 1.0
    /*/
User Function AdvNum()
    Local nNumero := 50
    Local nAposta := 0

    while nNumero != nAposta
        nNumero := Val(FwInputBox('Escolha um n�mero [1 - 100]',''))
        if nAposta == nNumero
            MsgInfo('Voc� acertou: <b>' + cValToChar(nNumero) + '</b>', 'Fim de jogo.')
        
        elseif nAposta > nNumero
            MsgInfo('Valor alto!', 'Tente novamente...')
        
        else
            MsgInfo('Valor baixo!', 'Tente novamente...')
        
        endif
    end
Return 
