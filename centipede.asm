.text 

###################################################### CORES ##############################################

variaveis:
	lui $22, 0xffff #reg com endereço responsável por verificar se algo foi digitado.
	#cor roxa
	lui $16, 0x00ff
	addi $16, $16, 0x00ff
	#cor azul
	lui $9, 0x0000
	addi $9, $9, 0x00ff 
	#cor vermelha
	lui $18, 0x00ff
	#cor verde/amarelo
	lui $10, 0x00ff
	addi $10, $10, 0xff00
	#cor branca 
	lui $11, 0xffff
	addi $11, $11, 0xffff
	#cor laranja
	lui $12, 0x00ff
	addi $12, $12, 0x4500
	
	#cor preta
	lui $14, 0x0000
	
	lui $8, 0x1001 #endereço inicial
	lui $17, 0x1001 #endereço inicial utilizado para limpar o reg $8
	
###################################################### DESENHAR COGUMELO ##############################################

desenhar_cogumelos:

	jal DC1
	jal DC6
	jal DC11
	jal DC16
	jal DC21
	
	DC1:
		addi $15, $15, 7
		addi $8, $8, 9260
	DCfor1:
		beq $15, 0, DC2
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 56
		addi $15, $15, -1
		j DCfor1
	DC2:
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 9768
	DCfor2: 
		beq $15, 0, DC3
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 48
		addi $15, $15, -1
		j DCfor2
	DC3: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 10276
	DCfor3:
		beq $15, 0, DC4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 40
		addi $15, $15, -1
		j DCfor3
	DC4: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 10788
	DCfor4:
		beq $15, 0, DC5
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 40
		addi $15, $15, -1
		j DCfor4
	DC5: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 11308
	DCfor5:
		beq $15, 0, DCend
		sw $10, 0($8)
		addi $8, $8, 4
		sw $10, 0($8)
		addi $8, $8, 56
		addi $15, $15, -1
		j DCfor5
	DCend:
		jr $31
		
	DC6:	
		add $8, $0, $17
		addi $15, $15, 7
		addi $8, $8, 16428
	DCfor6:
		beq $15, 0, DC7
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 56
		addi $15, $15, -1
		j DCfor6
	DC7:
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 16936
	DCfor7: 
		beq $15, 0, DC8
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 48
		addi $15, $15, -1
		j DCfor7
	DC8: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 17444
	DCfor8:
		beq $15, 0, DC9
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 40
		addi $15, $15, -1
		j DCfor8
	DC9: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 17956
	DCfor9:
		beq $15, 0, DC10
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 40
		addi $15, $15, -1
		j DCfor9
	DC10: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 18476
	DCfor10:
		beq $15, 0, DCend2
		sw $10, 0($8)
		addi $8, $8, 4
		sw $10, 0($8)
		addi $8, $8, 56
		addi $15, $15, -1
		j DCfor10
	DCend2:
		jr $31	
	DC11:
		add $8, $0, $17
		addi $15, $15, 3
		addi $8, $8, 23656
	DCfor11:
		beq $15, 0, DC12
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 116
		addi $15, $15, -1
		j DCfor11
	DC12:
		add $8, $0, $17
		addi $15, $0, 3
		addi $8, $8, 24164
	DCfor12: 
		beq $15, 0, DC13
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 108
		addi $15, $15, -1
		j DCfor12
	DC13: 
		add $8, $0, $17
		addi $15, $0, 3 
		addi $8, $8, 24672
	DCfor13:
		beq $15, 0, DC14
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 100
		addi $15, $15, -1
		j DCfor13
	DC14: 
		add $8, $0, $17
		addi $15, $0, 3 
		addi $8, $8, 25184
	DCfor14:
		beq $15, 0, DC15
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 100
		addi $15, $15, -1
		j DCfor14
	DC15: 
		add $8, $0, $17
		addi $15, $0, 3
		addi $8, $8, 25704
	DCfor15:
		beq $15, 0, DCend3
		sw $10, 0($8)
		addi $8, $8, 4
		sw $10, 0($8)
		addi $8, $8, 116
		addi $15, $15, -1
		j DCfor15
	DCend3:
		jr $31	
 
	DC16:
		add $8, $0, $17
		addi $15, $15, 7
		addi $8, $8, 30764
	DCfor16:
		beq $15, 0, DC17
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 56
		addi $15, $15, -1
		j DCfor16
	DC17:
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 31272
	DCfor17: 
		beq $15, 0, DC18
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 48
		addi $15, $15, -1
		j DCfor17
	DC18: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 31780
	DCfor18:
		beq $15, 0, DC19
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 40
		addi $15, $15, -1
		j DCfor18
	DC19: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 32292
	DCfor19:
		beq $15, 0, DC20
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 40
		addi $15, $15, -1
		j DCfor19
	DC20: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 32812
	DCfor20:
		beq $15, 0, DCend4
		sw $10, 0($8)
		addi $8, $8, 4
		sw $10, 0($8)
		addi $8, $8, 56
		addi $15, $15, -1
		j DCfor20
	DCend4:
		jr $31
	DC21:
		add $8, $0, $17
		addi $15, $15, 7
		addi $8, $8, 38444
	DCfor21:
		beq $15, 0, DC22
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 56
		addi $15, $15, -1
		j DCfor21
	DC22:
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 38952
	DCfor22: 
		beq $15, 0, DC23
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 48
		addi $15, $15, -1
		j DCfor22
	DC23: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 39460
	DCfor23:
		beq $15, 0, DC24
		sw $9, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $11, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 40
		addi $15, $15, -1
		j DCfor23
	DC24: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 39972
	DCfor24:
		beq $15, 0, DC25
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8)
		addi $8, $8, 4
		sw $9, 0($8) 
		addi $8, $8, 40
		addi $15, $15, -1
		j DCfor24
	DC25: 
		add $8, $0, $17
		addi $15, $0, 7 
		addi $8, $8, 40492
	DCfor25:
		beq $15, 0, DCend5
		sw $10, 0($8)
		addi $8, $8, 4
		sw $10, 0($8)
		addi $8, $8, 56
		addi $15, $15, -1
		j DCfor25
	DCend5:
		add $8, $17, $0
		add $31, $0, $0
		
############################################################################################################################

#DESENHAR NAVE

desenhar_nave:
	
	sw $10, 55548($8)
	sw $10, 56060($8)
	sw $9, 56568($8)
	sw $9, 56572($8)
	sw $9, 56576($8)
	sw $11, 57080($8)
	sw $9, 57084($8)
	sw $11, 57088($8)
	sw $9, 57588($8)
	sw $11, 57592($8)
	sw $9, 57596($8)
	sw $11, 57600($8)
	sw $9, 57604($8)
	sw $9, 58100($8)
	sw $9, 58104($8)
	sw $9, 58108($8)
	sw $9, 58112($8)
	sw $9, 58116($8)
	sw $9, 58616($8)
	sw $9, 58620($8)
	sw $9, 58624($8)
	
	#contorno
	sw $14, 55552($8)
	sw $14, 55544($8)
	sw $14, 56056($8)
	sw $14, 56564($8)
	sw $14, 57076($8)
	sw $14, 57584($8)
	sw $14, 58096($8)
	sw $14, 58612($8)
	sw $14, 59124($8)
	sw $14, 59128($8)
	sw $14, 59132($8)
	sw $14, 59136($8)
	sw $14, 58628($8)
	sw $14, 58120($8)
	sw $14, 57608($8)
	sw $14, 57092($8)
	sw $14, 56580($8)
	sw $14, 56064($8)
	sw $14, 55036($8)
	
	addi $24, $8, 54524 #posição para que o tiro possa sair (uma posição a menos do que a do bico da nave).
	 

###################################################### DESENHAR CENTOPEIA ##############################################



desenhar_centopeia:
	
	#linha 1
	sw $10, 5176($8)
	sw $10, 5200($8)
	sw $10, 5224($8)
	sw $10, 5248($8)
	sw $10, 5272($8)
	sw $10, 5296($8)
	sw $10, 5320($8)
	
	#linha 2
	sw $16, 5692($8)
	sw $16, 5696($8)
	sw $16, 5716($8)
	sw $16, 5720($8)
	sw $16, 5740($8)
	sw $16, 5744($8)
	sw $16, 5764($8)
	sw $16, 5768($8)
	sw $16, 5788($8)
	sw $16, 5792($8)
	sw $16, 5812($8)
	sw $16, 5816($8)
	sw $16, 5836($8)
	sw $16, 5840($8)
	sw $11, 5844($8)
	
	#linha 3
	sw $16, 6200($8)
	sw $16, 6204($8)
	sw $16, 6208($8)
	sw $16, 6212($8)
	sw $16, 6224($8)
	sw $16, 6228($8)
	sw $16, 6232($8)
	sw $16, 6236($8)
	sw $16, 6248($8)
	sw $16, 6252($8)
	sw $16, 6256($8)
	sw $16, 6260($8)
	sw $16, 6272($8)
	sw $16, 6276($8)
	sw $16, 6280($8)
	sw $16, 6284($8)
	sw $16, 6296($8)
	sw $16, 6300($8)
	sw $16, 6304($8)
	sw $16, 6308($8)
	sw $16, 6320($8)
	sw $16, 6324($8)
	sw $16, 6328($8)
	sw $16, 6332($8)
	sw $16, 6344($8)
	sw $16, 6348($8)
	sw $16, 6352($8)
	sw $16, 6356($8)
	
	#linha 4
	sw $16, 6712($8)
	sw $16, 6716($8)
	sw $16, 6720($8)
	sw $16, 6724($8)
	sw $16, 6736($8)
	sw $16, 6740($8)
	sw $16, 6744($8)
	sw $16, 6748($8)
	sw $16, 6760($8)
	sw $16, 6764($8)
	sw $16, 6768($8)
	sw $16, 6772($8)
	sw $16, 6784($8)
	sw $16, 6788($8)
	sw $16, 6792($8)
	sw $16, 6796($8)
	sw $16, 6808($8)
	sw $16, 6812($8)
	sw $16, 6816($8)
	sw $16, 6820($8)
	sw $16, 6832($8)
	sw $16, 6836($8)
	sw $16, 6840($8)
	sw $16, 6844($8)
	sw $16, 6856($8)
	sw $16, 6860($8)
	sw $16, 6864($8)
	sw $16, 6868($8)
	
	#linha 5
	sw $16, 7228($8)
	sw $16, 7232($8)
	sw $16, 7252($8)
	sw $16, 7256($8)
	sw $16, 7276($8)
	sw $16, 7280($8)
	sw $16, 7300($8)
	sw $16, 7304($8)
	sw $16, 7324($8)
	sw $16, 7328($8)
	sw $16, 7348($8)
	sw $16, 7352($8)
	sw $16, 7372($8)
	sw $16, 7376($8)
	sw $11, 7380($8)
	
	#linha 6
	sw $10, 7736($8)
	sw $10, 7760($8)
	sw $10, 7784($8)
	sw $10, 7808($8)
	sw $10, 7832($8)
	sw $10, 7856($8)
	sw $10, 7880($8)
	
	#contorno 1:
	sw $14, 5172($8)
	sw $14, 5180($8)
	sw $14, 5184($8)
	sw $14, 5700($8)
	sw $14, 6216($8)
	sw $14, 6728($8)
	sw $14, 7236($8)
	sw $14, 7744($8)
	sw $14, 7740($8)
	sw $14, 7732($8)
	sw $14, 7224($8)
	sw $14, 7220($8)
	sw $14, 6708($8)
	sw $14, 6196($8)
	sw $14, 5688($8)
	sw $14, 5684($8)
	
	#contorno 2:
	sw $14, 5196($8)
	sw $14, 5204($8)
	sw $14, 5208($8)
	sw $14, 5708($8)
	sw $14, 5712($8)
	sw $14, 5724($8)
	sw $14, 6220($8)
	sw $14, 6240($8)
	sw $14, 6732($8)
	sw $14, 6752($8)
	sw $14, 7244($8)
	sw $14, 7248($8)
	sw $14, 7260($8)
	sw $14, 7756($8)
	sw $14, 7764($8)
	sw $14, 7768($8)
	
	#contorno 3:
	sw $14, 5220($8)
	sw $14, 5228($8)
	sw $14, 5232($8)
	sw $14, 5732($8)
	sw $14, 5736($8)
	sw $14, 5748($8)
	sw $14, 6244($8)
	sw $14, 6264($8)
	sw $14, 6756($8)
	sw $14, 6776($8)
	sw $14, 7268($8)
	sw $14, 7272($8)
	sw $14, 7284($8)
	sw $14, 7780($8)
	sw $14, 7788($8)
	sw $14, 7792($8)
	
	#contorno 4:
	sw $14, 5244($8)
	sw $14, 5252($8)
	sw $14, 5256($8)
	sw $14, 5756($8)
	sw $14, 5760($8)
	sw $14, 5772($8)
	sw $14, 6268($8)
	sw $14, 6288($8)
	sw $14, 6780($8)
	sw $14, 6800($8)
	sw $14, 7292($8)
	sw $14, 7296($8)
	sw $14, 7308($8)
	sw $14, 7804($8)
	sw $14, 7812($8)
	sw $14, 7816($8)
	
	#contorno 5:
	sw $14, 5268($8)
	sw $14, 5276($8)
	sw $14, 5280($8)
	sw $14, 5780($8)
	sw $14, 5784($8)
	sw $14, 5796($8)
	sw $14, 6292($8)
	sw $14, 6312($8)
	sw $14, 6804($8)
	sw $14, 6824($8)
	sw $14, 7316($8)
	sw $14, 7320($8)
	sw $14, 7332($8)
	sw $14, 7828($8)
	sw $14, 7836($8)
	sw $14, 7840($8)
	
	#contorno 6:
	sw $14, 5292($8)
	sw $14, 5300($8)
	sw $14, 5304($8)
	sw $14, 5804($8)
	sw $14, 5808($8)
	sw $14, 5820($8)
	sw $14, 6316($8)
	sw $14, 6336($8)
	sw $14, 6828($8)
	sw $14, 6848($8)
	sw $14, 7340($8)
	sw $14, 7344($8)
	sw $14, 7356($8)
	sw $14, 7852($8)
	sw $14, 7860($8)
	sw $14, 7864($8)
	
	#contorno 7:
	sw $14, 5316($8)
	sw $14, 5324($8)
	sw $14, 5328($8)
	sw $14, 5332($8)
	sw $14, 5828($8)
	sw $14, 5832($8)
	sw $14, 5848($8)
	sw $14, 6340($8)
	sw $14, 6360($8)
	sw $14, 6852($8)
	sw $14, 6872($8)
	sw $14, 7364($8)
	sw $14, 7368($8)
	sw $14, 7384($8)
	sw $14, 7876($8)
	sw $14, 7884($8)
	sw $14, 7888($8)
	sw $14, 7892($8)
	
	j movimento_nave

tiro_nave: 
	
	#printando a posição atual do $8
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	addi $4, $0, 10
	addi $2, $0, 11
	syscall 
	
	#printando a posição atual do $24
	add $4, $0, $24
	addi $2, $0, 1
	syscall
	
	addi $4, $0, 10
	addi $2, $0, 11
	syscall 
	
	#adicionando a posição do $24 no $8
	add $8, $8, $24
	addi $8, $8, -1024 #tirando -1024
	
	add $23, $0, $8
	
	loop_tiro_nave:
		addi $25, $0, 0x10010000 
		slt $25, $8, $25 #se $8 for menor que $25 será setado 1, senão, seta 0.
		beq $25, 1, desenhar_nave #se 8 for menor, ou seja, atingir o inicio da tela, sai do loop.
		sw $16, 0($24)
		sw $14, 0($24)
		#beq $8, $23, fimtiro
	fimtiro:
		# sleep - controle de fps
		addi $2, $0, 32
		addi $4, $0, 1000
		syscall
		#----
		addi $8, $8, -1024
		#sw $16, 0($8)
		addi $24, $24, -512
		j loop_tiro_nave
			
movimento_centopeia: 
	addi $8, $8, 4
	
	# sleep - controle de fps
		addi $2, $0, 32
		addi $4, $0, 1000
		syscall
	j desenhar_centopeia
	
	
#delay_centopeia:
#	addi $23, $0, 10000
#	loop_delay_centopeia:
#		beq $23, $0, movimento_centopeia
#		addi $23, $23,-1
#		j loop_delay_centopeia	
		
movimento_nave: 
	leitura_teclas: 
		lw $19, 0($22)
		beq $19, $0, movimento_centopeia 
		addi $21, $22, 4
		
		lw $20, 0($21)
		beq $20, 32, fim_jogo
		beq $20, 97, movimento_nave_esquerda
		beq $20, 100, movimento_nave_direita
		beq $20, 119, movimento_nave_cima
		beq $20, 115, movimento_nave_baixo 
		beq $20, 112, tiro_nave
		j leitura_teclas 
movimento_nave_esquerda:

	addi $8, $8, -4
	addi $24, $24, -4
	j desenhar_nave
	
movimento_nave_direita:

	addi $8, $8, 4
	addi $24, $24, 4
	j desenhar_nave
	
movimento_nave_cima:

	addi $8, $8, -512
	addi $24, $24, -512
	j desenhar_nave
	
movimento_nave_baixo:

	addi $8, $8, 512
	addi $24, $24, 512
	j desenhar_nave
			
###################################################### FIM ##############################################

fim_jogo:
 	addi $2, $0, 10
 	syscall
