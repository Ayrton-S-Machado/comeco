algoritmo "semnome"
var
vit: caractere
j, l, c, i, k, posix, posi0, cvitx, cvit0: inteiro
vel: vetor [1..3, 1..3] de inteiro
posi: vetor [1..9] de inteiro
inicio
Procedimento jogo()
inicio
      i <- 1
      Escreval("--- + --- + ---")
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                vel[l,c] <- i
                escreva("| ", vel[l,c]:2, "|")
                i <- i + 1
           fimpara
           escreval()
         escreva("--- + --- + ---")
         escreval()
      fimpara
fimprocedimento

procedimento condicivitx()
inicio
          cvitx <- 0
          para l <- 1 ate 3 faca
se (vel[l, 1] = 23) e (vel[l, 2] = 23) e (vel[l, 3] = 23) entao
cvitx <- cvitx + 3
fimse
          fimpara
      Se (cvitx = 3) entao
         Escreval("PARABÉNS! O [X] VENCEU")
         fimalgoritmo
      fimse

            cvitx <- 0
se (vel[1, 3] = 23) e (vel[2, 2] = 23) e (vel[3, 1] = 23) entao
cvitx <- cvitx + 3
fimse
      Se (cvitx = 3) entao
         Escreval("PARABÉNS! O [X] VENCEU")
         fimalgoritmo
      fimse


                 cvitx <- 0
          para l <- 1 ate 3 faca
               para c <- 1 ate 3 faca
                    se (vel[l,c] = 23) e (l = c) entao
                       cvitx <- cvitx + 1
                    fimse
               fimpara
          fimpara
                 Se (cvitx = 3) entao
                   Escreval("PARABÉNS! O [X] VENCEU")
                   fimalgoritmo
                 fimse
                
                
                cvitx <- 0
          para c <- 1 ate 3 faca
se (vel[1, c] = 23) e (vel[2, c] = 23) e (vel[3, c] = 23) entao
cvitx <- cvitx + 3
fimse
         fimpara
               Se (cvitx = 3) entao
                 Escreval("PARABÉNS! O [X] VENCEU")
                 fimalgoritmo
               fimse
fimprocedimento

procedimento condicivit0()
inicio
          cvit0 <- 0
          para l <- 1 ate 3 faca
se (vel[l, 1] = 32) e (vel[l, 2] = 32) e (vel[l, 3] = 32) entao
cvit0 <- cvit0 + 3
fimse
         fimpara
      Se (cvit0 = 3) entao
         Escreval("PARABÉNS! O [0] VENCEU")
         fimalgoritmo
      fimse
      
      
      cvit0 <- 0
se (vel[3, 1] = 32) e (vel[2, 2] = 32) e (vel[1, 3] = 32) entao
cvit0 <- cvit0 + 3
fimse
      Se (cvit0 = 3) entao
         Escreval("PARABÉNS! O [0] VENCEU")
         fimalgoritmo
      fimse

                 
          cvit0 <- 0
          para l <- 1 ate 3 faca
                 para c <- 1 ate 3 faca
                    se (vel[l,c] = 32) e (l = c) entao
                       cvit0 <- cvit0 + 1
                    fimse
               fimpara
          fimpara
                 Se (cvit0 = 3) entao
                    Escreval("PARABÉNS! O [0] VENCEU")
                    fimalgoritmo
                 fimse
                 
                 
                 cvit0 <- 0
          para c <- 1 ate 3 faca
se (vel[1, c] = 32) e (vel[2, c] = 32) e (vel[3, c] = 32) entao
cvit0 <- cvit0 + 3
fimse
          fimpara
                 Se (cvit0 = 3) entao
                    Escreval("PARABÉNS! O [0] VENCEU")
                    fimalgoritmo
                 fimse
fimprocedimento
     
procedimento jogo0()
inicio

     Escreval("VAI JOGAR O [0] EM QUAL POSIÇÃO?")
      leia(posi0)
     

            se (posi[posi0] > 10) entao
               repita
                  Escreval("JOGADA INVÁLIDA! TENTE NOVAMENTE")
                  Escreval("VAI JOGAR O [0] EM QUAL POSIÇÃO?")
                  leia(posi0)
               ate (posi[posi0] < 10)
            fimse


          para i <- 1 ate 9 faca
            se (posi0 = posi[i]) entao
               posi[i] <- posi[i] + 10
            fimse
     fimpara

          limpatela

              para l <- 1 ate 3 faca
                   para c <- 1 ate 3 faca
             se (posi0 = vel[l, c]) entao
                       vel[l,c] <- 32
             fimse
                   fimpara
              fimpara
      Escreval("--- + --- + ---")
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                 j <- 0
                se (vel[l,c] = 23) entao
                   escreva("|  X|")
                   j <- 1
                fimse
                se (vel[l,c] = 32) entao
                 escreva("|  0|")
                  j <- 1
                   fimse
                se (j < 1) entao
                    escreva("| ", vel[l,c]:2, "|")
                fimse
           fimpara
           escreval()
         escreva("--- + --- + ---")
         escreval()
      fimpara
fimprocedimento
     
procedimento jogox()
inicio
      Escreval("VAI JOGAR O [X] EM QUAL POSIÇÃO?")
      leia(posix)


            se (posi[posix] > 10) entao
               repita

                  Escreval("JOGADA INVÁLIDA! TENTE NOVAMENTE")
                  Escreval("VAI JOGAR O [0] EM QUAL POSIÇÃO?")
                  leia(posix)
               ate (posi[posix] < 10)
            fimse


          para i <- 1 ate 9 faca
            se (posix = posi[i]) entao
               posi[i] <- posi[i] + 10
            fimse
     fimpara
     
     limpatela
     
     para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
           
                se (posix = vel[l,c]) entao
                   vel[l,c] <- 23
                fimse
           fimpara
      fimpara
      Escreval("--- + --- + ---")
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                 j <- 0
                se (vel[l,c] = 23) entao
                   escreva("|  X|")
                   j <- 1
                fimse
                     se (vel[l,c] = 32) entao
                        escreva("|  0|")
                        j <- 1
                    fimse
                         se (j < 1) entao
                            escreva("| ", vel[l,c]:2, "|")
                         fimse
           fimpara
           escreval()
         escreva("--- + --- + ---")
         escreval()
      fimpara
fimprocedimento
               para i <- 1 ate 9 faca
                    posi[i] <- i
               fimpara
     jogo()
     k <- 0
     enquanto k < 9 faca
           jogox()
           condicivitx()
           k <- k + 2
           se (k < 9) entao
           jogo0()
           condicivit0()
           fimse
     fimenquanto
     Escreval("VELHA!")
     
fimalgoritmo