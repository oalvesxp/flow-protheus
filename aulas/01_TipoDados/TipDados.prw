#Include 'Protheus.ch'
#Include 'Parmtype.ch'

/*/{Protheus.doc} User Function TipDados
    Tipos de dados do ADVPL:
        Numérico:   3 / 23.000 / 0.6 / 200000
        Lógico:     .T. (True) / .F. (False)
        Caractere:  "Aa"
        Data:       Date(20240310)
        Array:      ("Value 1", "Value 2", "Value 3")
        Bloco de Código: {|| nSaldo := 1, MSGALERT('Valor igual ao '+CVALTOCHAR(nSaldo))}

    @type  Function
    @author oalves
    @since 10/03/2024
    @version 1.0
    @history 11/03/2024, Osvaldo A. Neto, Correção UTF-8 nos comentários.
    /*/
User Function TipDados()
    // Variáveis
    Local nNumerica := 66
    Local lLogica := .T.
    Local cCaractere := "String"
    Local dData := DATE()
    Local aArray := {"João", "Maria", "Paulo"}
    Local bCodigo := {|| nValor := 2, MSGALERT("O valor e = "+cValToChar(nValor), '')}

    // Output
    Alert(nNumerica)
    Alert(lLogica)
    Alert(CVALTOCHAR(cCaractere))
    Alert(dData)
    Alert(aArray[2])
    EVAL(bCodigo)
    
Return 
