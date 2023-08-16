algoritmo "semnome"
var
   m: vetor [1..4, 1..4] de inteiro
   media4l, somatot, prod2l, somadp, maior3c, l, c: inteiro
   mediatot: real
inicio
      somadp <- 0
      prod2l <- 1
      maior3c <- 0
      mediatot <- 0
      media4l <- 0
   Para l <- 1 ate 4 faca
      para c <- 1 ate 4 faca
         Escreval("QUAL NUMERO DESEJA INSERIR NA POSIÇÃO [",l,",",c," ]")
         leia(m[l,c])
      fimpara
   fimpara

   para l <- 1 ate 4 faca
      para c <-  1 ate 4 faca
         somatot <- m[l,c] + somatot
         Se (l = c) entao
            somadp <- m[l,c] + somadp
         fimse
         Se (l = 2) entao
            prod2l <- m[l,c] * prod2l
         fimse
         Se (m[l,3] > maior3c) entao
            maior3c <- m[l,3]
         fimse
      fimpara
   fimpara

   para l <- 1 ate 4 faca
      para c <-  1 ate 4 faca
           Escreva (m[l,c]: 4)
      fimpara
      escreval()
   fimpara

   mediatot <- somatot/16

   para c <- 1 ate 4 faca
        Se (m[4,c] > mediatot) entao
           media4l <- media4l + 1
        fimse
   fimpara

   Escreval("A SOMA DE TODOS OS VALORES DA MATRIZ É:", somatot)
   Escreval("NÚMEROS QUE ULTRAPASSAM A MÉDIA NA 4 COLUNA:", media4l)
   Escreval("A MEDIA DE TODOS OS VALORES DA MATRIZ É:", mediatot:4:1)
   Escreval("O PRODUTO DOS VALORES DA SEGUNDA LINHA É:", prod2l)
   Escreval("O MAIOR NUMERO DA 3 COLUNA É:", maior3c)
   Escreval("A SOMA DE TODOS OS VALORES DA D. PRINCIPAL É:", somadp)
fimalgoritmo