TITLE FPUInstructions Tutorial 
INCLUDE Irvine32.inc


.data
bigValue REAL10 1.212342342234234243E+864
farray REAL8 1.0, 2.0, 3.0, 4.0, 5.0
.code
main PROC

; initialize FPU
finit 

; fld various operand types
fld farray[0]
fld farray[8]
fld st(1)
fld bigValue




exit
main ENDP
END main



