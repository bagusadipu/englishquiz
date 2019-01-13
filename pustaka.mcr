CETAK_Klm    macro klm
	     LOCAL ULANG 
             MOV AH,09
             LEA DX,klm
             INT 21H 
             ENDM              

Posisi MACRO baris,kolom
			 MOV AH,02h
		         MOV DH,baris
			 MOV DL,kolom
			 MOV BH,00h
			 INT 10h
ENDM