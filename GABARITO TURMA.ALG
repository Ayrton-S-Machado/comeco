algoritmo "GABARITO TURMA"
var
nome:vetor [1..3] de caractere
c, i, j, nota: inteiro
gab: vetor[1..5] de caractere
gabAluno: vetor[1..5] de caractere
notAluno: vetor[1..3] de inteiro
media: real
inicio
procedimento topo()
inicio
      Escreval("-----------------------")
      Escreval("1. CADASTRO DO GABARITO")
      Escreval("-----------------------")
fimprocedimento
         topo()
         para c <- 1 ate 5 faca
              Escreva("Questao ", c,":")
              leia(gab[c])
         fimpara
                limpatela
         para c <- 1 ate 3 faca
              Escreval("-----------------------")
              Escreval("ALUNO ", c)
              Escreval("-----------------------")
              Escreval("")
              Escreva("NOME DO ALUNO: ")
              leia(nome[c])
              Escreval("RESPOSTAS DADAS")
                  para i <- 1 ate 5 faca
                       Escreva("Questao ", i,":")
                       leia(gabAluno[i])
                          Se (gab[i] = gabAluno[i]) entao
                             nota <- nota + 2
                          Fimse
                  fimpara
                            notAluno[c] <- nota
                            nota <- 0
              Limpatela
         fimpara
         Escreval("NOTAS FINAIS")
         Escreval("-----------------------")
         para j <- 1 ate 3 faca
         EscrevaL(maiusc(nome[j]):12,notAluno[j]:5:2)
         fimpara
         Escreval("-----------------------")
         para j <- 1 ate 3 faca
             media <- notAluno[j] + media
         fimpara
             media <- media/3
         Escreval("")
         Escreva("A MEDIA DA TURMA: ", media:4:1)
         Escreval("")
fimalgoritmo