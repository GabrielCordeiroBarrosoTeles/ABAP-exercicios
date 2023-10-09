REPORT ZPROG_EX11_05.

*11. As organizações CSM resolveram dar um aumento de salário aos seus colaboradores e
*lhe contrataram para desenvolver o programa que calculará os reajustes.
*Faça um programa que recebe o salário de um colaborador e calcule o reajuste segundo
*o seguinte critério, baseado no salário atual;
*• Salários até R$ 280,00 (incluindo): aumento de 20%;
*• Salários entre R$ 280,00 e R$700,00: aumento de 15%;
*• Salários entre R$ 700,00 e R$ 1500,00: aumento de 10%;
*• Salários de R$ 1500,00 em diante: aumento de 5%
*Após o aumento ser realizado; informe na tela;
*• O salário antes do reajuste;
*• O percentual de aumento aplicado;
*• O valor do aumento;
*• O novo salário, após o aumento.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: sal TYPE p DECIMALS 1.
SELECTION-SCREEN END OF BLOCK b1.
DATA: por TYPE p DECIMALS 1,
      resulta TYPE p DECIMALS 1.
IF sal <= 280.
  por = ( sal * 20 ) / 100.
  resulta = sal + por.
  WRITE: 'O VALOR DO SALÁRIO ANTIGO É: ', sal,
       / 'O VALOR DO AUMENTO FOI: ' , por,
       / 'O NOVO SALÁRIO É: ' , resulta,
       / 'O AUMENTO APLICADO FOI DE 20%'.
ENDIF.

IF ( sal > 280 ) AND ( sal < 700 ).
  por = ( sal * 15 ) / 100.
  resulta = sal + por.
  WRITE: 'O VALOR DO SALÁRIO ANTIGO É: ', sal,
       / 'O VALOR DO AUMENTO FOI: ' , por,
       / 'O NOVO SALÁRIO É: ' , resulta,
       / 'O AUMENTO APLICADO FOI DE 15%'.
ENDIF.

IF ( sal >= 700 ) AND ( sal < 1500 ).
  por = ( sal * 10 ) / 100.
  resulta = sal + por.
  WRITE: 'O VALOR DO SALÁRIO ANTIGO É: ', sal,
       / 'O VALOR DO AUMENTO FOI: ' , por,
       / 'O NOVO SALÁRIO É: ' , resulta	,
       / 'O AUMENTO APLICADO FOI DE 10%'.
ENDIF.

IF sal >= 1500.
por = ( sal * 5 ) / 100.
resulta = sal + por.
WRITE: 'O VALOR DO SALÁRIO ANTIGO É: ', sal,
     / 'O VALOR DO AUMENTO FOI: ' , por,
     / 'O NOVO SALÁRIO É: ' , resulta,
     / 'O AUMENTO APLICADO FOI DE 5%'.
ENDIF.