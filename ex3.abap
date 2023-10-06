REPORT ZPROG_EX3_05.
*3. Faça um algoritmo para ler: quantidade atual em estoque, quantidade máxima em
*estoque e quantidade mínima em estoque de um produto. Calcular e escrever a
*quantidade média ((quantidade média = quantidade máxima + quantidade mínima) / 2).
*Se a quantidade em estoque for maior ou igual
*a quantidade média escrever a mensagem 'Não efetuar compra', senão escrever a
*mensagem 'Efetuar compra'.
*a. Criar uma tela  de seleção com PARAMETERS para entrada de dados
*b. A tela deve ter os elementos de textos corretamente escritos

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: qtdEstoq TYPE i,
              qtdMax TYPE i,
              qtdMin TYPE i.
SELECTION-SCREEN END OF BLOCK b1.
DATA: qtdMed TYPE i.
      qtdMed = ( qtdMax + qtdMin ) / 2 .
IF qtdEstoq >= qtdmed.
  WRITE: 'Não efetuar compra'.
ELSE.
  WRITE:'Efetuar compra'.
ENDIF.