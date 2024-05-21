TITLE FPUInstructions Tutorial 
INCLUDE Irvine32.inc


.data
bigValue REAL10 1.212342342234234243E+864
farray REAL8 1.0, 2.0, 3.0, 4.0, 5.0
temp1 REAL4 ?
temp2 REAL4 ?

.code
main PROC

; initialize FPU
finit 

; fld various operand types
fld farray[0]
fld farray[8]
fld st(1)
fld bigValue

; overflow FPU stack
fldpi
fld1
fldpi
fldpi
fldpi
fldpi
fldpi
fldpi
fldpi

; reset FPU
finit

; immediate values in FPU instructions
; is generates assembler error
; Only way to get a float into FPU is 
; through 
; 1) variable declaration
; 2) ReadFloat from console but again requires variable
;fld 15.2

; read float from console and stores it in ST(0)
call ReadFloat
call ReadFloat
fadd
; prints the contents of ST(0) to console
call WriteFloat





exit
main ENDP
END main



