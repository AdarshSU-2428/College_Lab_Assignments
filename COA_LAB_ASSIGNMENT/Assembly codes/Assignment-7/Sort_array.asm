MVI B,05H
START: LXI H, 2100
       MVI C, 05H
BACK: MOV A,M
      INX H
      CMP M
      JC SKIP
      JZ SKIP
      MOV D,M
      MOV M,A
      DCX H
      MOV M,D
      INX H
SKIP: DCR C
      JNZ BACK
      DCR B
      JNZ START
      HLT
