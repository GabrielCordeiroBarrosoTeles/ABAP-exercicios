REPORT ZPROG_EX6_05.
*6. Faça um programa para a leitura de duas notas parciais de um aluno.
*• A mensagem “Aprovado”, se a média alcançada for maior ou igual a sete;
*• A mensagem “Aprovado com Distinção”, se a média for igual a dez;
*• A mensagem “Reprovado” se a média for menor de do que sete;
*o Criar uma tela de seleção com PARAMETERS para entrada de dados
*o A tela deve ter os elementos de textos corretamente escritos
SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: n1 TYPE p,
            n2 TYPE p.
SELECTION-SCREEN END OF BLOCK b1.

DATA: med TYPE p DECIMALS 1.

med = ( n1 + n2 ) / 2.

IF ( med = 10 ).
  WRITE: 'Aprovado com Distinção'.
  WRITE: med.

ELSEIF ( med > 7 ).
  WRITE: 'Aprovado'.
  WRITE: med.
ENDIF.

IF ( med <= 7 ).
  WRITE: 'Reprovado'.
  WRITE: med.
ENDIF.