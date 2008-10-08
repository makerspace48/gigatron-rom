Z00             := $0700
L0001           := $0001
L0002           := $0002
GOWARM          := $0003
GOSTROUT        := $0006
GOGIVEAYF       := $0008

USR             := $000A
Z15             := $000D
Z16             := $06FB;$000E
Z17             := $06FC;$000F
Z18             := $06FD;$0010
LINNUM          := $0011
TXPSV           := $0011
INPUTBUFFER     := $0013
CHARAC          := $0006;5B
ENDCHR          := $0007;5C
EOLPNTR         := $0008;5D
DIMFLG          := $0009;5E
VALTYP          := $000A;5F
DATAFLG         := $000B;60
SUBFLG          := $000C;61
INPUTFLG        := $000D;62
CPRMASK         := $000E;63
Z14             := $000F;64                        ; Ctrl+O flag
TEMPPT          := $0015;65
LASTPT          := $0016;;66
INDEX           := $0021;71
DEST            := $0023;73
RESULT          := $0025;75
RESULT_LAST     := $0028;78
TXTTAB          := $0029;79
VARTAB          := $002B;7B
ARYTAB          := $002D;7D
STREND          := $002F;7F
FRETOP          := $0031;81
FRESPC          := $0033;83
MEMSIZ          := $0035;;85
CURLIN          := $0037;87
OLDLIN          := $0039;89
OLDTEXT         := $003B;8B
Z8C             := $003D;8D
DATPTR          := $003F;8F
INPTR           := $0041;91
VARNAM          := $0043;93
VARPNT          := $0045;95
FORPNT          := $0047;97
LASTOP          := $0049;99
CPRTYP          := $004B;9B
FNCNAM          := $004C;9C
TEMP3           := $004C;;9C ; same
DSCPTR          := $004E;9E

DSCLEN          := $0050;A0
JMPADRS         := $0093;A1

LENGTH          := $0094

TEMP1           := $0053;A3
ARGEXTENSION    := $0053;;A3 ; same!
HIGHDS          := $0054;A4
HIGHTR          := $0056;A6
INDX            := $0058;;A8
TEMP2			:= $0058;;A8 ; same!
TMPEXP          := $0058;;A8 ; same
EXPON           := $0059;A9
LOWTR           := $0094;AA                        ; $AB also EXPSGN?
EXPSGN			:= $005B;;AB
FAC             := $005C;AC
FAC_LAST        := $005F;;AF
FACSIGN         := $0060;B0
SERLEN          := $0061;B1
SHIFTSIGNEXT    := $0062;B2
ARG             := $0063;B3
ARG_LAST        := $0066;;B6
ARGSIGN         := $0067;B7
STRNG1          := $0068;B8                        ; TODO: also SGNCPR
FACEXTENSION	:= $0069;;B9
STRNG2          := $006A;BA
CHRGET          := $006C;BC
CHRGOT          := $0072;C2
TXTPTR          := $0073;C3

RNDSEED			:= $00D4

L0207           := $0207
L020A           := $020A
;L2A13           := $2A0A
L2EE2           := $2EF9
MONRDKEY        := $FFEB
MONCOUT         := $FFEE
MONISCNTC       := $FFF1
LOAD            := $FFF4
SAVE            := $FFF7

BYTES_PER_FRAME := $10
SPACE_FOR_GOSUB := $49
TEMPST			:= $68
FOR_STACK1		:= $0D
FOR_STACK2		:= $08
NUM_TOKENS		:= $1C
NULL_MAX		:= $0A
BYTES_PER_ELEMENT := 4
BYTES_PER_VARIABLE := 6
BYTES_FP		:= 4
MANTISSA_BYTES	:= BYTES_FP-1

RAMSTART3		:= $0300

TOKEN_GOTO		:= $88
TOKEN_GOSUB		:= $8C
TOKEN_TAB		:= $9C
TOKEN_TO		:= $9D
TOKEN_FN		:= $9E
TOKEN_SPC		:= $9F
TOKEN_THEN		:= $A0
TOKEN_NOT		:= $A1
TOKEN_STEP		:= $A2
TOKEN_PLUS		:= $A3
TOKEN_MINUS		:= $A4
TOKEN_GREATER	:= $AA
TOKEN_EQUAL		:= $AB
TOKEN_SGN		:= $AD
TOKEN_LEFTSTR	:= $C1

RAMSTART2		:= $0300

PRT	= $AAAA
VSAV	= $AAAA
VLOD	= $AAAA
PSAV	= $AAAA
GETC	= $AAAA
LE68C	= $AAAA
LDE42	= $AAAA ; PRIMM ?
LFDDA	= $AAAA
LE33D	= $AAAA
LF457	= $AAAA
LFD3E	= $AAAA
INLIN	= $AAAA
GETLN	= $AAAA
LFF64	= $AAAA
LF422	= $AAAA
LFFD3	= $AAAA
LC46E	= $AAAA
FL1		= $AAAA
LFFED	= $AAAA
LFFD6	= $AAAA

