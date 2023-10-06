REPORT ZPROG_EX4_05.
*4. Escreva um algoritmo para ler o número total de eleitores de um município, o número de
*votos brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa
*em relação ao total de eleitores.
*a. Criar uma tela de seleção com PARAMETERS para entrada de dados
*b. A tela deve ter os elementos de textos corretamente escritos


SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE TEXT-001.
PARAMETERS: qtdEleit TYPE i,
            vBranc TYPE p,
            vNulos TYPE p,
            vValid TYPE p.
SELECTION-SCREEN END OF BLOCK b1.
DATA: pr_bran TYPE p DECIMALS 1,
      pr_nulos TYPE p DECIMALS 1,
      pr_valid  TYPE p DECIMALS 1.

pr_bran = ( vBranc * 100 ) / qtdEleIt.
pr_nulos = ( vNulos * 100 ) / qtdEleIt.
pr_valid = ( vValid * 100 ) / qtdEleIt.

WRITE: 'A quantidade de votos em branco foi:',pr_bran,
       /'A quantidade de votos nulos foi:   ',pr_nulos,
       /'A quantidade de votos validos foi: ',pr_valid.