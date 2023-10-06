REPORT ZPROG_EX5_05.
*5. Faça um programa que leia três números, verifique (usando if e else) e mostre o maior e
*o menor deles;
*a. Criar uma tela de seleção com PARAMETERS para entrada de dados
*b. A tela deve ter os elementos de textos corretamente escritos

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: n1 TYPE i,
              n2 TYPE i,
              n3 TYPE i.
SELECTION-SCREEN END OF BLOCK b1.
DATA: maior TYPE i,
      menor TYPE i.
IF ( n1 >= n2 ) AND ( n1 >= n3 ).
maior = n1.
ELSEIF ( n2 >= n1 ) AND ( n2 >= n3 ).
maior = n2.
ELSEIF ( n3 >= n1 ) AND ( n3 >= n1 ).
 maior = n3.
ENDIF.

IF ( n1 <= n2 ) AND ( n1 <= n3 ).
menor = n1.
ELSEIF ( n2 <= n1 ) AND ( n2 <= n3 ).
menor = n2.
ELSEIF ( n3 <= n1 ) AND ( n3 <= n1 ).
 menor = n3.
ENDIF.

WRITE: 'Maior ',maior,
       /'Menor',menor.