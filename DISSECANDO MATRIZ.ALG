algoritmo "DISSECANDO MATRIZ(acabar)"
var
   m: vetor [1..4, 1..4] de inteiro
   l, c, i, j, opc: inteiro
inicio

Procedimento mat()
inicio
   para l <- 1 ate 4 faca
        para c <-  1 ate 4 faca
             Escreva(m[l,c]:5)
        fimpara
      escreval()
   fimpara
fimprocedimento

Procedimento tsup()
var
msup: vetor [1..4, 1..4] de inteiro
inicio
      para l <- 1 ate 4 faca
           para c <-  1 ate 4 faca
             msup[l,c] <- m[l,c]
           fimpara
      fimpara
      Escreval()
      para c <- 1 ate 4 faca
           para l <- c ate 4 faca
                msup[l, c] <- 965
           fimpara
   fimpara
   para l <- 1 ate 4 faca
        para c <-  1 ate 4 faca
             Se (msup[l, c] = 965) entao
                Escreva("     ")
                Senao
             Escreva(msup[l, c]:5)
             fimse
        fimpara
      escreval()
   fimpara
fimprocedimento


Procedimento tinf()
var
   minf: vetor [1..4, 1..4] de inteiro
inicio
      para l <- 1 ate 4 faca
           para c <-  1 ate 4 faca
             minf[l,c] <- m[l,c]
           fimpara
      fimpara
      escreval()
      para l <- 1 ate 4 faca
           para c <- l ate 4 faca
                minf[l, c] <- 569
           fimpara
   fimpara
   
      para l <- 1 ate 4 faca
        para c <-  1 ate 4 faca
            Se (minf[l, c] = 569) entao
               Escreva("     ")
               Senao
             Escreva(minf[l, c]:5)
            fimse
        fimpara
      escreval()
   fimpara
fimprocedimento

Procedimento diag()
var
mdi: vetor [1..4, 1..4] de inteiro
inicio
      Para l <- 1 ate 4 faca
           para c <- 1 ate 4 faca
           mdi[l, c] <- m[l, c]
           fimpara
      fimpara
      
      Para l <- 1 ate 4 faca
           para c <- 1 ate 4 faca
                Se (l = c) entao
                   mdi[l, c] <- 695
                fimse
                Se (mdi[l, c]) = 695 entao
                   mdi[l, c] <- m[l, c]
                   Escreva(mdi[l, c]:5)
                   senao
                   Escreva("     ")
                fimse
           fimpara
           Escreval()
      fimpara
fimprocedimento

Procedimento menu()
inicio
      Escreval(" MENU DE OPÇÕES")
      Escreval("=================")
      Escreval("[1] MOSTRAR MATRIZ")
      Escreval("[2] MOSTRAR DIAGONAL PRINCIPAL")
      Escreval("[3] MOSTRAR TRIÂNGULO SUPERIOR")
      Escreval("[4] MOSTRAR TRIÂNGULO INFERIOR")
      Escreval("[5] SAIR")
      Escreval("====== OPÇÃO")
      leia(opc)
      limpatela
      escolha opc
      caso 1
      mat()
      caso 2
      diag()
      caso 3
      tsup()
      caso 4
      tinf()
      caso 5
      Escreva("ENCERRANDO..")
      fimalgoritmo
      fimescolha

fimprocedimento

   Para l <- 1 ate 4 faca
      para c <- 1 ate 4 faca
         Escreval("QUAL NUMERO DESEJA INSERIR NA POSIÇÃO [",l,",",c," ]")
         leia(m[l,c])
      fimpara
   fimpara
       limpatela
       repita
       menu()
       ate opc = 5
fimalgoritmo