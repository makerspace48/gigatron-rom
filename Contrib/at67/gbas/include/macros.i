%MACRO  LoopCounterTo1 _counter _label
        LD      _counter
        SUBI    0x01
        ST      _counter
        BGT     _label
%ENDM

%MACRO  LoopCounterTo0 _counter _label
        LD      _counter
        SUBI    0x01
        ST      _counter
        BGE     _label
%ENDM

%MACRO  LoopCounter _counter _label
        LD      _counter
        SUBI    0x01
        ST      _counter
        BNE     _label
%ENDM

%MACRO  LoopCounter1 _counter _label
        LD      _counter
        SUBI    0x01
        ST      _counter
        BGE     _label
%ENDM

%MACRO  LutPeek _lut _index
        LDWI    _lut
        DEEK
        ADDW    _index
        PEEK
%ENDM

%MACRO  LutDeek _lut _index _scratch
        LDWI    _lut
        DEEK
        STW     _scratch
        LDW     _index
        LSLW
        ADDW    _scratch
        DEEK
%ENDM

%MACRO  ForNextLoopUp _var _label _end
        INC     _var
        LD      _var
        SUBI    _end
        BGT     _label_+2
        LDWI    _label
_label_ CALL    giga_vAC
%ENDM

%MACRO  ForNextLoopDown _var _label _end
        LD      _var
        SUBI    1
        ST      _var
        SUBI    _end
        BLT     _label_+2
        LDWI    _label
_label_ CALL    giga_vAC
%ENDM

%MACRO  ForNextLoopStepUp _var _label _vEnd _vStep
        LDW     _var
        ADDW    _vStep
        STW     _var
        SUBW    _vEnd
        BGT     _label_+2
        LDWI    _label
_label_ CALL    giga_vAC
%ENDM

%MACRO  ForNextLoopStepDown _var _label _vEnd _vStep
        LDW     _var
        ADDW    _vStep
        STW     _var
        SUBW    _vEnd
        BLT     _label_+2
        LDWI    _label
_label_ CALL    giga_vAC
%ENDM

%MACRO  PrintChar _chr
        LDI     _chr
        ST      textChr
        LDWI    printChar
        CALL    giga_vAC
%ENDM

%MACRO  PrintAcChar
        ST      textChr
        LDWI    printChar
        CALL    giga_vAC
%ENDM

%MACRO  PrintVarChar _var
        LD      _var
        ST      textChr
        LDWI    printChar
        CALL    giga_vAC
%ENDM

%MACRO  PrintAcHexByte
        ST      textHex
        LDWI    printHexByte
        CALL    giga_vAC
%ENDM

%MACRO  PrintVarHexByte _var
        LD      _var
        ST      textHex
        LDWI    printHexByte
        CALL    giga_vAC
%ENDM

%MACRO  PrintAcHexWord
        STW     textHex
        LDWI    printHexWord
        CALL    giga_vAC
%ENDM

%MACRO  PrintVarHexWord _var
        LDW     _var
        STW     textHex
        LDWI    printHexWord
        CALL    giga_vAC
%ENDM

%MACRO  PrintString _str
        LDWI    _str
        STW     textStr
        LDWI    printText
        CALL    giga_vAC
%ENDM

%MACRO  PrintAcString
        STW     textStr
        LDWI    printText
        CALL    giga_vAC
%ENDM

%MACRO  PrintVarString _var
        LDW     _var
        STW     textStr
        LDWI    printText
        CALL    giga_vAC
%ENDM

%MACRO  PrintInt16 _int
        LDWI    _int
        STW     textNum    
        LDWI    printInt16
        CALL    giga_vAC
%ENDM

%MACRO  PrintAcInt16
        STW     textNum    
        LDWI    printInt16
        CALL    giga_vAC
%ENDM

%MACRO  PrintVarInt16 _var
        LDW     _var
        STW     textNum    
        LDWI    printInt16
        CALL    giga_vAC
%ENDM

%MACRO  Random
        LDWI    random16bit
        CALL    giga_vAC
%ENDM

%MACRO  RandMod
        STW     mathY
        LDWI    randMod16bit
        CALL    giga_vAC
%ENDM        

%MACRO  ShiftLeft4bit
        LDWI    shiftLeft4bit
        CALL    giga_vAC
%ENDM

%MACRO  ShiftLeft8bit
        LDWI    shiftLeft8bit
        CALL    giga_vAC
%ENDM

%MACRO  ShiftRight1bit
        LDWI    shiftRight1bit
        CALL    giga_vAC
%ENDM

%MACRO  ShiftRight2bit
        LDWI    shiftRight2bit
        CALL    giga_vAC
%ENDM

%MACRO  ShiftRight3bit
        LDWI    shiftRight3bit
        CALL    giga_vAC
%ENDM

%MACRO  ShiftRight4bit
        LDWI    shiftRight4bit
        CALL    giga_vAC
%ENDM

%MACRO  ShiftRight5bit
        LDWI    shiftRight5bit
        CALL    giga_vAC
%ENDM

%MACRO  ShiftRight6bit
        LDWI    shiftRight6bit
        CALL    giga_vAC
%ENDM

%MACRO  ShiftRight7bit
        LDWI    shiftRight7bit
        CALL    giga_vAC
%ENDM

%MACRO  ShiftRight8bit
        LDWI    shiftRight8bit
        CALL    giga_vAC
%ENDM

%MACRO  ScanlineMode
        LDWI    scanlineMode
        CALL    giga_vAC
%ENDM

%MACRO  WaitVBlank
        LDWI    waitVBlank
        CALL    giga_vAC
%ENDM

%MACRO  DrawLine
        LDWI    drawLine
        CALL    giga_vAC
%ENDM

%MACRO  DrawHLine
        LDWI    drawHLine
        CALL    giga_vAC
%ENDM

%MACRO  DrawVLine
        LDWI    drawVLine
        CALL    giga_vAC
%ENDM

%MACRO  AtLineCursor
        LDWI    atLineCursor
        CALL    giga_vAC
%ENDM

%MACRO  PageJumpBEQ _label
        BNE     _label_+2
        LDWI    _label
_label_ CALL    giga_vAC
%ENDM

%MACRO  InitEqOp
        LDWI    convertEqOp
        STW     convertEqOpAddr
%ENDM
        
%MACRO  InitNeOp
        LDWI    convertNeOp
        STW     convertNeOpAddr
%ENDM

%MACRO  InitLeOp
        LDWI    convertLeOp
        STW     convertLeOpAddr
%ENDM
        
%MACRO  InitGeOp
        LDWI    convertGeOp
        STW     convertGeOpAddr
%ENDM
        
%MACRO  InitLtOp
        LDWI    convertLtOp
        STW     convertLtOpAddr
%ENDM
        
%MACRO  InitGtOp
        LDWI    convertGtOp
        STW     convertGtOpAddr
%ENDM

%MACRO  Initialise
        LDWI    0x0F20                                  ; yellow on blue
        STW     fgbgColour
        STW     giga_sysArg0
        LDWI    0x0001                                  ; reset flags
        STW     miscFlags

        LDWI    initClearFuncs
        CALL    giga_vAC
%ENDM

%MACRO  ClearRegion _x _y _w _h
        LDI     _h / 2
        ST      ycount
        LDI     _w / 4
        ST      xcount
        ST      xreset

        LDWI    _y*256 + _x + giga_vram                 ; top line
        STW     treset
        STW     top
        LDWI    ((_h - 1) + _y)*256 + _x + giga_vram    ; bottom line
        STW     breset
        STW     bot
        LDWI    clearRegion
        CALL    giga_vAC
%ENDM
