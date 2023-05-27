programa
{
	
	funcao inicio()
	{     
         //Declaraçães das Variáveis do banco boladão
	
   	     cadeia nome
          inteiro numConta, numAgencia, numVerficador, primeiraOpcaoDeposito
          real depositoccmenu, contacorrentesaque, depositocpmenu, contapoupancasaque
          real contacorrente = 0, contapoupanca = 0 
          logico menu = verdadeiro

         //Entrada de dados
          
          escreva("Olá, Bem-vindo ao banco!")
           escreva("\nPrimeiro digite seu nome para a criação: ")
           leia(nome)
              escreva("Digite o número da sua conta: \n")
              leia(numConta)
                escreva("Digite a Agência: ")
                leia(numAgencia)
                    escreva("Digite o digito verificador da sua conta:")
                    leia(numVerficador)

        //Opção do primeiro depósito usando o "SE".

          escreva("Você deseja fazer o primeiro depósito? \n")
          escreva("1 - sim\n")
          escreva("2 - não \n")
          leia(primeiraOpcaoDeposito)
          limpa()
          se (primeiraOpcaoDeposito == 1){

              escreva("Qual será o valor do primeiro depósito?  R$ ")
              leia(contacorrente) limpa()
              escreva("Valor depositado!")
                                          } 

          //Criação do menu usando as escolhas.
          
          faca{
          	inteiro menuusuario 
               escreva("\n  _______________________________________\n")
		  	escreva(" |   SELECIONE UMA OPÇÃO:                |\n")        
          	escreva(" |1 - Exibir dados da conta              |\n")
          	escreva(" |2 - Depositar na conta corrente        |\n")
          	escreva(" |3 - Aplicar na conta poupança          |\n")
          	escreva(" |4 - Sacar da poupança                  |\n")
          	escreva(" |5 - Sacar da conta corrente            |\n")
          	escreva(" |0 - Sair                               |\n")
		  	escreva(" |_______________________________________|")
          	leia(menuusuario)
               limpa()
			
           escolha (menuusuario){
               	
           //Utilizando condições nos casos "3","4" e "5" dentro das escolhas
           caso 1:
           	      escreva("\n")
                     escreva("================================DADOS DA CONTA===============================:")
               	 escreva("\nNúmero da conta Corrente: "+ numConta +"-"+numVerficador) escreva("\t\tNúmero da conta Poupança: " + numConta +"-"+(numVerficador+1) )   
              		 escreva("\nAgência: " + numAgencia)   
               	 escreva("\nNome: "+ nome)            
              		 escreva("\nValor na conta corrente: "+"R$"+ contacorrente)     escreva("\t\tValor na conta poupança: " +"R$"+ contapoupanca)     
              		 escreva("\n")
           pare	                
           caso 2:
                     escreva("Deposite o valor na conta corrente: R$ ") 
                     leia(depositoccmenu) limpa()
                     escreva("Valor Depositado!")
                     contacorrente = depositoccmenu + contacorrente
                     escreva("\nDepósito realizado com sucesso!")
           pare
           caso 3:
                     escreva("Qual valor depositar na poupança?  R$ ")//LÁ ELE MIL VEZES KKK
                     leia(depositocpmenu)
                     limpa()
                     escreva("Valor Depositado!")

                     se (depositocpmenu <= contacorrente){
               	     contacorrente = contacorrente - depositocpmenu
                         contapoupanca = contapoupanca + depositocpmenu
               	                                     }
                     senao{escreva("\nSaldo insuficiente!\n")}
           pare
           caso 4:
                     escreva("Qual valor sacar da poupança?   R$ ")
                     leia(contapoupancasaque)
                     limpa()
                     escreva("Valor sacado!")
                     se (contapoupancasaque <= contapoupanca){contapoupanca = contapoupanca - contapoupancasaque}
                     senao{escreva("Saldo insuficiente!\n")}
           pare 
           caso 5:
                     escreva("Qual valor a ser sacado da conta corrente?  R$ ")
                     leia(contacorrentesaque)
                     escreva("Valor sacado!")
                     se (contacorrentesaque <= contacorrente){contacorrente = contacorrente - contacorrentesaque} 
                     senao{escreva("\nSaldo insufuciente!\n")}
          pare
	     caso 0:
		   	      menu = falso 
          pare
				                   }
          	}

         //Saída do menu
         
         enquanto(menu == verdadeiro)
                      escreva("\nVocê saiu do banco!")


           //Fim do código. 
	 }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3368; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contacorrente, 11, 15, 13}-{contapoupanca, 11, 34, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */