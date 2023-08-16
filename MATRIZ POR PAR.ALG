algoritmo "semnome"
var
   c, i: inteiro
   mat: vetor [1..3, 1..3] de inteiro
inicio
      Para i <- 1 ate 3 faca
           para c <- 1 ate 3 faca
      Escreval("DIGITE O NÚMERO PARA A POSIÇÃO [",i,",",c," ]")
      leia(mat[i,c])
           fimpara
      fimpara
      
            Para i <- 1 ate 3 faca
           para c <- 1 ate 3 faca
           Se (mat[i,c]%2=0) entao
      ESCREVA("{",mat[i,c],"}")
      senao
      Escreva(mat[i,c])
           fimse
           fimpara
           escreval()
      fimpara
fimalgoritmo