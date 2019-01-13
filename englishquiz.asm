include pustaka.mcr

.MODEL SMALL
.CODE
ORG 100h    



TData: JMP Note


Buffer  DB 23,?,23 DUP(?)

hsl     DB 13,10,13,10,'Jawaban Yang Benar Sebanyak = $'
hsl2    DB 13,10,13,10,'Jawaban Yang Salah Sebanyak = $'

no1     DB 13,10,13,10,'NO 1. $'
no2     DB 13,10,13,10,'NO 2. $'
no3     DB 13,10,13,10,'NO 3. $'
no4     DB 13,10,13,10,'NO 4. $'
no5     DB 13,10,13,10,'NO 5. $'

br      DB 13,10,13,10,' $'

hsl3    DB 13,10,13,10,'Nilai Anda Adalah = $'
hsl4    DB 13,10,13,10,'Nilai = $'

true    DB 13,10,13,10,'Jawaban Benar  $'
false   DB 13,10,13,10,'Jawaban Salah  $'

skor DB '00 $ '
skor1 DB '000 $ '

jumb DB '0 $ '
jums DB '0 $ '  

line    DB 13,10,13,10,'=====================',13,10,'$' 
 
 

note1   DB 13,10,13,10,'--------------PETUNJUK PEMAKAIAN------------',13,10,'$'
note2   DB 13,10,13,10,'1. Anda akan diberikan 5 gambar suatu objek',13,10,'$'
note3   DB 13,10,13,10,'2. Selanjutnya anda diminta untuk mengartikannya$'
note4   DB 13,10,13,10,'   kedalam bahasa Inggris',13,10,'$'
note5   DB 13,10,13,10,'3. Bila jawaban benar maka +20, jika salah +0',13,10,'$'
note6   DB 13,10,13,10,'4. Selamat mencoba',13,10,'$'
note7   DB 13,10,13,10,'5. Isikan Jawaban menggunakan huruf kapital',13,10,'$'








 
Kal0    DB 13,10,'                                                                 ***$'
Kal1    DB 13,10,'                                                                *   *$'
Kal2    DB 13,10,'                                                               %    %$'
Kal3    DB 13,10,'                                                               %    *$'
Kal4    DB 13,10,'                                                              %    %*$'
Kal5    DB 13,10,'                                                              *    *$'
Kal6    DB 13,10,'                                                             %     %$'
Kal7    DB 13,10,'                                                             *     *$'
Kal8    DB 13,10,'                                                            %      L$'
Kal9    DB 13,10,'                                             *%*%*%*%*%*%*% *      *%*%*%*%*%*%%$'
Kal10    DB 13,10,'                                            Z            % %                 %$'
Kal11    DB 13,10,'                                             %*         %  *                %$'
Kal12    DB 13,10,'%%%%%%                       ,*"''"---- ,      %%*%*%*%** %                %$'
Kal13    DB 13,10,'%     B%A                  %%            ^r~--,,          *     r*%%*%*%*%%$'
Kal14    DB 13,10,'%8       8%A              %  XXXXXS             '""'---V       %$'
Kal15    DB 13,10,'  %        8%A           % SXXXXXXXXX  5---.                   *$'
Kal16    DB 13,10,'   %         %A%8       % XXXXXXXXXXX  \XXX\                  %$'
Kal17    DB 13,10,'    %8            %8   % SXXXXXXXXXXX X >XX<                  *$'
Kal18    DB 13,10,'      %8            %7      XXXXXXXXX X \XXX\                *$'
Kal19    DB 13,10,'        %8        %%           XXXXXX XD XXXj               %$'
Kal20    DB 13,10,'          %8    %%                    XD L--J               *$'
Kal21    DB 13,10,'            %8 %                                           *%$'
Kal22    DB 13,10,'              %                                          *%$'
Kal23    DB 13,10,'              /  -^-,                                   *%$'
Kal24    DB 13,10,'            /  %    %                                *%$'
Kal25    DB 13,10,'            \ / CXXB \                                %*%*%*%*%*%*%*%*%*%*%*%%$'
Kal26    DB 13,10,'              KCXXXXB )                                                     %$'
Kal27    DB 13,10,'              \CXXXB /                                                     %$'
Kal28    DB 13,10,'                  S-%                  8%S8%S8%S8%S                       %$'
Kal29    DB 13,10,'                   -%                %S8%S8%S8%S8%L8%S8%S8%S8%S*%S8%S8%S8%$'
Kal30    DB 13,10,'                      %%           *%$'
Kal31    DB 13,10,'                        %S8S8S8S8S8%$'

soal1   DB 13,10,'PESAWAT = $'
jawab1  DB 13,19,'AIRPLANE','$'

Kal33   DB 13,10,'                    ******************$'
Kal34   DB 13,10,'                    ******************$'
Kal35   DB 13,10,'                    ******************$'
Kal36   DB 13,10,'                    ******************$'
Kal37   DB 13,10,'                    ******************$'
Kal38   DB 13,10,'                    ******************$'
Kal39   DB 13,10,'                    ******************$'
Kal40   DB 13,10,'                    ******************$'
Kal41   DB 13,10,'                    ******************$'
Kal42   DB 13,10,'                    ******************$'
Kal43   DB 13,10,'                    ******************$' 

soal2   DB 13,10,'PERSEGI = $'
jawab2  DB 13,19,'SQUARE','$'

Kal47   DB 13,10,'                             *$'
Kal48   DB 13,10,'                            ***$'
Kal49   DB 13,10,'                           *****$'
Kal50   DB 13,10,'                          *******$'
Kal51   DB 13,10,'                         *********$'
Kal52   DB 13,10,'                        ***********$'
Kal53   DB 13,10,'                       *************$'
Kal54   DB 13,10,'                      ***************$'
Kal55   DB 13,10,'                     *****************$'
Kal56   DB 13,10,'                    *******************$'
Kal57   DB 13,10,'                   *********************$'
  
soal3   DB 13,10,'SEGITIGA = $' 
jawab3  DB 13,19,'TRIANGLE','$'

Kal59   DB 13,10,'                             *$'
Kal60   DB 13,10,'                            * *$'
Kal61   DB 13,10,'                           *   *$'
Kal62   DB 13,10,'                          *     *$'
Kal63   DB 13,10,'                         *  ###  *$'
Kal64   DB 13,10,'                        *   ###   *$'
Kal65   DB 13,10,'                       *    ###    *$'
Kal66   DB 13,10,'                      *     ###     *$'
Kal67   DB 13,10,'                     *               *$'
Kal68   DB 13,10,'                    *       &&&       *$'
Kal69   DB 13,10,'                   *                   *$'
Kal70   DB 13,10,'                  ***********************$' 
    
soal4   DB 13,10,'PERHATIAN = $'
jawab4  DB 13,19,'ATTENTION','$'

Kal71   DB 13,10,'                    %%%%%%%%%$'
Kal72   DB 13,10,'                    %%%%%%%%%$'
Kal73   DB 13,10,'                    %%%%%%%%%**$'
Kal74   DB 13,10,'                    %%%%%%%%%  *$'
Kal75   DB 13,10,'                    %%%%%%%%%   *$'
Kal76   DB 13,10,'                    %%%%%%%%%   *$'
Kal77   DB 13,10,'                    %%%%%%%%%  *$'
Kal78   DB 13,10,'                    %%%%%%%%%**$'
Kal79   DB 13,10,'                    %%%%%%%%%$'
Kal80   DB 13,10,'                    %%%%%%%%%$'

soal5   DB 13,10,'GELAS = $'
jawab5  DB 13,19,'GLASS','$'


Note:
    cetak_klm note1
    cetak_klm note2
    cetak_klm note3
    cetak_klm note4
    cetak_klm note5
    cetak_klm note6
    cetak_klm note7
         
        MOV AH,0Ah
        LEA DX,Buffer
        INT 21h   
         
         
    LEA BX,Buffer+2
    cetak_klm br
    cetak_klm br 

    JMP Proses  
    
    
Proses:
    cetak_klm no1
    cetak_klm Kal0 
    cetak_klm Kal1
    cetak_klm Kal2
    cetak_klm Kal3
    cetak_klm Kal4
    cetak_klm Kal5
    cetak_klm Kal6
    cetak_klm Kal7
    cetak_klm Kal8
    cetak_klm Kal9
    cetak_klm Kal10
    cetak_klm Kal11
    cetak_klm Kal12
    cetak_klm Kal13
    cetak_klm Kal14
    cetak_klm Kal15
    cetak_klm Kal16
    cetak_klm Kal17
    cetak_klm Kal18 
    cetak_klm Kal19
    cetak_klm Kal20
    cetak_klm Kal21
    cetak_klm Kal22
    cetak_klm Kal23
    cetak_klm Kal24
    cetak_klm Kal25
    cetak_klm Kal26
    cetak_klm Kal27
    cetak_klm Kal28
    cetak_klm Kal29
    cetak_klm Kal30
    cetak_klm Kal31
    cetak_klm br
        
        cetak_klm soal1
         
        MOV AH,0Ah
        LEA DX,Buffer
        INT 21h   
         
         
        LEA BX,Buffer+2
           
        CMP BYTE PTR [BX]+0,'A'
        JNE SALAH
        JE  BENAR
        CMP BYTE PTR [BX]+1,'I'
        JNE SALAH
        JE  BENAR
        CMP BYTE PTR [BX]+2,'R'
        JNE SALAH
        JE  BENAR
        CMP BYTE PTR [BX]+3,'P'
        JNE SALAH
        JE  BENAR
        CMP BYTE PTR [BX]+4,'L'
        JNE SALAH
        JE  BENAR
        CMP BYTE PTR [BX]+5,'A'
        JNE SALAH
        JE  BENAR
        CMP BYTE PTR [BX]+6,'N'
        JNE SALAH
        JE  BENAR
        CMP BYTE PTR [BX]+7,'E'
        JNE SALAH
        JE  BENAR
        
        
        
SALAH:
       MOV AH,09
       LEA DX,false
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h  
       
       INC jums
       LEA DX, skor
       INT 21h
       
       JMP Proses2 
       
BENAR: 
       MOV AH, 09
       LEA DX, true
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h
       
       INC skor
       INC skor
       INC jumb
       LEA DX, skor
       INT 21h
       
       JMP Proses2
   
         
Proses2:
cetak_klm br
cetak_klm no2
    cetak_klm Kal33
    cetak_klm Kal34
    cetak_klm Kal35
    cetak_klm Kal36
    cetak_klm Kal37
    cetak_klm Kal38
    cetak_klm Kal39
    cetak_klm Kal40
    cetak_klm Kal41
    cetak_klm Kal42
    cetak_klm Kal43
    cetak_klm br   
        cetak_klm soal2
        
        MOV AH,0Ah
        LEA DX,Buffer
        INT 21h   
         
         
        LEA BX,Buffer+2
           
        CMP BYTE PTR [BX]+0,'S'
        JNE SALAH2
        JE  BENAR2
        CMP BYTE PTR [BX]+1,'Q'
        JNE SALAH2
        JE  BENAR2
        CMP BYTE PTR [BX]+2,'U'
        JNE SALAH2
        JE  BENAR2
        CMP BYTE PTR [BX]+3,'A'
        JNE SALAH2
        JE  BENAR2
        CMP BYTE PTR [BX]+4,'R'
        JNE SALAH2
        JE  BENAR2
        CMP BYTE PTR [BX]+5,'E'
        JNE SALAH2
        JE  BENAR2
        
        
        
SALAH2:
       MOV AH,09
       LEA DX,false
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h  
       
       INC jums
       LEA DX, skor
       INT 21h
       
       JMP Proses3 
       
BENAR2: 
       MOV AH, 09
       LEA DX, true
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h
       
       INC jumb
       INC skor
       INC skor
       LEA DX, skor
       INT 21h
       
       JMP Proses3 
       
       
Proses3:
cetak_klm br
cetak_klm no3
    cetak_klm Kal47
    cetak_klm Kal48
    cetak_klm Kal49
    cetak_klm Kal50
    cetak_klm Kal51
    cetak_klm Kal52
    cetak_klm Kal53
    cetak_klm Kal54
    cetak_klm Kal55
    cetak_klm Kal56
    cetak_klm Kal57
    cetak_klm br   
        cetak_klm soal3
         
        MOV AH,0Ah
        LEA DX,Buffer
        INT 21h   
         
         
        LEA BX,Buffer+2
           
        CMP BYTE PTR [BX]+0,'T'
        JNE SALAH3
        JE  BENAR3
        CMP BYTE PTR [BX]+1,'R'
        JNE SALAH3
        JE  BENAR3
        CMP BYTE PTR [BX]+2,'I'
        JNE SALAH3
        JE  BENAR3
        CMP BYTE PTR [BX]+3,'A'
        JNE SALAH3
        JE  BENAR3
        CMP BYTE PTR [BX]+4,'N'
        JNE SALAH3
        JE  BENAR3
        CMP BYTE PTR [BX]+5,'G'
        JNE SALAH3
        JE  BENAR3
        CMP BYTE PTR [BX]+6,'L'
        JNE SALAH3
        JE  BENAR3
        CMP BYTE PTR [BX]+7,'E'
        JNE SALAH3
        JE  BENAR3
        

SALAH3:
       MOV AH,09
       LEA DX,false
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h  
       
       INC jums
       LEA DX, skor
       INT 21h
       
       JMP Proses4 
       
BENAR3: 
       MOV AH,09
       LEA DX,true
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h
       
       INC jumb
       INC skor
       INC skor
       LEA DX, skor
       INT 21h
       
       JMP Proses4
       
                
         
Proses4:
cetak_klm br
cetak_klm no4
    cetak_klm Kal59
    cetak_klm Kal60
    cetak_klm Kal61
    cetak_klm Kal62
    cetak_klm Kal63
    cetak_klm Kal64
    cetak_klm Kal65
    cetak_klm Kal66
    cetak_klm Kal67
    cetak_klm Kal68
    cetak_klm Kal69
    cetak_klm Kal70
    cetak_klm br   
        cetak_klm soal4
         
        MOV AH,0Ah
        LEA DX,Buffer
        INT 21h   
         
         
        LEA BX,Buffer+2
           
        CMP BYTE PTR [BX]+0,'A'
        JNE SALAH4
        JE  BENAR4
        CMP BYTE PTR [BX]+1,'T'
        JNE SALAH4
        JE  BENAR4
        CMP BYTE PTR [BX]+2,'T'
        JNE SALAH4
        JE  BENAR4
        CMP BYTE PTR [BX]+3,'E'
        JNE SALAH4
        JE  BENAR4
        CMP BYTE PTR [BX]+4,'N'
        JNE SALAH4
        JE  BENAR4
        CMP BYTE PTR [BX]+5,'T'
        JNE SALAH4
        JE  BENAR4
        CMP BYTE PTR [BX]+6,'I'
        JNE SALAH4
        JE  BENAR4
        CMP BYTE PTR [BX]+7,'O'
        JNE SALAH4
        JE  BENAR4
        CMP BYTE PTR [BX]+7,'N'
        JNE SALAH4
        JE  BENAR4
        

SALAH4:
       MOV AH,09
       LEA DX,false
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h  
       
       INC jums
       LEA DX, skor
       INT 21h
       
       
       JMP Proses5 
       
BENAR4: 
       MOV AH,09
       LEA DX,true
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h
       
       INC jumb
       INC skor
       INC skor
       LEA DX, skor
       INT 21h
       
       JMP Proses5       

   
Proses5:
cetak_klm br
cetak_klm no5
    cetak_klm Kal71
    cetak_klm Kal72
    cetak_klm Kal73
    cetak_klm Kal74
    cetak_klm Kal75
    cetak_klm Kal76
    cetak_klm Kal77
    cetak_klm Kal78
    cetak_klm Kal79
    cetak_klm Kal80
    cetak_klm br   
        cetak_klm soal5
         
        MOV AH,0Ah
        LEA DX,Buffer
        INT 21h   
         
         
        LEA BX,Buffer+2
           
        CMP BYTE PTR [BX]+0,'G'
        JNE SALAH5
        JE  BENAR5
        CMP BYTE PTR [BX]+1,'L'
        JNE SALAH5
        JE  BENAR5
        CMP BYTE PTR [BX]+2,'A'
        JNE SALAH5
        JE  BENAR5
        CMP BYTE PTR [BX]+3,'S'
        JNE SALAH5
        JE  BENAR5
        CMP BYTE PTR [BX]+4,'S'
        JNE SALAH5
        JE  BENAR5

        

SALAH5:
       MOV AH,09
       LEA DX,false
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h  
       
       INC jums
       LEA DX, skor
       INT 21h
       
       
       JMP Hasil 
       


       
BENAR5: 
       MOV AH,09
       LEA DX,true
       INT 21h
       
       MOV AH, 09
       LEA DX, hsl4
       INT 21h
       
       
       INC jumb
       INC skor
       INC skor
       
             
       LEA DX, skor
       INT 21h
       
       JMP Hasil 
                               
       
HASIL:
    cetak_klm br
    cetak_klm br
    cetak_klm br
    cetak_klm br
       MOV AH, 09
       LEA DX, line
       INT 21h
       MOV AH, 09
       LEA DX, hsl
       INT 21h
       LEA DX, jumb
       INT 21h
       LEA DX, line
       INT 21h 
       
       MOV AH, 09
       LEA DX, hsl2
       INT 21h
       LEA DX, jums
       INT 21h
       LEA DX, line
       INT 21h 
       

       MOV AH, 09
       LEA DX, hsl3
       INT 21h
       
       LEA DX, skor
       INT 21h
       LEA DX, line
       INT 21h
       

;HASIL2:
       ;MOV AH, 09
       ;LEA DX, line
       ;INT 21h
       ;MOV AH, 09
       ;LEA DX, hsl
       ;INT 21h
       ;LEA DX, jumb
       ;INT 21h
       ;LEA DX, line
       ;INT 21h 
       
       ;MOV AH, 09
       ;LEA DX, hsl2
       ;INT 21h
       ;LEA DX, jums
       ;INT 21h
       ;LEA DX, line
       ;INT 21h
       ;LEA DX, skor
       ;INT 21h
       ;LEA DX, line
       ;INT 21h     
     
END