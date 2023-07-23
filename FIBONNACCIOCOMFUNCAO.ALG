algoritmo "Fibonnacciocomfuncao"
var
T1, T2, T3, C: inteiro
inicio
funcao fibonnacci(var A, B: inteiro): inteiro
var
R: inteiro
inicio
      R <- A + B
      A <- B
      B <- R
      Retorne R
fimfuncao
         T1 <- 0
         T2 <- 1
         Para C <- 1 ate 13 faca
         T3 <- fibonnacci(T1, T2)
         Escreva(T3)
         Fimpara
fimalgoritmo