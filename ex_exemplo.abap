REPORT zprog_003_00.

TABLES: zprodutos_00,  "Referência para a tabela Z de produtos
        zvendas_00.    "Referência para a tabela Z de vendas

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.

PARAMETERS: p_data TYPE sy-datum,
            p_num  TYPE i,
            p_nome TYPE c LENGTH 30.

SELECTION-SCREEN END OF BLOCK b1.

SELECTION-SCREEN BEGIN OF BLOCK b2 WITH FRAME TITLE TEXT-002.

SELECT-OPTIONS: s_prod FOR zprodutos_00-produto OBLIGATORY,
                s_prec FOR zprodutos_00-preco NO INTERVALS,
                s_vend FOR zvendas_00-venda.

SELECTION-SCREEN END OF BLOCK b2.

SELECTION-SCREEN BEGIN OF BLOCK b3 WITH FRAME TITLE TEXT-003.

SELECTION-SCREEN BEGIN OF LINE.
PARAMETERS: rb1 RADIOBUTTON GROUP rb.
            SELECTION-SCREEN COMMENT 10(30) text-004.
SELECTION-SCREEN END OF LINE.

PARAMETERS: rb2 RADIOBUTTON GROUP rb,
            rb3 RADIOBUTTON GROUP rb DEFAULT 'X'.

SKIP 2.

PARAMETERS: chk1 AS CHECKBOX,  "Maracado = 'X'
            chk2 AS CHECKBOX DEFAULT 'X',
            chk3 AS CHECKBOX.

SELECTION-SCREEN END OF BLOCK b3.

*** Evento que contém o programa a ser executado
START-OF-SELECTION.
  WRITE: / 'PARAMETROS:'.
  WRITE: / p_data, p_num, p_nome.

  SKIP 2.

  WRITE: / 'SELECT OPTIONS'.
  WRITE: / s_prod-low, '/', s_prod-high, s_prod,
         / s_prec-low,
         / s_vend-low, '/', s_vend-high.



*** EVENTO executado quando encerra o programa (após o START-OF-SELECION)
END-OF-SELECTION.
  SKIP 2.
  WRITE: / 'Fim do programa'.