algoritmo "Fatorial"
var
N, F:inteiro
inicio
Funcao Fatorial(A: inteiro):inteiro
Var C, R: inteiro
inicio
      R <- 1
      Para C <- 1 ate A faca
           R <- R * C
      Fimpara
      Retorne R
Fimfuncao
      Escreva("Digite um n�mero: ")
      Leia(N)
      F <- Fatorial(N)
      Escreva("Seu n�mero �",N,"! fatorial",F)
fimalgoritmo