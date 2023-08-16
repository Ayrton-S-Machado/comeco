algoritmo "CINEMA"
var
   i, letr: caractere
   c, ca, j, k, l: inteiro
   Ncad:vetor [1..10] de inteiro
   Lcad:vetor [1..10] de caractere
inicio
   para k <- 1 ate 10 faca
      Ncad[k] <- k
   fimpara
   i <- "S"
   enquanto (i = "S") faca
      para c <- 1 ate 10 faca
         Se (Ncad[c] = 11) entao
            Escreva ("[",Lcad[c],"]")
         senao
            Escreva("[B",c,"] ")
         fimse
      fimpara
      Escreval("")
      escreval("-------------------------------------------------------------")
      Escreva("RESERVAR A CADEIRA: B")
      leia(ca)
              Se (ca > 10) entao
                 Escreval("Não existe o acento ", ca)
                 fimalgoritmo
              fimse
         Se (Lcad[ca] = "---") entao
           Escreval("ERRO: Este lugar não está disponível.")
         senao
           Escreval("CADEIRA B", ca, " RESERVADA!")
           fimse
      para l <- 1 ate 10 faca
         Se (ca = Ncad[l]) entao
            Ncad[l] <- 11
         fimse

         Se (Ncad[l] = 11) entao
            Lcad[l] <- "---"
         fimse
         fimpara
      Escreva("QUER RESERVAR OUTRO? [S/N]: ")
      leia(i)
      limpatela
   fimenquanto
fimalgoritmo