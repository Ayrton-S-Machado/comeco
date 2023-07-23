algoritmo "TORNEIO DE FUTEBOL"
var
aux:caractere
c, c1: inteiro
vet: vetor[1..3]de caractere
Procedimento topo()
inicio
      Escreval("-----------------------")
      Escreval(" CAMPEONATO DE FUTEBOL ")
      Escreval("-----------------------")
fimprocedimento
inicio
       topo()
      para c <- 1 ate 3 faca
           escreva("QUAL É O", c ,"° TIME?: ")
           leia(vet[c])
      fimpara
      limpatela
      topo()
             para c <- 1 ate 3 faca
                  para c1 <- 1 ate 3 faca
                  Se (vet[c] <> vet[c1]) entao
                       Escreval(vet[c]:15, "[] X []":15, vet[c1])
                       fimse
                  fimpara
             fimpara
fimalgoritmo