REPORT ZPROG_EX2_05.
*2. A jornada de trabalho semanal de um funcionário é de 40 horas. O funcionário que
*trabalhar mais de 40 horas receberá hora extra, cujo cálculo é o valor da hora regular
*com um acréscimo de 50%. Escreva um algoritmo que leia o número de horas trabalhadas
*em um mês, o salário por hora e escreva o salário total do funcionário, que deverá ser
*acrescido das horas extras, caso tenham sido trabalhadas (considere que o mês possua
*4 semanas exatas)
*a. Criar uma tela de seleção com PARAMETERS para entrada de dados
*b. A tela deve ter os elementos de textos corretamente escritos

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: hs_trab TYPE i,
              v_hora TYPE p.
SELECTION-SCREEN END OF BLOCK b1.
DATA: salario TYPE p DECIMALS 1.

IF hs_trab >= 160.
  salario = ( ( ( 160 ) * v_hora ) + ( ( ( hs_trab - 160 ) * v_hora )  * '0.5' ) ).
ELSE.
 salario = ( hs_trab ) * v_hora.
ENDIF.
WRITE: 'Seu salario é de',salario.