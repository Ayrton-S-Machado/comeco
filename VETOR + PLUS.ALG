algoritmo "vetor + plus"
var
nome: vetor[1..4]de caractere
n1: vetor[1..4]de inteiro
n2: vetor[1..4]de inteiro
c: inteiro
media: vetor[1..4]de real
r: inteiro
a: inteiro
inicio
      Para c <- 1 ate 4 faca
          Escreva("ESCREVA O NOME DO", c, "° ALUNO: ")
          leia(nome[c])
          Escreva("ESCREVA A PRIMEIRA NOTA DESTE ALUNO: ")
          leia(n1[c])
          Escreva("ESCREVA A SEGUNDA NOTA DESTE ALUNO: ")
          leia(n2[c])
          limpatela
      fimpara
     para c <- 1 ate 4  faca
                media[c] <- (n1[c]+n2[c])/2
     fimpara
            Escreval("LISTAGEM DE ALUNOS")
            Escreval("--------------------")
      Para c <- 1 ate 4 faca
      Escreval("ALUNO: ", maiusc(nome[c]):15," MÉDIA:", media[c]:5:1)
                  Se (media[c] > 6) entao
                     Escreval("CONGRATULATIONS!")
                     Escreval(" ")
                     a <- a + 1
                     senao
                     Escreval("CASA TOMBOU ZÉ!")
                     Escreval(" ")
                     r <- r + 1
                  fimse
      fimpara
             Escreval("APROVADOS: ", a)
             Escreval("REPROVADOS: ", r)
fimalgoritmo