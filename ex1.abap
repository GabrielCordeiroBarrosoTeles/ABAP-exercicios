REPORT ZPROG_EX1_05.
*1. Escreva um algoritmo que armazene o valor 10 em uma variável A e o valor 20 em uma
*variável B. A seguir (utilizando apenas atribuições entre variáveis) troque os seus
*conteúdos fazendo com que o valor que está em A passe para B e vice-versa. Ao final,
*escrever os valores que ficaram armazenados nas variáveis.
*a. Não tem tela de seleção
 DATA:  lv_C TYPE i,
        lv_A TYPE i,
        lv_B TYPE i.
lv_A = 10.
lv_B = 20.
*Trocando os valores
lv_C = lv_A.
lv_A = lv_B.
lv_B = lv_C.
*Imprimir os valores trocados
WRITE:'O valor do A é:',lv_A.
WRITE:/ 'O valor do B é:',lv_B.