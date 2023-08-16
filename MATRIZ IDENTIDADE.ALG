algoritmo "semnome"
var
   c, i: inteiro
   mID: vetor [1..6, 1..6] de inteiro
inicio
   Para i <- 1 ate 6 faca
      para c <- 1 ate 6 faca
      se (i = c) entao
         mID[i,c] <- 1
      senao
         mID[i,c] <- 0
      fimse
      fimpara
   fimpara
   
   Para i <- 1 ate 6 faca
        Para c <- 1 ate 6 faca
             Escreva(mID[i,c])
        fimpara
          Escreval()
   fimpara
fimalgoritmo