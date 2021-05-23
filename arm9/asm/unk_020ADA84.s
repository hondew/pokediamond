	.include "asm/macros.inc"
	.include "global.inc"

	.extern SNDi_DecibelTable
	.extern GXi_DmaId
	.extern FUN_020ADCA4
	.extern FUN_020ADC8C

	.section .rodata

	; static const in function
	.global UNK_020FF7D4
UNK_020FF7D4: ; 0x020FF7D4
	.word FUN_020AF2B4
	.word FUN_020AF288
	.word FUN_020AF25C
	.word FUN_020AF230
	.word GX_LoadBG0Char_2
	.word GX_LoadBG1Char_2
	.word GX_LoadBG2Char_2
	.word GX_LoadBG3Char_2
	.word GX_LoadBG0Scr_2
	.word GX_LoadBG1Scr_2
	.word GX_LoadBG2Scr_2
	.word GX_LoadBG3Scr_2
	.word GX_LoadBG2Scr_3
	.word GX_LoadBG3Scr_3
	.word GX_LoadOBJPltt_2
	.word GX_LoadBGPltt_2
	.word FUN_020AF174
	.word FUN_020AF148
	.word GX_LoadOAM_2
	.word GX_LoadOBJ_2
	.word GXS_LoadBG0Char_2
	.word GXS_LoadBG1Char_2
	.word GXS_LoadBG2Char_2
	.word GXS_LoadBG3Char_2
	.word GXS_LoadBG0Scr_2
	.word GXS_LoadBG1Scr_2
	.word GXS_LoadBG2Scr_2
	.word GXS_LoadBG3Scr_2
	.word GXS_LoadBG2Scr_3
	.word GXS_LoadBG3Scr_3
	.word GXS_LoadOBJPltt_2
	.word GXS_LoadBGPltt_2
	.word FUN_020AF074
	.word FUN_020AF048
	.word GXS_LoadOAM_2
	.word GXS_LoadOBJ_2

	; const initializer
	.global UNK_020FF864
UNK_020FF864: ; 0x020FF864
	.byte 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_020FF894
UNK_020FF894: ; 0x020FF894
	.byte 0x08, 0x00, 0x10, 0x00, 0x20, 0x00, 0x40, 0x00, 0x08, 0x00, 0x08, 0x00, 0x10, 0x00, 0x20, 0x00
	.byte 0x10, 0x00, 0x20, 0x00, 0x20, 0x00, 0x40, 0x00

	.global UNK_020FF8AC
UNK_020FF8AC: ; 0x020FF8AC
	.byte 0x08, 0x00, 0x10, 0x00, 0x20, 0x00, 0x40, 0x00, 0x10, 0x00, 0x20, 0x00, 0x20, 0x00, 0x40, 0x00
	.byte 0x08, 0x00, 0x08, 0x00, 0x10, 0x00, 0x20, 0x00

	; static const in function
	.global UNK_020FF8C4
UNK_020FF8C4: ; 0x020FF8C4
	.byte 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x23, 0x00, 0x00, 0x00

	; static const in function
	.global UNK_020FF8D0
UNK_020FF8D0: ; 0x020FF8D0
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00

	; static const in function
	.global UNK_020FF8D8
UNK_020FF8D8: ; 0x020FF8D8
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00

	.global UNK_020FF8F8
UNK_020FF8F8: ; 0x020FF8F8
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	.global UNK_020FF928
UNK_020FF928: ; 0x020FF928
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00

	.global UNK_020FF958
UNK_020FF958: ; 0x020FF958
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	; static const in function
	.global UNK_020FF970
UNK_020FF970: ; 0x020FF970
	.byte 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x00, 0x01, 0x01, 0x01, 0x02, 0x01, 0x02, 0x01
	.byte 0x00, 0x02, 0x01, 0x02, 0x02, 0x02, 0x03, 0x02, 0x00, 0x02, 0x01, 0x02, 0x02, 0x03, 0x03, 0x03

	; static const in function
	.global UNK_020FF990
UNK_020FF990: ; 0x020FF990
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x40, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x80, 0x00, 0x40, 0x00, 0x80, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x40, 0x00, 0xC0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0xC0, 0x00, 0x00, 0x00, 0xC0

	; static const in function
	.global UNK_020FF9D0
UNK_020FF9D0: ; 0x020FF9D0
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0x7F, 0x00, 0x00, 0x00, 0x00, 0xFF, 0x7F, 0xFF, 0x7F, 0xFF, 0x7F
	.byte 0x00, 0x80, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x80, 0xFF, 0x7F, 0xFF, 0xFF, 0xFF, 0x7F

	; static const in function
	.global UNK_020FF9F0
UNK_020FF9F0: ; 0x020FF9F0
	.byte 0x04, 0x05, 0x07, 0x08
	.byte 0x03, 0x05, 0x06, 0x08
	.byte 0x03, 0x04, 0x06, 0x07
	.byte 0x01, 0x02, 0x07, 0x08
	.byte 0x00, 0x02, 0x06, 0x08
	.byte 0x00, 0x01, 0x06, 0x07
	.byte 0x01, 0x02, 0x04, 0x05
	.byte 0x00, 0x02, 0x03, 0x05
	.byte 0x00, 0x01, 0x03, 0x04

	; static const in function
	.global UNK_020FFA14
UNK_020FFA14: ; 0x020FFA14
	.byte 0x04, 0x05, 0x07, 0x08
	.byte 0x03, 0x05, 0x06, 0x08
	.byte 0x03, 0x04, 0x06, 0x07
	.byte 0x01, 0x02, 0x07, 0x08
	.byte 0x00, 0x02, 0x06, 0x08
	.byte 0x00, 0x01, 0x06, 0x07
	.byte 0x01, 0x02, 0x04, 0x05
	.byte 0x00, 0x02, 0x03, 0x05
	.byte 0x00, 0x01, 0x03, 0x04

	.section .data

	.global UNK_021064B8
UNK_021064B8: ; 0x021064B8
	.word FUN_020AE8B4

	.global UNK_021064BC
UNK_021064BC: ; 0x021064BC
	.word FUN_020AE8AC

	.global UNK_021064C0
UNK_021064C0: ; 0x021064C0
	.word FUN_020AE8C4

	.global UNK_021064C4
UNK_021064C4: ; 0x021064C4
	.word FUN_020AE8BC

	.global UNK_021064C8
UNK_021064C8: ; 0x021064C8
	.word UNK_021064E4
	.word UNK_0210652C

	.global UNK_021064D0
UNK_021064D0: ; 0x021064D0
	.word UNK_02106544
	.word UNK_0210652C
	.word UNK_021064E4
	.word UNK_02106514
	.word UNK_021064FC

	.global UNK_021064E4
UNK_021064E4: ; 0x021064E4
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00

	.global UNK_021064FC
UNK_021064FC: ; 0x021064FC
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x02, 0x00

	.global UNK_02106514
UNK_02106514: ; 0x02106514
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x03, 0x00

	.global UNK_0210652C
UNK_0210652C: ; 0x0210652C
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x04, 0x00

	.global UNK_02106544
UNK_02106544: ; 0x02106544
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x06, 0x00

	.global UNK_0210655C
UNK_0210655C: ; 0x0210655C
	.word FUN_020B1088
	.word FUN_020B1098
	.word 0
	.word 0
	.word 0

	.global UNK_02106570
UNK_02106570: ; 0x02106570
	.short -2

	.balign 4, 0
	.global UNK_02106574
UNK_02106574: ; 0x02106574
	.word -1

	.global UNK_02106578
UNK_02106578: ; 0x02106578
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106590
UNK_02106590: ; 0x02106590
	.byte 0x00, 0xF0, 0xFF, 0xFF

	.global UNK_02106594
UNK_02106594: ; 0x02106594
	.byte 0x05, 0x00, 0x00, 0x00

	.global UNK_02106598
UNK_02106598: ; 0x02106598
	.word FUN_020BE5A0

	.global UNK_0210659C
UNK_0210659C: ; 0x0210659C
	.word FUN_020BDA70

	.global UNK_021065A0
UNK_021065A0: ; 0x021065A0
	.word FUN_020BDF38

	.global UNK_021065A4
UNK_021065A4: ; 0x021065A4
	.word FUN_020BE334

	.global UNK_021065A8
UNK_021065A8: ; 0x021065A8
	.word FUN_020BDB40

	.global UNK_021065AC
UNK_021065AC: ; 0x021065AC
	.word FUN_020B8640

	.global UNK_021065B0
UNK_021065B0: ; 0x021065B0
	.word FUN_020B86B0

	.global UNK_021065B4
UNK_021065B4: ; 0x021065B4
	.word FUN_020B8A08

	.global UNK_021065B8
UNK_021065B8: ; 0x021065B8
	.byte 0x4D, 0x00, 0x41, 0x4D

	.global UNK_021065BC
UNK_021065BC: ; 0x021065BC
	.word FUN_020BDC0C
	.byte 0x4D, 0x00, 0x50, 0x54
	.word FUN_020BE4F0
	.byte 0x4D, 0x00, 0x41, 0x54
	.word FUN_020BDF84
	.byte 0x56, 0x00, 0x41, 0x56
	.word FUN_020BE5E0
	.byte 0x4A, 0x00, 0x41, 0x43
	.word FUN_020BDAB4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106608
UNK_02106608: ; 0x02106608
	.word FUN_020BE668
	.word FUN_020BEE3C
	.word FUN_020BF2FC

	.global UNK_02106614
UNK_02106614: ; 0x02106614
	.word FUN_020BE62C
	.word FUN_020BECEC
	.word FUN_020BF0D4

	.global UNK_02106620
UNK_02106620: ; 0x02106620
	.word FUN_020BE6E4
	.word FUN_020BEF10
	.word FUN_020BF42C
	.word FUN_020BFA9C

	.global UNK_02106630
UNK_02106630: ; 0x02106630
	.byte 0x2A, 0x00, 0x00, 0x00

	.global UNK_02106634
UNK_02106634: ; 0x02106634
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02106638
UNK_02106638: ; 0x02106638
	.byte 0x2A, 0x00, 0x00, 0x00

	.global UNK_0210663C
UNK_0210663C: ; 0x0210663C
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02106640
UNK_02106640: ; 0x02106640
	.word FUN_020BA58C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106650
UNK_02106650: ; 0x02106650
	.word FUN_020BA438
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106660
UNK_02106660: ; 0x02106660
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00

	.global UNK_021066A0
UNK_021066A0: ; 0x021066A0
	.byte 0x12, 0x10, 0x17, 0x1B

	.global UNK_021066A4
UNK_021066A4: ; 0x021066A4
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	.global UNK_021066AC
UNK_021066AC: ; 0x021066AC
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00

	.global UNK_021066D0
UNK_021066D0: ; 0x021066D0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_021066DC
UNK_021066DC: ; 0x021066DC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_021066E8
UNK_021066E8: ; 0x021066E8
	.byte 0x12, 0x10, 0x17, 0x1B

	.global UNK_021066EC
UNK_021066EC: ; 0x021066EC
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	.global UNK_021066F4
UNK_021066F4: ; 0x021066F4
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00

	.global UNK_02106718
UNK_02106718: ; 0x02106718
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106724
UNK_02106724: ; 0x02106724
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106730
UNK_02106730: ; 0x02106730
	.word FUN_020BAC70
	.word FUN_020BAC48
	.word FUN_020BAAC0
	.word FUN_020BA9EC
	.word FUN_020BA50C
	.word FUN_020BA3C4
	.word FUN_020B9F84
	.word FUN_020B9C54
	.word FUN_020B98C4
	.word FUN_020B9258
	.word FUN_020B9178
	.word FUN_020B9110
	.word FUN_020B8DF0
	.word FUN_020B8A60
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_021067B0
UNK_021067B0: ; 0x021067B0
	.word FUN_020BEBD8
	.word FUN_020BEB00
	.word FUN_020BEA84
	.word FUN_020BEA3C
	.word FUN_020BE954
	.word FUN_020BE894
	.word FUN_020BE850
	.word FUN_020BE82C

	.global UNK_021067D0
UNK_021067D0: ; 0x021067D0
	.word FUN_020BF988
	.word FUN_020BF894
	.word FUN_020BF810
	.word FUN_020BF7C8
	.word FUN_020BF6C8
	.word FUN_020BF5E8
	.word FUN_020BF598
	.word FUN_020BF574

	.global UNK_021067F0
UNK_021067F0: ; 0x021067F0
	.word FUN_020BFFD4
	.word FUN_020BFEEC
	.word FUN_020BFE68
	.word FUN_020BFE0C
	.word FUN_020BFD38
	.word FUN_020BFC8C
	.word FUN_020BFC4C
	.word FUN_020BFC28

	.section .bss

	.global UNK_021CCD48
UNK_021CCD48: ; 0x021CCD48
	.space 0x4

	.global UNK_021CCD4C
UNK_021CCD4C: ; 0x021CCD4C
	.space 0xc

	.global UNK_021CCD58
UNK_021CCD58: ; 0x021CCD58
	.space 0x14

	.global UNK_021CCD6C
UNK_021CCD6C: ; 0x021CCD6C
	.space 0x4

	.global UNK_021CCD70
UNK_021CCD70: ; 0x021CCD70
	.space 0x4

	.global UNK_021CCD74
UNK_021CCD74: ; 0x021CCD74
	.space 0x14

	.global UNK_021CCD88
UNK_021CCD88: ; 0x021CCD88
	.space 0x4

	.global UNK_021CCD8C
UNK_021CCD8C: ; 0x021CCD8C
	.space 0x10

	.global UNK_021CCD9C
UNK_021CCD9C: ; 0x021CCD9C
	.space 0x4

	.global UNK_021CCDA0
UNK_021CCDA0: ; 0x021CCDA0
	.space 0x100

	.global UNK_021CCEA0
UNK_021CCEA0: ; 0x021CCEA0
	.space 0x400

	.global UNK_021CD2A0
UNK_021CD2A0: ; 0x021CD2A0
	.space 0x40

	.global UNK_021CD2E0
UNK_021CD2E0: ; 0x021CD2E0
	.space 0x100

	.global UNK_021CD3E0
UNK_021CD3E0: ; 0x021CD3E0
	.space 0x400

	.global UNK_021CD7E0
UNK_021CD7E0: ; 0x021CD7E0
	.space 0x40

	.global UNK_021CD820
UNK_021CD820: ; 0x021CD820
	.space 0x100

	.global UNK_021CD920
UNK_021CD920: ; 0x021CD920
	.space 0x400

	.global UNK_021CDD20
UNK_021CDD20: ; 0x021CDD20
	.space 0x40

	.global UNK_021CDD60
UNK_021CDD60: ; 0x021CDD60
	.space 0x4

	.global UNK_021CDD64
UNK_021CDD64: ; 0x021CDD64
	.space 0x4

	.global UNK_021CDD68
UNK_021CDD68: ; 0x021CDD68
	.space 0x4

	.global UNK_021CDD6C
UNK_021CDD6C: ; 0x021CDD6C
	.space 0x4

	.global UNK_021CDD70
UNK_021CDD70: ; 0x021CDD70
	.space 0x4

	.global UNK_021CDD74
UNK_021CDD74: ; 0x021CDD74
	.space 0x80

	.global UNK_021CDDF4
UNK_021CDDF4: ; 0x021CDDF4
	.space 0x4

	.global UNK_021CDDF8
UNK_021CDDF8: ; 0x021CDDF8
	.space 0xfc

	.global UNK_021CDEF4
UNK_021CDEF4: ; 0x021CDEF4
	.space 0x10

	.global UNK_021CDF04
UNK_021CDF04: ; 0x021CDF04
	.space 0x4

	.global UNK_021CDF08
UNK_021CDF08: ; 0x021CDF08
	.space 0x2ec

	.global UNK_021CE1F4
UNK_021CE1F4: ; 0x021CE1F4
	.space 0x300

	.global UNK_021CE4F4
UNK_021CE4F4: ; 0x021CE4F4
	.space 0x400

	.global UNK_021CE8F4
UNK_021CE8F4: ; 0x021CE8F4
	.space 0x4

	.global UNK_021CE8F8
UNK_021CE8F8: ; 0x021CE8F8
	.space 0x404

	.global UNK_021CECFC
UNK_021CECFC: ; 0x021CECFC
	.space 0x4

	.global UNK_021CED00
UNK_021CED00: ; 0x021CED00
	.space 0x4

	.global UNK_021CED04
UNK_021CED04: ; 0x021CED04
	.space 0x4

	.global UNK_021CED08
UNK_021CED08: ; 0x021CED08
	.space 0x4

	.global UNK_021CED0C
UNK_021CED0C: ; 0x021CED0C
	.space 0x4

	.global UNK_021CED10
UNK_021CED10: ; 0x021CED10
	.space 0x4

	.global UNK_021CED14
UNK_021CED14: ; 0x021CED14
	.space 0x4

	.global UNK_021CED18
UNK_021CED18: ; 0x021CED18
	.space 0x8

	.global UNK_021CED20
UNK_021CED20: ; 0x021CED20
	.space 0x44

	.global UNK_021CED64
UNK_021CED64: ; 0x021CED64
	.space 0x34

	.global UNK_021CED98
UNK_021CED98: ; 0x021CED98
	.space 0x28

	.global UNK_021CEDC0
UNK_021CEDC0: ; 0x021CEDC0
	.space 0x14

	.global UNK_021CEDD4
UNK_021CEDD4: ; 0x021CEDD4
	.space 0x24

	.global UNK_021CEDF8
UNK_021CEDF8: ; 0x021CEDF8
	.space 0xc

	.global UNK_021CEE04
UNK_021CEE04: ; 0x021CEE04
	.space 0x14

	.global UNK_021CEE18
UNK_021CEE18: ; 0x021CEE18
	.space 0x30

	.global UNK_021CEE48
UNK_021CEE48: ; 0x021CEE48
	.space 0x30

	.global UNK_021CEE78
UNK_021CEE78: ; 0x021CEE78
	.space 0xe0

	.global UNK_021CEF58
UNK_021CEF58: ; 0x021CEF58
	.space 0xc

	.global UNK_021CEF64
UNK_021CEF64: ; 0x021CEF64
	.space 0xc

	.global UNK_021CEF70
UNK_021CEF70: ; 0x021CEF70
	.space 0xc

	.global UNK_021CEF7C
UNK_021CEF7C: ; 0x021CEF7C
	.space 0x4

	.global UNK_021CEF80
UNK_021CEF80: ; 0x021CEF80
	.space 0xe00

	.global UNK_021CFD80
UNK_021CFD80: ; 0x021CFD80
	.space 0x4

	.global UNK_021CFD84
UNK_021CFD84: ; 0x021CFD84
	.space 0x4

	.global UNK_021CFD88
UNK_021CFD88: ; 0x021CFD88
	.space 0x4

	.global UNK_021CFD8C
UNK_021CFD8C: ; 0x021CFD8C
	.space 0x4

	.global UNK_021CFD90
UNK_021CFD90: ; 0x021CFD90
	.space 0x4

	.global UNK_021CFD94
UNK_021CFD94: ; 0x021CFD94
	.space 0x2ba

	.global UNK_021D004E
UNK_021D004E: ; 0x021D004E
	.space 0x332

	.global UNK_021D0380
UNK_021D0380: ; 0x021D0380
	.space 0x40

	.global UNK_021D03C0
UNK_021D03C0: ; 0x021D03C0
	.space 0xb42

	.global UNK_021D0F02
UNK_021D0F02: ; 0x021D0F02
	.space 0xd7e

	.global UNK_021D1C80
UNK_021D1C80: ; 0x021D1C80
	.space 0x4

	.global UNK_021D1C84
UNK_021D1C84: ; 0x021D1C84
	.space 0x4

	.global UNK_021D1C88
UNK_021D1C88: ; 0x021D1C88
	.space 0x4

	.text

	arm_func_start FUN_020AE8AC
FUN_020AE8AC: ; 0x020AE8AC
	mvn r0, #0x0
	bx lr
	arm_func_end FUN_020AE8AC

	arm_func_start FUN_020AE8B4
FUN_020AE8B4: ; 0x020AE8B4
	mov r0, #0x0
	bx lr
	arm_func_end FUN_020AE8B4

	arm_func_start FUN_020AE8BC
FUN_020AE8BC: ; 0x020AE8BC
	mvn r0, #0x0
	bx lr
	arm_func_end FUN_020AE8BC

	arm_func_start FUN_020AE8C4
FUN_020AE8C4: ; 0x020AE8C4
	mov r0, #0x0
	bx lr
	arm_func_end FUN_020AE8C4

	arm_func_start FUN_020AE8CC
FUN_020AE8CC: ; 0x020AE8CC
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov lr, #0x0
	ldr r3, _020AE914 ; =UNK_021064E4
	mov r12, lr
	mov r2, #0x1
_020AE8E4:
	ldr r1, [r0, r12, lsl #0x2]
	add lr, lr, #0x1
	str r1, [r3, #0x0]
	ldr r1, [r0, r2, lsl #0x2]
	cmp lr, #0x5
	str r1, [r3, #0x4]
	add r12, r12, #0x2
	add r3, r3, #0x18
	add r2, r2, #0x2
	blt _020AE8E4
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020AE914: .word UNK_021064E4
	arm_func_end FUN_020AE8CC

	arm_func_start FUN_020AE918
FUN_020AE918: ; 0x020AE918
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov lr, #0x0
	ldr ip, _020AE960 ; =UNK_021064E4
	mov r3, lr
	mov r2, #0x1
_020AE930:
	ldr r1, [r12, #0x0]
	add lr, lr, #0x1
	str r1, [r0, r3, lsl #0x2]
	ldr r1, [r12, #0x4]
	cmp lr, #0x5
	str r1, [r0, r2, lsl #0x2]
	add r12, r12, #0x18
	add r3, r3, #0x2
	add r2, r2, #0x2
	blt _020AE930
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020AE960: .word UNK_021064E4
	arm_func_end FUN_020AE918

	arm_func_start FUN_020AE964
FUN_020AE964: ; 0x020AE964
	mov r0, #0x0
	bx lr
	arm_func_end FUN_020AE964

	arm_func_start FUN_020AE96C
FUN_020AE96C: ; 0x020AE96C
	stmdb sp!, {r4-r10,lr}
	cmp r0, #0x0
	moveq r7, #0x10
	addne r0, r0, #0xf
	bicne r7, r0, #0xf
	ldr r0, _020AEADC ; =0x0007FFF0
	cmp r7, r0
	movcs r0, #0x0
	ldmcsia sp!, {r4-r10,pc}
	cmp r1, #0x0
	beq _020AEA5C
	mov lr, r7, lsr #0x1
	mov r6, #0x0
	ldr r2, _020AEAE0 ; =UNK_02106514
	ldr r3, _020AEAE4 ; =UNK_021064FC
	ldr ip, _020AEAE8 ; =UNK_021064C8
	mov r0, r6
_020AE9B0:
	ldr r5, [r12, r6, lsl #0x2]
	ldr r4, [r5, #0x8]
	cmp r4, #0x0
	beq _020AEA48
	ldr r9, [r5, #0x4]
	ldr r4, [r5, #0x0]
	sub r4, r9, r4
	cmp r4, r7
	blo _020AEA48
	ldrh r4, [r5, #0x10]
	cmp r4, #0x0
	beq _020AE9EC
	cmp r4, #0x3
	beq _020AE9F4
	b _020AE9FC
_020AE9EC:
	mov r4, r3
	b _020AEA00
_020AE9F4:
	mov r4, r2
	b _020AEA00
_020AE9FC:
	mov r4, r0
_020AEA00:
	ldr r9, [r4, #0x8]
	cmp r9, #0x0
	beq _020AEA48
	ldr r10, [r4, #0x4]
	ldr r9, [r4, #0x0]
	sub r9, r10, r9
	cmp r9, lr
	blo _020AEA48
	ldr r3, [r5, #0x0]
	mov r0, #0x1
	add r2, r3, r7
	str r2, [r5, #0x0]
	ldr r2, [r4, #0x0]
	add r2, r2, lr
	str r2, [r4, #0x0]
	ldr r2, [r5, #0x14]
	add r8, r3, r2
	b _020AEAB8
_020AEA48:
	add r6, r6, #0x1
	cmp r6, #0x2
	blt _020AE9B0
	mov r0, #0x0
	b _020AEAB8
_020AEA5C:
	ldr r3, _020AEAEC ; =UNK_021064D0
	mov r5, #0x0
_020AEA64:
	ldr r4, [r3, r5, lsl #0x2]
	ldr r0, [r4, #0x8]
	cmp r0, #0x0
	beq _020AEAA8
	ldr r2, [r4, #0x4]
	ldr r0, [r4, #0x0]
	sub r0, r2, r0
	cmp r0, r7
	blo _020AEAA8
	ldr r2, [r4, #0x4]
	mov r0, #0x1
	sub r2, r2, r7
	str r2, [r4, #0x4]
	ldr r3, [r4, #0x4]
	ldr r2, [r4, #0x14]
	add r8, r3, r2
	b _020AEAB8
_020AEAA8:
	add r5, r5, #0x1
	cmp r5, #0x5
	blt _020AEA64
	mov r0, #0x0
_020AEAB8:
	cmp r0, #0x0
	moveq r0, #0x0
	ldmeqia sp!, {r4-r10,pc}
	ldr r0, _020AEAF0 ; =0x0000FFFF
	mov r2, r7, lsr #0x4
	and r0, r0, r8, lsr #0x3
	orr r0, r0, r2, lsl #0x10
	orr r0, r0, r1, lsl #0x1f
	ldmia sp!, {r4-r10,pc}
	.balign 4
_020AEADC: .word 0x0007FFF0
_020AEAE0: .word UNK_02106514
_020AEAE4: .word UNK_021064FC
_020AEAE8: .word UNK_021064C8
_020AEAEC: .word UNK_021064D0
_020AEAF0: .word 0x0000FFFF
	arm_func_end FUN_020AE96C

	arm_func_start FUN_020AEAF4
FUN_020AEAF4:
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldr r0, _020AEB68 ; =UNK_021CCD48
	mov r6, #0x0
	ldrh r7, [r0, #0x0]
	ldr r5, _020AEB6C ; =UNK_021064E4
	mov lr, r6
	cmp r7, #0x1
	addhi r7, r7, #0x1
	mov r1, r6
	mov r3, r6
	mov r4, #0x1
	mov r0, #0x20000
	mov r2, #0x10000
_020AEB2C:
	cmp r6, r7
	strlt r4, [r5, #0x8]
	strge lr, [r5, #0x8]
	ldr r12, [r5, #0xc]
	add r6, r6, #0x1
	cmp r12, #0x0
	strne r3, [r5, #0x0]
	strne r2, [r5, #0x4]
	streq r1, [r5, #0x0]
	streq r0, [r5, #0x4]
	cmp r6, #0x5
	add r5, r5, #0x18
	blt _020AEB2C
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020AEB68: .word UNK_021CCD48
_020AEB6C: .word UNK_021064E4
	arm_func_end FUN_020AEAF4

	arm_func_start FUN_020AEB70
FUN_020AEB70: ; 0x020AEB70
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	mov r4, r1
	cmp r5, #0x2
	bhi _020AEBA8
	mov r12, #0x1
	mov r0, #0x4
	mov r1, #0x3
	mov r2, #0x2
	mov r3, #0x0
	str r12, [sp, #0x0]
	bl FUN_020AEC10
	b _020AEBC4
_020AEBA8:
	mov r12, #0x1
	mov r0, #0x4
	mov r1, #0x3
	mov r2, #0x0
	mov r3, #0x2
	str r12, [sp, #0x0]
	bl FUN_020AEC10
_020AEBC4:
	ldr r0, _020AEBFC ; =UNK_021CCD48
	strh r5, [r0, #0x0]
	bl FUN_020AEAF4
	cmp r4, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r5,pc}
	ldr r3, _020AEC00 ; =FUN_020AE96C
	ldr r1, _020AEC04 ; =UNK_021064B8
	ldr r2, _020AEC08 ; =FUN_020AE964
	ldr r0, _020AEC0C ; =UNK_021064BC
	str r3, [r1, #0x0]
	str r2, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020AEBFC: .word UNK_021CCD48
_020AEC00: .word FUN_020AE96C
_020AEC04: .word UNK_021064B8
_020AEC08: .word FUN_020AE964
_020AEC0C: .word UNK_021064BC
	arm_func_end FUN_020AEB70

	arm_func_start FUN_020AEC10
FUN_020AEC10: ; 0x020AEC10
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldr lr, [sp, #0x18]
	ldr r6, _020AEC58 ; =UNK_021064E4
	mov r12, #0x18
	mla r7, r0, r12, r6
	ldr r0, _020AEC5C ; =UNK_021064D0
	mla r5, r1, r12, r6
	mla r4, r2, r12, r6
	mla r2, r3, r12, r6
	mla r1, lr, r12, r6
	str r7, [r0, #0x0]
	str r5, [r0, #0x4]
	str r4, [r0, #0x8]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020AEC58: .word UNK_021064E4
_020AEC5C: .word UNK_021064D0
	arm_func_end FUN_020AEC10

	arm_func_start FUN_020AEC60
FUN_020AEC60:
	ldr r0, _020AEC78 ; =UNK_021CCD4C
	mov r2, #0x0
	ldr r1, [r0, #0x8]
	str r2, [r0, #0x0]
	str r1, [r0, #0x4]
	bx lr
	.balign 4
_020AEC78: .word UNK_021CCD4C
	arm_func_end FUN_020AEC60

	arm_func_start FUN_020AEC7C
FUN_020AEC7C: ; 0x020AEC7C
	ldr r2, [r0, #0x0]
	ldr r1, _020AEC94 ; =UNK_021CCD4C
	str r2, [r1, #0x0]
	ldr r0, [r0, #0x4]
	str r0, [r1, #0x4]
	bx lr
	.balign 4
_020AEC94: .word UNK_021CCD4C
	arm_func_end FUN_020AEC7C

	arm_func_start FUN_020AEC98
FUN_020AEC98: ; 0x020AEC98
	ldr r1, _020AECB0 ; =UNK_021CCD4C
	ldr r2, [r1, #0x0]
	str r2, [r0, #0x0]
	ldr r1, [r1, #0x4]
	str r1, [r0, #0x4]
	bx lr
	.balign 4
_020AECB0: .word UNK_021CCD4C
	arm_func_end FUN_020AEC98

	arm_func_start FUN_020AECB4
FUN_020AECB4: ; 0x020AECB4
	mov r0, #0x0
	bx lr
	arm_func_end FUN_020AECB4

	arm_func_start FUN_020AECBC
FUN_020AECBC: ; 0x020AECBC
	stmdb sp!, {r4,lr}
	cmp r0, #0x0
	moveq r0, #0x8
	addne r0, r0, #0x7
	ldr ip, _020AEDE8 ; =0x0007FFF8
	bicne r0, r0, #0x7
	cmp r0, r12
	mov r3, #0x0
	movcs r0, #0x0
	ldmcsia sp!, {r4,pc}
	cmp r2, #0x1
	bne _020AED64
	ldr r2, _020AEDEC ; =UNK_021CCD4C
	cmp r1, #0x0
	ldr r12, [r2, #0x0]
	andne r2, r12, #0x7
	rsbne r2, r2, #0x8
	andne r4, r2, #0x7
	andeq r2, r12, #0xf
	rsbeq r2, r2, #0x10
	andeq r4, r2, #0xf
	ldr r2, _020AEDEC ; =UNK_021CCD4C
	add lr, r0, r4
	ldr r2, [r2, #0x4]
	sub r2, r2, r12
	cmp r2, lr
	blo _020AED5C
	cmp r1, #0x0
	add r1, r12, lr
	beq _020AED40
	cmp r1, #0x10000
	movhi r12, #0x0
	bhi _020AEDCC
_020AED40:
	ldr r1, _020AEDEC ; =UNK_021CCD4C
	add r3, r12, r4
	ldr r2, [r1, #0x0]
	mov r12, #0x1
	add r2, r2, lr
	str r2, [r1, #0x0]
	b _020AEDCC
_020AED5C:
	mov r12, #0x0
	b _020AEDCC
_020AED64:
	ldr r2, _020AEDEC ; =UNK_021CCD4C
	ldr r12, [r2, #0x4]
	cmp r12, r0
	blo _020AEDC8
	sub r2, r12, r0
	cmp r1, #0x0
	andne r4, r2, #0x7
	andeq r4, r2, #0xf
	ldr r2, _020AEDEC ; =UNK_021CCD4C
	add lr, r0, r4
	ldr r2, [r2, #0x0]
	sub r2, r12, r2
	cmp r2, lr
	blo _020AEDC8
	cmp r1, #0x0
	beq _020AEDB0
	cmp r12, #0x10000
	movhi r12, #0x0
	bhi _020AEDCC
_020AEDB0:
	ldr r1, _020AEDEC ; =UNK_021CCD4C
	mov r12, #0x1
	ldr r2, [r1, #0x4]
	sub r3, r2, lr
	str r3, [r1, #0x4]
	b _020AEDCC
_020AEDC8:
	mov r12, #0x0
_020AEDCC:
	cmp r12, #0x0
	ldrne r1, _020AEDF0 ; =0x0000FFFF
	movne r2, r0, lsr #0x3
	andne r0, r1, r3, lsr #0x3
	orrne r0, r0, r2, lsl #0x10
	moveq r0, #0x0
	ldmia sp!, {r4,pc}
	.balign 4
_020AEDE8: .word 0x0007FFF8
_020AEDEC: .word UNK_021CCD4C
_020AEDF0: .word 0x0000FFFF
	arm_func_end FUN_020AECBC

	arm_func_start FUN_020AEDF4
FUN_020AEDF4: ; 0x020AEDF4
	stmdb sp!, {r4,lr}
	ldr r2, _020AEE2C ; =UNK_021CCD4C
	mov r4, r1
	str r0, [r2, #0x8]
	bl FUN_020AEC60
	cmp r4, #0x0
	ldmeqia sp!, {r4,pc}
	ldr r3, _020AEE30 ; =FUN_020AECBC
	ldr r1, _020AEE34 ; =UNK_021064C0
	ldr r2, _020AEE38 ; =FUN_020AECB4
	ldr r0, _020AEE3C ; =UNK_021064C4
	str r3, [r1, #0x0]
	str r2, [r0, #0x0]
	ldmia sp!, {r4,pc}
	.balign 4
_020AEE2C: .word UNK_021CCD4C
_020AEE30: .word FUN_020AECBC
_020AEE34: .word UNK_021064C0
_020AEE38: .word FUN_020AECB4
_020AEE3C: .word UNK_021064C4
	arm_func_end FUN_020AEDF4

	arm_func_start FUN_020AEE40
FUN_020AEE40: ; 0x020AEE40
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	ldr r5, _020AEEB4 ; =UNK_021CCD58
	mov r9, r0
	mov r0, r5
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl FUN_020AF2F4
	cmp r0, #0x0
	addne sp, sp, #0x4
	movne r0, #0x0
	ldmneia sp!, {r4-r9,pc}
	mov r0, r5
	bl FUN_020AEF78
	mov r4, r0
	str r9, [r4, #0x0]
	str r7, [r4, #0x4]
	str r8, [r4, #0x8]
	mov r0, r5
	str r6, [r4, #0xc]
	bl FUN_020AEF98
	ldr r2, [r5, #0x10]
	ldr r1, [r4, #0xc]
	mov r0, #0x1
	add r1, r2, r1
	str r1, [r5, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	.balign 4
_020AEEB4: .word UNK_021CCD58
	arm_func_end FUN_020AEE40

	arm_func_start FUN_020AEEB8
FUN_020AEEB8: ; 0x020AEEB8
	stmdb sp!, {r4-r6,lr}
	ldr r6, _020AEF18 ; =UNK_021CCD58
	mov r0, r6
	bl FUN_020AEF88
	mov r5, r0
	mov r0, r6
	bl FUN_020AEF3C
	cmp r0, #0x0
	ldmeqia sp!, {r4-r6,pc}
	add r4, r6, #0x10
_020AEEE0:
	mov r0, r5
	bl FUN_020AEFF0
	ldr r2, [r4, #0x0]
	ldr r1, [r5, #0xc]
	mov r0, r6
	sub r1, r2, r1
	str r1, [r4, #0x0]
	bl FUN_020AEF88
	mov r5, r0
	mov r0, r6
	bl FUN_020AEF3C
	cmp r0, #0x0
	bne _020AEEE0
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020AEF18: .word UNK_021CCD58
	arm_func_end FUN_020AEEB8

	arm_func_start FUN_020AEF1C
FUN_020AEF1C: ; 0x020AEF1C
	ldr r2, _020AEF34 ; =UNK_021CCD58
	ldr ip, _020AEF38 ; =FUN_020AEFD4
	str r0, [r2, #0x0]
	mov r0, r2
	str r1, [r2, #0x4]
	bx r12
	.balign 4
_020AEF34: .word UNK_021CCD58
_020AEF38: .word FUN_020AEFD4
	arm_func_end FUN_020AEF1C

	arm_func_start FUN_020AEF3C
FUN_020AEF3C:
	stmdb sp!, {r4,lr}
	mov r4, r0
	bl FUN_020AF2E0
	cmp r0, #0x0
	movne r0, #0x0
	ldmneia sp!, {r4,pc}
	ldrh r1, [r4, #0x8]
	mov r0, r4
	bl FUN_020AF30C
	strh r0, [r4, #0x8]
	ldrh r1, [r4, #0xc]
	mov r0, #0x1
	sub r1, r1, #0x1
	strh r1, [r4, #0xc]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020AEF3C

	arm_func_start FUN_020AEF78
FUN_020AEF78: ; 0x020AEF78
	ldrh r1, [r0, #0xa]
	ldr r0, [r0, #0x0]
	add r0, r0, r1, lsl #0x4
	bx lr
	arm_func_end FUN_020AEF78

	arm_func_start FUN_020AEF88
FUN_020AEF88: ; 0x020AEF88
	ldrh r1, [r0, #0x8]
	ldr r0, [r0, #0x0]
	add r0, r0, r1, lsl #0x4
	bx lr
	arm_func_end FUN_020AEF88

	arm_func_start FUN_020AEF98
FUN_020AEF98: ; 0x020AEF98
	stmdb sp!, {r4,lr}
	mov r4, r0
	bl FUN_020AF2F4
	cmp r0, #0x0
	movne r0, #0x0
	ldmneia sp!, {r4,pc}
	ldrh r1, [r4, #0xa]
	mov r0, r4
	bl FUN_020AF30C
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	mov r0, #0x1
	add r1, r1, #0x1
	strh r1, [r4, #0xc]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020AEF98

	arm_func_start FUN_020AEFD4
FUN_020AEFD4: ; 0x020AEFD4
	mov r2, #0x0
	strh r2, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	strh r1, [r0, #0x8]
	strh r2, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	arm_func_end FUN_020AEFD4

	arm_func_start FUN_020AEFF0
FUN_020AEFF0: ; 0x020AEFF0
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	ldr r3, [r5, #0x0]
	ldr r2, _020AF02C ; =UNK_020FF7D4
	ldr r0, [r5, #0x4]
	ldr r1, [r5, #0xc]
	ldr r4, [r2, r3, lsl #0x2]
	bl DC_FlushRange
	ldr r0, [r5, #0x4]
	ldr r1, [r5, #0x8]
	ldr r2, [r5, #0xc]
	blx r4
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020AF02C: .word UNK_020FF7D4
	arm_func_end FUN_020AEFF0

	arm_func_start GXS_LoadOBJ_2
GXS_LoadOBJ_2:
	ldr ip, _020AF038 ; =GXS_LoadOBJ
	bx r12
	.balign 4
_020AF038: .word GXS_LoadOBJ
	arm_func_end GXS_LoadOBJ_2

	arm_func_start GXS_LoadOAM_2
GXS_LoadOAM_2: ; 0x020AF03C
	ldr ip, _020AF044 ; =GXS_LoadOAM
	bx r12
	.balign 4
_020AF044: .word GXS_LoadOAM
	arm_func_end GXS_LoadOAM_2

	arm_func_start FUN_020AF048
FUN_020AF048: ; 0x020AF048
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GXS_BeginLoadBGExtPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020AF048

	arm_func_start FUN_020AF074
FUN_020AF074: ; 0x020AF074
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GXS_BeginLoadOBJExtPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GXS_LoadOBJExtPltt
	bl GXS_EndLoadOBJExtPltt
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020AF074

	arm_func_start GXS_LoadBGPltt_2
GXS_LoadBGPltt_2: ; 0x020AF0A0
	ldr ip, _020AF0A8 ; =GXS_LoadBGPltt
	bx r12
	.balign 4
_020AF0A8: .word GXS_LoadBGPltt
	arm_func_end GXS_LoadBGPltt_2

	arm_func_start GXS_LoadOBJPltt_2
GXS_LoadOBJPltt_2: ; 0x020AF0AC
	ldr ip, _020AF0B4 ; =GXS_LoadOBJPltt
	bx r12
	.balign 4
_020AF0B4: .word GXS_LoadOBJPltt
	arm_func_end GXS_LoadOBJPltt_2

	arm_func_start GXS_LoadBG3Scr_3
GXS_LoadBG3Scr_3: ; 0x020AF0B8
	ldr ip, _020AF0C0 ; =GXS_LoadBG3Scr
	bx r12
	.balign 4
_020AF0C0: .word GXS_LoadBG3Scr
	arm_func_end GXS_LoadBG3Scr_3

	arm_func_start GXS_LoadBG2Scr_3
GXS_LoadBG2Scr_3: ; 0x020AF0C4
	ldr ip, _020AF0CC ; =GXS_LoadBG2Scr
	bx r12
	.balign 4
_020AF0CC: .word GXS_LoadBG2Scr
	arm_func_end GXS_LoadBG2Scr_3

	arm_func_start GXS_LoadBG3Scr_2
GXS_LoadBG3Scr_2: ; 0x020AF0D0
	ldr ip, _020AF0D8 ; =GXS_LoadBG3Scr
	bx r12
	.balign 4
_020AF0D8: .word GXS_LoadBG3Scr
	arm_func_end GXS_LoadBG3Scr_2

	arm_func_start GXS_LoadBG2Scr_2
GXS_LoadBG2Scr_2: ; 0x020AF0DC
	ldr ip, _020AF0E4 ; =GXS_LoadBG2Scr
	bx r12
	.balign 4
_020AF0E4: .word GXS_LoadBG2Scr
	arm_func_end GXS_LoadBG2Scr_2

	arm_func_start GXS_LoadBG1Scr_2
GXS_LoadBG1Scr_2: ; 0x020AF0E8
	ldr ip, _020AF0F0 ; =GXS_LoadBG1Scr
	bx r12
	.balign 4
_020AF0F0: .word GXS_LoadBG1Scr
	arm_func_end GXS_LoadBG1Scr_2

	arm_func_start GXS_LoadBG0Scr_2
GXS_LoadBG0Scr_2: ; 0x020AF0F4
	ldr ip, _020AF0FC ; =GXS_LoadBG0Scr
	bx r12
	.balign 4
_020AF0FC: .word GXS_LoadBG0Scr
	arm_func_end GXS_LoadBG0Scr_2

	arm_func_start GXS_LoadBG3Char_2
GXS_LoadBG3Char_2: ; 0x020AF100
	ldr ip, _020AF108 ; =GXS_LoadBG3Char
	bx r12
	.balign 4
_020AF108: .word GXS_LoadBG3Char
	arm_func_end GXS_LoadBG3Char_2

	arm_func_start GXS_LoadBG2Char_2
GXS_LoadBG2Char_2: ; 0x020AF10C
	ldr ip, _020AF114 ; =GXS_LoadBG2Char
	bx r12
	.balign 4
_020AF114: .word GXS_LoadBG2Char
	arm_func_end GXS_LoadBG2Char_2

	arm_func_start GXS_LoadBG1Char_2
GXS_LoadBG1Char_2: ; 0x020AF118
	ldr ip, _020AF120 ; =GXS_LoadBG1Char
	bx r12
	.balign 4
_020AF120: .word GXS_LoadBG1Char
	arm_func_end GXS_LoadBG1Char_2

	arm_func_start GXS_LoadBG0Char_2
GXS_LoadBG0Char_2: ; 0x020AF124
	ldr ip, _020AF12C ; =GXS_LoadBG0Char
	bx r12
	.balign 4
_020AF12C: .word GXS_LoadBG0Char
	arm_func_end GXS_LoadBG0Char_2

	arm_func_start GX_LoadOBJ_2
GX_LoadOBJ_2: ; 0x020AF130
	ldr ip, _020AF138 ; =GX_LoadOBJ
	bx r12
	.balign 4
_020AF138: .word GX_LoadOBJ
	arm_func_end GX_LoadOBJ_2

	arm_func_start GX_LoadOAM_2
GX_LoadOAM_2: ; 0x020AF13C
	ldr ip, _020AF144 ; =GX_LoadOAM
	bx r12
	.balign 4
_020AF144: .word GX_LoadOAM
	arm_func_end GX_LoadOAM_2

	arm_func_start FUN_020AF148
FUN_020AF148: ; 0x020AF148
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GX_BeginLoadBGExtPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020AF148

	arm_func_start FUN_020AF174
FUN_020AF174: ; 0x020AF174
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GX_BeginLoadOBJExtPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GX_LoadOBJExtPltt
	bl GX_EndLoadOBJExtPltt
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020AF174

	arm_func_start GX_LoadBGPltt_2
GX_LoadBGPltt_2: ; 0x020AF1A0
	ldr ip, _020AF1A8 ; =GX_LoadBGPltt
	bx r12
	.balign 4
_020AF1A8: .word GX_LoadBGPltt
	arm_func_end GX_LoadBGPltt_2

	arm_func_start GX_LoadOBJPltt_2
GX_LoadOBJPltt_2: ; 0x020AF1AC
	ldr ip, _020AF1B4 ; =GX_LoadOBJPltt
	bx r12
	.balign 4
_020AF1B4: .word GX_LoadOBJPltt
	arm_func_end GX_LoadOBJPltt_2

	arm_func_start GX_LoadBG3Scr_3
GX_LoadBG3Scr_3: ; 0x020AF1B8
	ldr ip, _020AF1C0 ; =GX_LoadBG3Scr
	bx r12
	.balign 4
_020AF1C0: .word GX_LoadBG3Scr
	arm_func_end GX_LoadBG3Scr_3

	arm_func_start GX_LoadBG2Scr_3
GX_LoadBG2Scr_3: ; 0x020AF1C4
	ldr ip, _020AF1CC ; =GX_LoadBG2Scr
	bx r12
	.balign 4
_020AF1CC: .word GX_LoadBG2Scr
	arm_func_end GX_LoadBG2Scr_3

	arm_func_start GX_LoadBG3Scr_2
GX_LoadBG3Scr_2: ; 0x020AF1D0
	ldr ip, _020AF1D8 ; =GX_LoadBG3Scr
	bx r12
	.balign 4
_020AF1D8: .word GX_LoadBG3Scr
	arm_func_end GX_LoadBG3Scr_2

	arm_func_start GX_LoadBG2Scr_2
GX_LoadBG2Scr_2: ; 0x020AF1DC
	ldr ip, _020AF1E4 ; =GX_LoadBG2Scr
	bx r12
	.balign 4
_020AF1E4: .word GX_LoadBG2Scr
	arm_func_end GX_LoadBG2Scr_2

	arm_func_start GX_LoadBG1Scr_2
GX_LoadBG1Scr_2: ; 0x020AF1E8
	ldr ip, _020AF1F0 ; =GX_LoadBG1Scr
	bx r12
	.balign 4
_020AF1F0: .word GX_LoadBG1Scr
	arm_func_end GX_LoadBG1Scr_2

	arm_func_start GX_LoadBG0Scr_2
GX_LoadBG0Scr_2: ; 0x020AF1F4
	ldr ip, _020AF1FC ; =GX_LoadBG0Scr
	bx r12
	.balign 4
_020AF1FC: .word GX_LoadBG0Scr
	arm_func_end GX_LoadBG0Scr_2

	arm_func_start GX_LoadBG3Char_2
GX_LoadBG3Char_2: ; 0x020AF200
	ldr ip, _020AF208 ; =GX_LoadBG3Char
	bx r12
	.balign 4
_020AF208: .word GX_LoadBG3Char
	arm_func_end GX_LoadBG3Char_2

	arm_func_start GX_LoadBG2Char_2
GX_LoadBG2Char_2: ; 0x020AF20C
	ldr ip, _020AF214 ; =GX_LoadBG2Char
	bx r12
	.balign 4
_020AF214: .word GX_LoadBG2Char
	arm_func_end GX_LoadBG2Char_2

	arm_func_start GX_LoadBG1Char_2
GX_LoadBG1Char_2: ; 0x020AF218
	ldr ip, _020AF220 ; =GX_LoadBG1Char
	bx r12
	.balign 4
_020AF220: .word GX_LoadBG1Char
	arm_func_end GX_LoadBG1Char_2

	arm_func_start GX_LoadBG0Char_2
GX_LoadBG0Char_2: ; 0x020AF224
	ldr ip, _020AF22C ; =GX_LoadBG0Char
	bx r12
	.balign 4
_020AF22C: .word GX_LoadBG0Char
	arm_func_end GX_LoadBG0Char_2

	arm_func_start FUN_020AF230
FUN_020AF230: ; 0x020AF230
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	mov r4, r2
	bl GX_BeginLoadClearImage
	mov r0, r5
	mov r1, r4
	bl GX_LoadClearImageDepth
	bl GX_EndLoadClearImage
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020AF230

	arm_func_start FUN_020AF25C
FUN_020AF25C: ; 0x020AF25C
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	mov r4, r2
	bl GX_BeginLoadClearImage
	mov r0, r5
	mov r1, r4
	bl GX_LoadClearImageColor
	bl GX_EndLoadClearImage
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020AF25C

	arm_func_start FUN_020AF288
FUN_020AF288: ; 0x020AF288
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GX_BeginLoadTexPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020AF288

	arm_func_start FUN_020AF2B4
FUN_020AF2B4: ; 0x020AF2B4
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GX_BeginLoadTex
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GX_LoadTex
	bl GX_EndLoadTex
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020AF2B4

	arm_func_start FUN_020AF2E0
FUN_020AF2E0: ; 0x020AF2E0
	ldrh r0, [r0, #0xc]
	cmp r0, #0x0
	moveq r0, #0x1
	movne r0, #0x0
	bx lr
	arm_func_end FUN_020AF2E0

	arm_func_start FUN_020AF2F4
FUN_020AF2F4: ; 0x020AF2F4
	ldrh r1, [r0, #0xc]
	ldr r0, [r0, #0x4]
	cmp r1, r0
	moveq r0, #0x1
	movne r0, #0x0
	bx lr
	arm_func_end FUN_020AF2F4

	arm_func_start FUN_020AF30C
FUN_020AF30C: ; 0x020AF30C
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov r2, r0
	add r0, r1, #0x1
	ldr r1, [r2, #0x4]
	bl _u32_div_f
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020AF30C

	arm_func_start FUN_020AF334
FUN_020AF334:
	stmdb sp!, {r4-r6,lr}
	sub sp, sp, #0x10
	add r3, r2, r3
	str r2, [sp, #0x0]
	str r2, [sp, #0x8]
	str r3, [sp, #0x4]
	str r3, [sp, #0xc]
	ldr r3, [r0, #0x0]
	add r12, sp, #0x0
	cmp r3, #0x0
	beq _020AF418
	mov r6, #0x0
_020AF364:
	ldr r5, [r3, #0x0]
	ldr r4, [r12, #0x4]
	ldr r2, [r3, #0xc]
	cmp r5, r4
	bne _020AF3B8
	ldr r4, [r3, #0x4]
	add r4, r5, r4
	str r4, [sp, #0xc]
	ldr r4, [r3, #0x8]
	cmp r4, #0x0
	strne r2, [r4, #0xc]
	streq r2, [r0, #0x0]
	cmp r2, #0x0
	strne r4, [r2, #0x8]
	ldr r4, [r1, #0x0]
	cmp r4, #0x0
	strne r3, [r4, #0x8]
	ldr r4, [r1, #0x0]
	str r4, [r3, #0xc]
	str r6, [r3, #0x8]
	str r3, [r1, #0x0]
_020AF3B8:
	ldr r5, [r3, #0x0]
	ldr lr, [r3, #0x4]
	ldr r4, [r12, #0x0]
	add lr, r5, lr
	cmp r4, lr
	bne _020AF40C
	str r5, [sp, #0x8]
	ldr r5, [r3, #0x8]
	ldr r4, [r3, #0xc]
	cmp r5, #0x0
	strne r4, [r5, #0xc]
	streq r4, [r0, #0x0]
	cmp r4, #0x0
	strne r5, [r4, #0x8]
	ldr lr, [r1, #0x0]
	cmp lr, #0x0
	strne r3, [lr, #0x8]
	ldr lr, [r1, #0x0]
	str lr, [r3, #0xc]
	str r6, [r3, #0x8]
	str r3, [r1, #0x0]
_020AF40C:
	mov r3, r2
	cmp r2, #0x0
	bne _020AF364
_020AF418:
	ldr r4, [r1, #0x0]
	cmp r4, #0x0
	ldrne r2, [r4, #0xc]
	strne r2, [r1, #0x0]
	cmp r4, #0x0
	addeq sp, sp, #0x10
	moveq r0, #0x0
	ldmeqia sp!, {r4-r6,pc}
	ldr r2, [sp, #0x8]
	mov r1, #0x0
	str r2, [r4, #0x0]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x8]
	sub r2, r3, r2
	str r2, [r4, #0x4]
	str r1, [r4, #0x8]
	str r1, [r4, #0xc]
	ldr r1, [r0, #0x0]
	cmp r1, #0x0
	strne r4, [r1, #0x8]
	ldr r2, [r0, #0x0]
	mov r1, #0x0
	str r2, [r4, #0xc]
	str r1, [r4, #0x8]
	str r4, [r0, #0x0]
	mov r0, #0x1
	add sp, sp, #0x10
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020AF334

	arm_func_start FUN_020AF488
FUN_020AF488:
	stmdb sp!, {r4-r10,lr}
	ldr r4, [r0, #0x0]
	ldr r9, [sp, #0x20]
	cmp r4, #0x0
	mov r5, #0x0
	beq _020AF4EC
	sub r12, r9, #0x1
	mvn lr, r12
_020AF4A8:
	cmp r9, #0x1
	ldrls r8, [r4, #0x0]
	movls r6, r5
	movls r7, r3
	bls _020AF4D0
	ldr r7, [r4, #0x0]
	add r6, r7, r12
	and r8, lr, r6
	sub r6, r8, r7
	add r7, r3, r6
_020AF4D0:
	ldr r10, [r4, #0x4]
	cmp r10, r7
	movcs r5, r4
	bhs _020AF4EC
	ldr r4, [r4, #0xc]
	cmp r4, #0x0
	bne _020AF4A8
_020AF4EC:
	cmp r5, #0x0
	beq _020AF5B8
	cmp r6, #0x0
	beq _020AF54C
	ldr r9, [r1, #0x0]
	cmp r9, #0x0
	ldrne r3, [r9, #0xc]
	strne r3, [r1, #0x0]
	cmp r9, #0x0
	beq _020AF5B8
	ldr r4, [r5, #0x0]
	mov r3, #0x0
	str r4, [r9, #0x0]
	str r6, [r9, #0x4]
	str r3, [r9, #0x8]
	str r3, [r9, #0xc]
	ldr r3, [r0, #0x0]
	cmp r3, #0x0
	strne r9, [r3, #0x8]
	ldr r4, [r0, #0x0]
	mov r3, #0x0
	str r4, [r9, #0xc]
	str r3, [r9, #0x8]
	str r9, [r0, #0x0]
_020AF54C:
	ldr r3, [r5, #0x4]
	sub r3, r3, r7
	str r3, [r5, #0x4]
	ldr r3, [r5, #0x0]
	add r3, r3, r7
	str r3, [r5, #0x0]
	ldr r3, [r5, #0x4]
	cmp r3, #0x0
	bne _020AF5AC
	ldr r4, [r5, #0x8]
	ldr r3, [r5, #0xc]
	cmp r4, #0x0
	strne r3, [r4, #0xc]
	streq r3, [r0, #0x0]
	cmp r3, #0x0
	strne r4, [r3, #0x8]
	ldr r0, [r1, #0x0]
	cmp r0, #0x0
	strne r5, [r0, #0x8]
	ldr r3, [r1, #0x0]
	mov r0, #0x0
	str r3, [r5, #0xc]
	str r0, [r5, #0x8]
	str r5, [r1, #0x0]
_020AF5AC:
	str r8, [r2, #0x0]
	mov r0, #0x1
	ldmia sp!, {r4-r10,pc}
_020AF5B8:
	mov r0, #0x0
	str r0, [r2, #0x0]
	ldmia sp!, {r4-r10,pc}
	arm_func_end FUN_020AF488

	arm_func_start FUN_020AF5C4
FUN_020AF5C4:
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov r12, #0x0
	str r12, [sp, #0x0]
	bl FUN_020AF488
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020AF5C4

	arm_func_start FUN_020AF5E0
FUN_020AF5E0: ; 0x020AF5E0
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr lr, [r1, #0x0]
	cmp lr, #0x0
	ldrne r12, [lr, #0xc]
	strne r12, [r1, #0x0]
	cmp lr, #0x0
	beq _020AF640
	str r2, [lr, #0x0]
	str r3, [lr, #0x4]
	mov r1, #0x0
	str r1, [lr, #0x8]
	str r1, [lr, #0xc]
	ldr r1, [r0, #0x0]
	add sp, sp, #0x4
	cmp r1, #0x0
	strne lr, [r1, #0x8]
	ldr r2, [r0, #0x0]
	mov r1, #0x0
	str r2, [lr, #0xc]
	str r1, [lr, #0x8]
	str lr, [r0, #0x0]
	mov r0, #0x1
	ldmia sp!, {pc}
_020AF640:
	mov r0, #0x0
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020AF5E0

	arm_func_start FUN_020AF64C
FUN_020AF64C: ; 0x020AF64C
	stmdb sp!, {r4,lr}
	subs lr, r1, #0x1
	mov r2, #0x0
	beq _020AF684
	mov r4, r0
_020AF660:
	add r12, r2, #0x1
	add r2, r0, r2, lsl #0x4
	add r3, r0, r12, lsl #0x4
	str r3, [r2, #0xc]
	str r4, [r3, #0x8]
	mov r2, r12
	cmp r12, lr
	add r4, r4, #0x10
	blo _020AF660
_020AF684:
	mov r2, #0x0
	str r2, [r0, #0x8]
	add r1, r0, r1, lsl #0x4
	str r2, [r1, #-0x4]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020AF64C

	arm_func_start FUN_020AF698
FUN_020AF698: ; 0x020AF698
	mov r1, #0x0
	str r1, [r0, #0x0]
	bx lr
	arm_func_end FUN_020AF698

	arm_func_start FUN_020AF6A4
FUN_020AF6A4: ; 0x020AF6A4
	stmdb sp!, {r4-r6,lr}
	sub sp, sp, #0x30
	ldr r6, _020AF884 ; =UNK_020FF864
	add r5, sp, #0x0
	ldmia r6!, {r0-r3}
	mov r12, r5
	stmia r5!, {r0-r3}
	ldmia r6!, {r0-r3}
	stmia r5!, {r0-r3}
	ldr r4, _020AF888 ; =UNK_021CCD6C
	ldmia r6, {r0-r3}
	stmia r5, {r0-r3}
	ldr lr, [r4, #0x10]
	ldr r1, [r4, #0xc]
	add r0, lr, lr, lsr #0x1
	mov r4, lr, lsr #0x1
	sub r0, r1, r0
	mov r3, #0x0
_020AF6EC:
	cmp r3, #0x0
	beq _020AF6FC
	cmp r3, #0x2
	bne _020AF734
_020AF6FC:
	ldr r2, [r12, #0x0]
	cmp r2, #0x0
	beq _020AF734
	cmp lr, #0x0
	beq _020AF734
	ldr r1, [r12, #0x8]
	cmp r2, lr
	movhi r2, lr
	add r1, r1, r2
	str r1, [r12, #0x8]
	ldr r1, [r12, #0x0]
	sub lr, lr, r2
	sub r1, r1, r2
	str r1, [r12, #0x0]
_020AF734:
	add r3, r3, #0x1
	cmp r3, #0x4
	add r12, r12, #0xc
	blo _020AF6EC
	ldr r1, [sp, #0xc]
	add r5, sp, #0x0
	sub r1, r1, r4
	str r1, [sp, #0xc]
	mov r3, #0x0
_020AF758:
	ldr r2, [r5, #0x0]
	cmp r2, #0x0
	beq _020AF790
	cmp r0, #0x0
	beq _020AF790
	ldr r1, [r5, #0x4]
	cmp r2, r0
	movhi r2, r0
	add r1, r1, r2
	str r1, [r5, #0x4]
	ldr r1, [r5, #0x0]
	sub r0, r0, r2
	sub r1, r1, r2
	str r1, [r5, #0x0]
_020AF790:
	add r3, r3, #0x1
	cmp r3, #0x4
	add r5, r5, #0xc
	blo _020AF758
	ldr r0, _020AF888 ; =UNK_021CCD6C
	bl FUN_020AF698
	ldr r0, _020AF88C ; =UNK_021CCD70
	bl FUN_020AF698
	ldr r0, _020AF888 ; =UNK_021CCD6C
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x14]
	mov r1, r1, lsr #0x4
	bl FUN_020AF64C
	ldr r3, [sp, #0x8]
	ldr r1, _020AF888 ; =UNK_021CCD6C
	cmp r3, #0x0
	str r0, [r1, #0x8]
	beq _020AF7E8
	ldr r0, _020AF88C ; =UNK_021CCD70
	ldr r1, _020AF890 ; =UNK_021CCD74
	mov r2, #0x0
	bl FUN_020AF5E0
_020AF7E8:
	ldr r3, [sp, #0x4]
	ldr r2, [sp, #0x8]
	cmp r3, #0x0
	beq _020AF804
	ldr r0, _020AF888 ; =UNK_021CCD6C
	ldr r1, _020AF890 ; =UNK_021CCD74
	bl FUN_020AF5E0
_020AF804:
	ldr r3, [sp, #0x20]
	cmp r3, #0x0
	beq _020AF820
	ldr r0, _020AF88C ; =UNK_021CCD70
	ldr r1, _020AF890 ; =UNK_021CCD74
	mov r2, #0x40000
	bl FUN_020AF5E0
_020AF820:
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r3, #0x0
	add r2, r0, #0x40000
	beq _020AF840
	ldr r0, _020AF888 ; =UNK_021CCD6C
	ldr r1, _020AF890 ; =UNK_021CCD74
	bl FUN_020AF5E0
_020AF840:
	ldr r3, [sp, #0x28]
	cmp r3, #0x0
	beq _020AF85C
	ldr r0, _020AF888 ; =UNK_021CCD6C
	ldr r1, _020AF890 ; =UNK_021CCD74
	mov r2, #0x60000
	bl FUN_020AF5E0
_020AF85C:
	ldr r3, [sp, #0x10]
	cmp r3, #0x0
	addeq sp, sp, #0x30
	ldmeqia sp!, {r4-r6,pc}
	ldr r0, _020AF888 ; =UNK_021CCD6C
	ldr r1, _020AF890 ; =UNK_021CCD74
	add r2, r4, #0x20000
	bl FUN_020AF5E0
	add sp, sp, #0x30
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020AF884: .word UNK_020FF864
_020AF888: .word UNK_021CCD6C
_020AF88C: .word UNK_021CCD70
_020AF890: .word UNK_021CCD74
	arm_func_end FUN_020AF6A4

	arm_func_start FUN_020AF894
FUN_020AF894: ; 0x020AF894
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r2, _020AF908 ; =0x7FFF0000
	ldr r1, _020AF90C ; =0x0000FFFF
	and r2, r0, r2
	and r3, r0, r1
	mov r1, r2, lsr #0x10
	and r0, r0, #0x80000000
	mov r2, r3, lsl #0x3
	movs r3, r1, lsl #0x4
	mov r0, r0, lsr #0x1f
	beq _020AF8FC
	cmp r0, #0x0
	beq _020AF8DC
	ldr r0, _020AF910 ; =UNK_021CCD70
	ldr r1, _020AF914 ; =UNK_021CCD74
	bl FUN_020AF334
	b _020AF8E8
_020AF8DC:
	ldr r0, _020AF918 ; =UNK_021CCD6C
	ldr r1, _020AF914 ; =UNK_021CCD74
	bl FUN_020AF334
_020AF8E8:
	cmp r0, #0x0
	movne r0, #0x0
	add sp, sp, #0x4
	moveq r0, #0x1
	ldmia sp!, {pc}
_020AF8FC:
	mov r0, #0x2
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020AF908: .word 0x7FFF0000
_020AF90C: .word 0x0000FFFF
_020AF910: .word UNK_021CCD70
_020AF914: .word UNK_021CCD74
_020AF918: .word UNK_021CCD6C
	arm_func_end FUN_020AF894

	arm_func_start FUN_020AF91C
FUN_020AF91C: ; 0x020AF91C
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	cmp r0, #0x0
	moveq r5, #0x10
	addne r0, r0, #0xf
	bicne r5, r0, #0xf
	ldr r0, _020AF9B0 ; =0x0007FFF0
	mov r4, r1
	cmp r5, r0
	addcs sp, sp, #0x4
	movcs r0, #0x0
	ldmcsia sp!, {r4-r5,pc}
	cmp r4, #0x0
	beq _020AF96C
	ldr r0, _020AF9B4 ; =UNK_021CCD70
	ldr r1, _020AF9B8 ; =UNK_021CCD74
	add r2, sp, #0x0
	mov r3, r5
	bl FUN_020AF5C4
	b _020AF980
_020AF96C:
	ldr r0, _020AF9BC ; =UNK_021CCD6C
	ldr r1, _020AF9B8 ; =UNK_021CCD74
	add r2, sp, #0x0
	mov r3, r5
	bl FUN_020AF5C4
_020AF980:
	cmp r0, #0x0
	addeq sp, sp, #0x4
	moveq r0, #0x0
	ldmeqia sp!, {r4-r5,pc}
	ldr r1, [sp, #0x0]
	ldr r0, _020AF9C0 ; =0x0000FFFF
	mov r2, r5, lsr #0x4
	and r0, r0, r1, lsr #0x3
	orr r0, r0, r2, lsl #0x10
	orr r0, r0, r4, lsl #0x1f
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020AF9B0: .word 0x0007FFF0
_020AF9B4: .word UNK_021CCD70
_020AF9B8: .word UNK_021CCD74
_020AF9BC: .word UNK_021CCD6C
_020AF9C0: .word 0x0000FFFF
	arm_func_end FUN_020AF91C

	arm_func_start FUN_020AF9C4
FUN_020AF9C4: ; 0x020AF9C4
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr ip, _020AFA14 ; =UNK_021CCD6C
	str r0, [r12, #0xc]
	str r1, [r12, #0x10]
	str r2, [r12, #0x14]
	str r3, [r12, #0x18]
	bl FUN_020AF6A4
	ldr r0, [sp, #0x8]
	cmp r0, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {pc}
	ldr r3, _020AFA18 ; =FUN_020AF91C
	ldr r1, _020AFA1C ; =UNK_021064B8
	ldr r2, _020AFA20 ; =FUN_020AF894
	ldr r0, _020AFA24 ; =UNK_021064BC
	str r3, [r1, #0x0]
	str r2, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020AFA14: .word UNK_021CCD6C
_020AFA18: .word FUN_020AF91C
_020AFA1C: .word UNK_021064B8
_020AFA20: .word FUN_020AF894
_020AFA24: .word UNK_021064BC
	arm_func_end FUN_020AF9C4

	arm_func_start FUN_020AFA28
FUN_020AFA28: ; 0x020AFA28
	mov r0, r0, lsl #0x4
	bx lr
	arm_func_end FUN_020AFA28

	arm_func_start FUN_020AFA30
FUN_020AFA30:
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r0, _020AFA78 ; =UNK_021CCD88
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0xc]
	mov r1, r1, lsr #0x4
	bl FUN_020AF64C
	ldr r1, _020AFA78 ; =UNK_021CCD88
	str r0, [r1, #0x4]
	mov r0, r1
	bl FUN_020AF698
	ldr r0, _020AFA78 ; =UNK_021CCD88
	ldr r1, _020AFA7C ; =UNK_021CCD8C
	ldr r3, [r0, #0x8]
	mov r2, #0x0
	bl FUN_020AF5E0
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020AFA78: .word UNK_021CCD88
_020AFA7C: .word UNK_021CCD8C
	arm_func_end FUN_020AFA30

	arm_func_start FUN_020AFA80
FUN_020AFA80: ; 0x020AFA80
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov r1, #0x10000
	rsb r2, r1, #0x0
	ldr r1, _020AFAC8 ; =0x0000FFFF
	and r2, r0, r2
	and r12, r0, r1
	mov r3, r2, lsr #0x10
	ldr r0, _020AFACC ; =UNK_021CCD88
	ldr r1, _020AFAD0 ; =UNK_021CCD8C
	mov r2, r12, lsl #0x3
	mov r3, r3, lsl #0x3
	bl FUN_020AF334
	cmp r0, #0x0
	moveq r0, #0x1
	movne r0, #0x0
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020AFAC8: .word 0x0000FFFF
_020AFACC: .word UNK_021CCD88
_020AFAD0: .word UNK_021CCD8C
	arm_func_end FUN_020AFA80

	arm_func_start FUN_020AFAD4
FUN_020AFAD4: ; 0x020AFAD4
	stmdb sp!, {r4,lr}
	sub sp, sp, #0x8
	cmp r0, #0x0
	moveq r4, #0x8
	addne r0, r0, #0x7
	bicne r4, r0, #0x7
	ldr r0, _020AFB98 ; =0x0007FFF8
	cmp r4, r0
	addcs sp, sp, #0x8
	movcs r0, #0x0
	ldmcsia sp!, {r4,pc}
	cmp r1, #0x0
	beq _020AFB50
	mov r12, #0x8
	ldr r0, _020AFB9C ; =UNK_021CCD88
	ldr r1, _020AFBA0 ; =UNK_021CCD8C
	add r2, sp, #0x4
	mov r3, r4
	str r12, [sp, #0x0]
	bl FUN_020AF488
	ldr r2, [sp, #0x4]
	add r1, r2, r4
	cmp r1, #0x10000
	bls _020AFB6C
	ldr r0, _020AFB9C ; =UNK_021CCD88
	ldr r1, _020AFBA0 ; =UNK_021CCD8C
	mov r3, r4
	bl FUN_020AF334
	add sp, sp, #0x8
	mov r0, #0x0
	ldmia sp!, {r4,pc}
_020AFB50:
	ldr r0, _020AFB9C ; =UNK_021CCD88
	mov r12, #0x10
	ldr r1, _020AFBA0 ; =UNK_021CCD8C
	add r2, sp, #0x4
	mov r3, r4
	str r12, [sp, #0x0]
	bl FUN_020AF488
_020AFB6C:
	cmp r0, #0x0
	addeq sp, sp, #0x8
	moveq r0, #0x0
	ldmeqia sp!, {r4,pc}
	ldr r1, [sp, #0x4]
	ldr r0, _020AFBA4 ; =0x0000FFFF
	mov r2, r4, lsr #0x3
	and r0, r0, r1, lsr #0x3
	orr r0, r0, r2, lsl #0x10
	add sp, sp, #0x8
	ldmia sp!, {r4,pc}
	.balign 4
_020AFB98: .word 0x0007FFF8
_020AFB9C: .word UNK_021CCD88
_020AFBA0: .word UNK_021CCD8C
_020AFBA4: .word 0x0000FFFF
	arm_func_end FUN_020AFAD4

	arm_func_start FUN_020AFBA8
FUN_020AFBA8: ; 0x020AFBA8
	stmdb sp!, {r4,lr}
	ldr ip, _020AFBE8 ; =UNK_021CCD88
	mov r4, r3
	str r0, [r12, #0x8]
	str r1, [r12, #0xc]
	str r2, [r12, #0x10]
	bl FUN_020AFA30
	cmp r4, #0x0
	ldmeqia sp!, {r4,pc}
	ldr r3, _020AFBEC ; =FUN_020AFAD4
	ldr r1, _020AFBF0 ; =UNK_021064C0
	ldr r2, _020AFBF4 ; =FUN_020AFA80
	ldr r0, _020AFBF8 ; =UNK_021064C4
	str r3, [r1, #0x0]
	str r2, [r0, #0x0]
	ldmia sp!, {r4,pc}
	.balign 4
_020AFBE8: .word UNK_021CCD88
_020AFBEC: .word FUN_020AFAD4
_020AFBF0: .word UNK_021064C0
_020AFBF4: .word FUN_020AFA80
_020AFBF8: .word UNK_021064C4
	arm_func_end FUN_020AFBA8

	arm_func_start FUN_020AFBFC
FUN_020AFBFC: ; 0x020AFBFC
	mov r0, r0, lsl #0x4
	bx lr
	arm_func_end FUN_020AFBFC

	arm_func_start FUN_020AFC04
FUN_020AFC04: ; 0x020AFC04
	ldrh r2, [r0, #0x0]
	cmp r2, r1
	ldrhi r0, [r0, #0x4]
	addhi r0, r0, r1, lsl #0x4
	movls r0, #0x0
	bx lr
	arm_func_end FUN_020AFC04

	arm_func_start FUN_020AFC1C
FUN_020AFC1C: ; 0x020AFC1C
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	ldr r1, [r0, #0x4]
	mov r6, #0x0
	add r1, r1, r0
	str r1, [r0, #0x4]
	ldr r1, [r0, #0x8]
	add r1, r1, r0
	str r1, [r0, #0x8]
	ldr r1, [r0, #0xc]
	add r1, r1, r0
	str r1, [r0, #0xc]
	ldrh r1, [r0, #0x0]
	ldr r4, [r0, #0x4]
	ldr lr, [r0, #0x8]
	cmp r1, #0x0
	ldr r12, [r0, #0xc]
	bls _020AFCCC
	mov r1, r6
_020AFC68:
	add r2, r4, r6, lsl #0x4
	ldr r5, [r2, #0xc]
	mov r3, r6, lsl #0x4
	add r5, lr, r5
	str r5, [r2, #0xc]
	ldrh r7, [r4, r3]
	mov r5, r1
	cmp r7, #0x0
	bls _020AFCB4
_020AFC8C:
	ldr r9, [r2, #0xc]
	add r7, r5, #0x1
	ldr r8, [r9, r5, lsl #0x3]
	mov r7, r7, lsl #0x10
	add r8, r12, r8
	str r8, [r9, r5, lsl #0x3]
	ldrh r8, [r4, r3]
	mov r5, r7, lsr #0x10
	cmp r5, r8
	blo _020AFC8C
_020AFCB4:
	add r2, r6, #0x1
	mov r2, r2, lsl #0x10
	ldrh r3, [r0, #0x0]
	mov r6, r2, lsr #0x10
	cmp r6, r3
	blo _020AFC68
_020AFCCC:
	ldr r1, [r0, #0x14]
	cmp r1, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r9,pc}
	add r1, r1, r0
	str r1, [r0, #0x14]
	ldr r1, [r0, #0x14]
	mov r12, #0x0
	add r2, r1, #0x8
	ldr r0, [r2, #0x4]
	add r0, r0, r2
	str r0, [r2, #0x4]
	ldrh r0, [r1, #0x8]
	cmp r0, #0x0
	addls sp, sp, #0x4
	ldmlsia sp!, {r4-r9,pc}
	mov r0, r12
	mov r6, r12
_020AFD14:
	ldr r5, [r2, #0x4]
	mov r3, r6
	add r1, r5, r0
	ldr r4, [r1, #0x4]
	add r4, r4, r2
	str r4, [r1, #0x4]
	ldr r4, [r1, #0x8]
	add r4, r4, r2
	str r4, [r1, #0x8]
	ldrh r4, [r5, r0]
	cmp r4, #0x0
	bls _020AFD6C
	mov r7, r6
_020AFD48:
	ldr r5, [r1, #0x8]
	add r3, r3, #0x1
	ldr r4, [r5, r7]
	add r4, r4, r2
	str r4, [r5, r7]
	ldrh r4, [r1, #0x0]
	add r7, r7, #0x4
	cmp r3, r4
	blo _020AFD48
_020AFD6C:
	ldrh r1, [r2, #0x0]
	add r12, r12, #0x1
	add r0, r0, #0xc
	cmp r12, r1
	blo _020AFD14
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	arm_func_end FUN_020AFC1C

	arm_func_start thunk_FUN_020afda0
thunk_FUN_020afda0: ; 0x020AFD88
	ldr ip, _020AFD90 ; =FUN_020AFDA0
	bx r12
	.balign 4
_020AFD90: .word FUN_020AFDA0
	arm_func_end thunk_FUN_020afda0

	arm_func_start thunk_FUN_020afda0_2
thunk_FUN_020afda0_2: ; 0x020AFD94
	ldr ip, _020AFD9C ; =FUN_020AFDA0
	bx r12
	.balign 4
_020AFD9C: .word FUN_020AFDA0
	arm_func_end thunk_FUN_020afda0_2

	arm_func_start FUN_020AFDA0
FUN_020AFDA0: ; 0x020AFDA0
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldr r1, _020AFDE4 ; =0x41424E4B
	bl FUN_020B01F8
	movs r4, r0
	moveq r0, #0x0
	addeq sp, sp, #0x4
	streq r0, [r5, #0x0]
	ldmeqia sp!, {r4-r5,pc}
	add r0, r4, #0x8
	bl FUN_020AFC1C
	add r0, r4, #0x8
	str r0, [r5, #0x0]
	mov r0, #0x1
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020AFDE4: .word 0x41424E4B
	arm_func_end FUN_020AFDA0

	arm_func_start FUN_020AFDE8
FUN_020AFDE8: ; 0x020AFDE8
	stmdb sp!, {r4-r6,lr}
	mov r5, r0
	ldr r1, [r5, #0x4]
	add r1, r1, r5
	str r1, [r5, #0x4]
	bl FUN_020AFF10
	ldrh r1, [r5, #0x0]
	mov r4, r0
	mov r6, #0x0
	cmp r1, #0x0
	bls _020AFE44
_020AFE14:
	mov r0, r5
	mov r1, r6
	bl FUN_020AFE8C
	ldr r2, [r0, #0x4]
	add r1, r6, #0x1
	add r2, r2, r4
	str r2, [r0, #0x4]
	mov r0, r1, lsl #0x10
	ldrh r1, [r5, #0x0]
	mov r6, r0, lsr #0x10
	cmp r6, r1
	blo _020AFE14
_020AFE44:
	ldr r0, [r5, #0xc]
	cmp r0, #0x0
	beq _020AFE6C
	add r0, r0, r5
	str r0, [r5, #0xc]
	ldr r1, [r5, #0xc]
	ldr r0, [r1, #0x4]
	add r0, r0, r1
	str r0, [r1, #0x4]
	str r1, [r5, #0xc]
_020AFE6C:
	ldr r0, [r5, #0x14]
	cmp r0, #0x0
	ldmeqia sp!, {r4-r6,pc}
	add r0, r0, r5
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x14]
	bl FUN_020AFF00
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020AFDE8

	arm_func_start FUN_020AFE8C
FUN_020AFE8C: ; 0x020AFE8C
	ldrh r2, [r0, #0x0]
	cmp r1, r2
	movcs r0, #0x0
	bxcs lr
	ldrh r2, [r0, #0x2]
	ands r2, r2, #0x1
	ldrne r0, [r0, #0x4]
	addne r0, r0, r1, lsl #0x4
	ldreq r0, [r0, #0x4]
	addeq r0, r0, r1, lsl #0x3
	bx lr
	arm_func_end FUN_020AFE8C

	arm_func_start FUN_020AFEB8
FUN_020AFEB8: ; 0x020AFEB8
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldr r1, _020AFEFC ; =0x4345424B
	bl FUN_020B01F8
	movs r4, r0
	moveq r0, #0x0
	addeq sp, sp, #0x4
	streq r0, [r5, #0x0]
	ldmeqia sp!, {r4-r5,pc}
	add r0, r4, #0x8
	bl FUN_020AFDE8
	add r0, r4, #0x8
	str r0, [r5, #0x0]
	mov r0, #0x1
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020AFEFC: .word 0x4345424B
	arm_func_end FUN_020AFEB8

	arm_func_start FUN_020AFF00
FUN_020AFF00: ; 0x020AFF00
	ldr ip, _020AFF0C ; =FUN_020B01B0
	add r0, r0, #0x8
	bx r12
	.balign 4
_020AFF0C: .word FUN_020B01B0
	arm_func_end FUN_020AFF00

	arm_func_start FUN_020AFF10
FUN_020AFF10: ; 0x020AFF10
	ldrh r1, [r0, #0x2]
	ands r1, r1, #0x1
	ldrneh r1, [r0, #0x0]
	ldrne r0, [r0, #0x4]
	addne r0, r0, r1, lsl #0x4
	ldreqh r1, [r0, #0x0]
	ldreq r0, [r0, #0x4]
	addeq r0, r0, r1, lsl #0x3
	bx lr
	arm_func_end FUN_020AFF10

	arm_func_start FUN_020AFF34
FUN_020AFF34: ; 0x020AFF34
	ldrh r2, [r0, #0x0]
	cmp r1, r2
	ldrcc r0, [r0, #0x4]
	addcc r0, r0, r1, lsl #0x3
	movcs r0, #0x0
	bx lr
	arm_func_end FUN_020AFF34

	arm_func_start FUN_020AFF4C
FUN_020AFF4C: ; 0x020AFF4C
	stmdb sp!, {r4,lr}
	ldr r1, [r0, #0x4]
	mov r4, #0x0
	add r1, r1, r0
	str r1, [r0, #0x4]
	ldr r1, [r0, #0x8]
	add r1, r1, r0
	str r1, [r0, #0x8]
	ldrh r1, [r0, #0x0]
	ldr lr, [r0, #0x4]
	cmp r1, #0x0
	bls _020AFFA8
_020AFF7C:
	add r3, lr, r4, lsl #0x3
	ldr r12, [r0, #0x8]
	ldr r2, [r3, #0x4]
	add r1, r4, #0x1
	add r2, r12, r2
	str r2, [r3, #0x4]
	mov r1, r1, lsl #0x10
	ldrh r2, [r0, #0x0]
	mov r4, r1, lsr #0x10
	cmp r4, r2
	blo _020AFF7C
_020AFFA8:
	ldr r1, [r0, #0x10]
	cmp r1, #0x0
	ldmeqia sp!, {r4,pc}
	add r1, r1, r0
	str r1, [r0, #0x10]
	ldr r0, [r0, #0x10]
	bl FUN_020AFFC8
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020AFF4C

	arm_func_start FUN_020AFFC8
FUN_020AFFC8: ; 0x020AFFC8
	ldr ip, _020AFFD4 ; =FUN_020B01B0
	add r0, r0, #0x8
	bx r12
	.balign 4
_020AFFD4: .word FUN_020B01B0
	arm_func_end FUN_020AFFC8

	arm_func_start FUN_020AFFD8
FUN_020AFFD8: ; 0x020AFFD8
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldr r1, _020B001C ; =0x4D43424B
	bl FUN_020B01F8
	movs r4, r0
	moveq r0, #0x0
	addeq sp, sp, #0x4
	streq r0, [r5, #0x0]
	ldmeqia sp!, {r4-r5,pc}
	add r0, r4, #0x8
	bl FUN_020AFF4C
	add r0, r4, #0x8
	str r0, [r5, #0x0]
	mov r0, #0x1
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B001C: .word 0x4D43424B
	arm_func_end FUN_020AFFD8

	arm_func_start FUN_020B0020
FUN_020B0020: ; 0x020B0020
	ldr r1, [r0, #0x14]
	add r1, r1, r0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end FUN_020B0020

	arm_func_start FUN_020B0030
FUN_020B0030: ; 0x020B0030
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldr r1, _020B0074 ; =0x43484152
	bl FUN_020B01F8
	movs r4, r0
	moveq r0, #0x0
	addeq sp, sp, #0x4
	streq r0, [r5, #0x0]
	ldmeqia sp!, {r4-r5,pc}
	add r0, r4, #0x8
	bl FUN_020B0020
	add r0, r4, #0x8
	str r0, [r5, #0x0]
	mov r0, #0x1
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B0074: .word 0x43484152
	arm_func_end FUN_020B0030

	arm_func_start FUN_020B0078
FUN_020B0078: ; 0x020B0078
	ldr r1, [r0, #0x14]
	add r1, r1, r0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end FUN_020B0078

	arm_func_start FUN_020B0088
FUN_020B0088: ; 0x020B0088
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldr r1, _020B00CC ; =0x43484152
	bl FUN_020B01F8
	movs r4, r0
	moveq r0, #0x0
	addeq sp, sp, #0x4
	streq r0, [r5, #0x0]
	ldmeqia sp!, {r4-r5,pc}
	add r0, r4, #0x8
	bl FUN_020B0078
	add r0, r4, #0x8
	str r0, [r5, #0x0]
	mov r0, #0x1
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B00CC: .word 0x43484152
	arm_func_end FUN_020B0088

	arm_func_start FUN_020B00D0
FUN_020B00D0: ; 0x020B00D0
	ldr r1, [r0, #0xc]
	add r1, r1, r0
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_020B00D0

	arm_func_start FUN_020B00E0
FUN_020B00E0: ; 0x020B00E0
	ldr r1, [r0, #0x4]
	add r1, r1, r0
	str r1, [r0, #0x4]
	bx lr
	arm_func_end FUN_020B00E0

	arm_func_start FUN_020B00F0
FUN_020B00F0: ; 0x020B00F0
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldr r1, _020B0134 ; =0x50434D50
	bl FUN_020B01F8
	movs r4, r0
	moveq r0, #0x0
	addeq sp, sp, #0x4
	streq r0, [r5, #0x0]
	ldmeqia sp!, {r4-r5,pc}
	add r0, r4, #0x8
	bl FUN_020B00E0
	add r0, r4, #0x8
	str r0, [r5, #0x0]
	mov r0, #0x1
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B0134: .word 0x50434D50
	arm_func_end FUN_020B00F0

	arm_func_start FUN_020B0138
FUN_020B0138: ; 0x020B0138
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldr r1, _020B017C ; =0x504C5454
	bl FUN_020B01F8
	movs r4, r0
	moveq r0, #0x0
	addeq sp, sp, #0x4
	streq r0, [r5, #0x0]
	ldmeqia sp!, {r4-r5,pc}
	add r0, r4, #0x8
	bl FUN_020B00D0
	add r0, r4, #0x8
	str r0, [r5, #0x0]
	mov r0, #0x1
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B017C: .word 0x504C5454
	arm_func_end FUN_020B0138

	arm_func_start FUN_020B0180
FUN_020B0180: ; 0x020B0180
	stmdb sp!, {r4,lr}
	mov r4, r1
	ldr r1, _020B01AC ; =0x5343524E
	bl FUN_020B01F8
	cmp r0, #0x0
	addne r0, r0, #0x8
	strne r0, [r4, #0x0]
	movne r0, #0x1
	moveq r0, #0x0
	streq r0, [r4, #0x0]
	ldmia sp!, {r4,pc}
	.balign 4
_020B01AC: .word 0x5343524E
	arm_func_end FUN_020B0180

	arm_func_start FUN_020B01B0
FUN_020B01B0: ; 0x020B01B0
	ldr r1, [r0, #0x4]
	mov r12, #0x0
	add r1, r1, r0
	str r1, [r0, #0x4]
	ldrh r1, [r0, #0x0]
	cmp r1, #0x0
	bxls lr
_020B01CC:
	ldr r3, [r0, #0x4]
	add r1, r12, #0x1
	ldr r2, [r3, r12, lsl #0x2]
	mov r1, r1, lsl #0x10
	add r2, r0, r2
	str r2, [r3, r12, lsl #0x2]
	ldrh r2, [r0, #0x0]
	mov r12, r1, lsr #0x10
	cmp r12, r2
	blo _020B01CC
	bx lr
	arm_func_end FUN_020B01B0

	arm_func_start FUN_020B01F8
FUN_020B01F8:
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldrh r2, [r0, #0xc]
	ldrh r12, [r0, #0xe]
	mov lr, #0x0
	add r0, r0, r2
	cmp r12, #0x0
	bls _020B0244
_020B0218:
	ldr r2, [r0, #0x0]
	cmp r2, r1
	addeq sp, sp, #0x4
	ldmeqia sp!, {pc}
	add r2, lr, #0x1
	mov r2, r2, lsl #0x10
	ldr r3, [r0, #0x4]
	mov lr, r2, lsr #0x10
	cmp lr, r12
	add r0, r0, r3
	blo _020B0218
_020B0244:
	mov r0, #0x0
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020B01F8

	arm_func_start FUN_020B0250
FUN_020B0250: ; 0x020B0250
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldr r5, _020B02C0 ; =0x04000470
	mov r0, r0, lsl #0xc
	str r0, [r5, #0x0]
	mov r4, r1, lsl #0xc
	ldr r12, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r4, [r5, #0x0]
	mov r4, r2, lsl #0xc
	ldr r2, [sp, #0x18]
	ldr lr, _020B02C4 ; =0x0400046C
	str r4, [r5, #0x0]
	mov r4, r3, lsl #0xc
	ldr r3, [sp, #0x20]
	str r4, [lr, #0x0]
	mov r12, r12, lsl #0xc
	str r12, [lr, #0x0]
	mov r12, #0x1000
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	mov r2, r2, lsl #0xc
	mov r3, r3, lsl #0xc
	str r12, [lr, #0x0]
	bl FUN_020B0340
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B02C0: .word 0x04000470
_020B02C4: .word 0x0400046C
	arm_func_end FUN_020B0250

	arm_func_start FUN_020B02C8
FUN_020B02C8: ; 0x020B02C8
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r2, _020B0330 ; =0xBFFF0000
	ldr r0, _020B0334 ; =0x04000580
	mov r1, #0x400000
	str r2, [r0, #0x0]
	rsb r0, r1, #0x0
	str r0, [sp, #0x0]
	str r1, [sp, #0x4]
	mov r0, #0x0
	str r1, [sp, #0x8]
	mov r1, #0x1
	str r1, [sp, #0xc]
	mov r2, r0
	mov r1, #0xc0000
	mov r3, #0x100000
	str r0, [sp, #0x10]
	bl G3i_OrthoW_
	ldr r1, _020B0338 ; =0x0400044C
	mov r2, #0x0
	ldr r0, _020B033C ; =0x04000440
	str r2, [r1, #0x0]
	mov r1, #0x1
	str r1, [r0, #0x0]
	add sp, sp, #0x14
	ldmia sp!, {pc}
	.balign 4
_020B0330: .word 0xBFFF0000
_020B0334: .word 0x04000580
_020B0338: .word 0x0400044C
_020B033C: .word 0x04000440
	arm_func_end FUN_020B02C8

	arm_func_start FUN_020B0340
FUN_020B0340: ; 0x020B0340
	stmdb sp!, {r4-r6,lr}
	mov r3, r3, lsl #0x8
	mov r0, r0, lsl #0x8
	mov r4, r3, asr #0x10
	mov r3, r0, asr #0x10
	mov r0, r4, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r1, r1, lsl #0x8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r2, lsl #0x8
	mov r2, r2, asr #0x10
	mov r2, r2, lsl #0x10
	ldr ip, _020B03F4 ; =0x04000500
	mov lr, #0x1
	mov r6, r0, lsr #0x10
	mov r5, r3, lsr #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	ldr r4, _020B03F8 ; =0x04000488
	str lr, [r12, #0x0]
	orr r0, r5, r6, lsl #0x10
	ldr lr, _020B03FC ; =0x0400048C
	str r0, [r4, #0x0]
	mov r0, #0x10000000
	str r0, [lr, #0x0]
	mov r12, #0x0
	str r12, [lr, #0x0]
	orr r2, r3, r6, lsl #0x10
	ldr r0, _020B0400 ; =0x10001000
	str r2, [r4, #0x0]
	str r0, [lr, #0x0]
	str r12, [lr, #0x0]
	orr r0, r3, r1, lsl #0x10
	str r0, [r4, #0x0]
	mov r0, #0x1000
	str r0, [lr, #0x0]
	str r12, [lr, #0x0]
	orr r0, r5, r1, lsl #0x10
	str r0, [r4, #0x0]
	str r12, [lr, #0x0]
	ldr r0, _020B0404 ; =0x04000504
	str r12, [lr, #0x0]
	str r12, [r0, #0x0]
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B03F4: .word 0x04000500
_020B03F8: .word 0x04000488
_020B03FC: .word 0x0400048C
_020B0400: .word 0x10001000
_020B0404: .word 0x04000504
	arm_func_end FUN_020B0340

	arm_func_start FUN_020B0408
FUN_020B0408:
	ldr r1, [r0, #0x14]
	cmp r1, #0x0
	ldreq r0, [r0, #0x18]
	ldreq r1, [r0, #0x8]
	cmp r1, #0x2
	beq _020B0428
	cmp r1, #0x4
	bne _020B0430
_020B0428:
	mov r0, #0x1
	bx lr
_020B0430:
	mov r0, #0x0
	bx lr
	arm_func_end FUN_020B0408

	arm_func_start FUN_020B0438
FUN_020B0438: ; 0x020B0438
	ldr ip, _020B0444 ; =FUN_020B0448
	str r1, [r0, #0x18]
	bx r12
	.balign 4
_020B0444: .word FUN_020B0448
	arm_func_end FUN_020B0438

	arm_func_start FUN_020B0448
FUN_020B0448: ; 0x020B0448
	ldr r1, [r0, #0x10]
	cmp r1, #0x0
	movgt r2, #0x1
	ldr r1, [r0, #0x4]
	movle r2, #0x0
	eors r1, r2, r1
	beq _020B047C
	ldr r2, [r0, #0x18]
	ldrh r1, [r2, #0x2]
	ldr r2, [r2, #0xc]
	add r1, r2, r1, lsl #0x3
	str r1, [r0, #0x0]
	b _020B0494
_020B047C:
	ldr r2, [r0, #0x18]
	ldrh r1, [r2, #0x0]
	ldr r2, [r2, #0xc]
	add r1, r2, r1, lsl #0x3
	sub r1, r1, #0x8
	str r1, [r0, #0x0]
_020B0494:
	ldr ip, _020B04A4 ; =FUN_020B0534
	mov r1, #0x0
	str r1, [r0, #0xc]
	bx r12
	.balign 4
_020B04A4: .word FUN_020B0534
	arm_func_end FUN_020B0448

	arm_func_start FUN_020B04A8
FUN_020B04A8: ; 0x020B04A8
	mov r1, #0x0
	str r1, [r0, #0x0]
	str r1, [r0, #0x4]
	str r1, [r0, #0x8]
	strh r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_020B04A8

	arm_func_start FUN_020B04C0
FUN_020B04C0: ; 0x020B04C0
	stmdb sp!, {r4,lr}
	mov r4, r0
	add r0, r4, #0x1c
	bl FUN_020B04A8
	mov r1, #0x0
	str r1, [r4, #0x0]
	str r1, [r4, #0x4]
	mov r0, #0x1
	str r0, [r4, #0x8]
	str r1, [r4, #0xc]
	mov r0, #0x1000
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B04C0

	arm_func_start FUN_020B04FC
FUN_020B04FC: ; 0x020B04FC
	ldr r1, [r0, #0x18]
	ldr r2, [r0, #0x0]
	ldr r0, [r1, #0xc]
	sub r0, r2, r0
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end FUN_020B04FC

	arm_func_start FUN_020B0518
FUN_020B0518:
	stmdb sp!, {r4,lr}
	mov r4, r0
	bl FUN_020B06EC
	cmp r0, #0x0
	movne r1, #0x0
	strne r1, [r4, #0xc]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B0518

	arm_func_start FUN_020B0534
FUN_020B0534:
	stmdb sp!, {r4-r8,lr}
	mov r8, r0
	ldr r0, [r8, #0x8]
	mov r7, #0x0
	cmp r0, #0x1
	movne r0, r7
	ldmneia sp!, {r4-r8,pc}
	ldr r2, [r8, #0x10]
	mov r0, #0x800
	smull r3, r1, r2, r1
	adds r0, r3, r0
	adc r1, r1, r7
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #0x14
	bl abs
	ldr r1, [r8, #0xc]
	add r6, r8, #0xc
	add r0, r1, r0
	str r0, [r8, #0xc]
	mov r4, r7
	mov r5, #0x1
	b _020B06A8
_020B058C:
	ldr r0, [r8, #0x0]
	ldr r1, [r6, #0x0]
	ldrh r0, [r0, #0x4]
	mov r7, r5
	sub r0, r1, r0, lsl #0xc
	str r0, [r6, #0x0]
	ldr r0, [r8, #0x10]
	cmp r0, #0x0
	movgt r1, r5
	ldr r0, [r8, #0x4]
	movle r1, r4
	eors r0, r1, r0
	ldrne r0, [r8, #0x0]
	addne r0, r0, #0x8
	strne r0, [r8, #0x0]
	ldreq r0, [r8, #0x0]
	subeq r0, r0, #0x8
	streq r0, [r8, #0x0]
	ldr r1, [r8, #0x10]
	ldr r0, [r8, #0x0]
	cmp r1, #0x0
	movgt r2, r5
	ldr r1, [r8, #0x4]
	movle r2, r4
	eors r1, r2, r1
	beq _020B0614
	ldr r2, [r8, #0x18]
	ldrh r1, [r2, #0x0]
	ldr r2, [r2, #0xc]
	add r1, r2, r1, lsl #0x3
	cmp r0, r1
	movcs r0, r5
	movcc r0, r4
	b _020B0634
_020B0614:
	ldr r2, [r8, #0x18]
	ldrh r1, [r2, #0x2]
	ldr r2, [r2, #0xc]
	add r1, r2, r1, lsl #0x3
	sub r1, r1, #0x8
	cmp r0, r1
	movls r0, r5
	movhi r0, r4
_020B0634:
	cmp r0, #0x0
	beq _020B0644
	mov r0, r8
	bl FUN_020B0710
_020B0644:
	ldr r0, [r8, #0x1c]
	cmp r0, #0x0
	beq _020B06A8
	ldr r0, [r8, #0x18]
	ldr r2, [r8, #0x1c]
	ldr r1, [r8, #0x0]
	ldr r0, [r0, #0xc]
	cmp r2, #0x2
	sub r0, r1, r0
	mov r0, r0, lsl #0xd
	mov r1, r0, lsr #0x10
	beq _020B0680
	cmp r2, #0x3
	beq _020B069C
	b _020B06A8
_020B0680:
	ldrh r0, [r8, #0x28]
	cmp r1, r0
	bne _020B06A8
	ldr r0, [r8, #0x20]
	ldr r2, [r8, #0x24]
	blx r2
	b _020B06A8
_020B069C:
	ldr r0, [r8, #0x20]
	ldr r2, [r8, #0x24]
	blx r2
_020B06A8:
	ldr r0, [r8, #0x8]
	cmp r0, #0x0
	beq _020B06CC
	ldr r0, [r8, #0x0]
	ldr r1, [r8, #0xc]
	ldrh r0, [r0, #0x4]
	cmp r1, r0, lsl #0xc
	movge r0, r5
	bge _020B06D0
_020B06CC:
	mov r0, r4
_020B06D0:
	cmp r0, #0x0
	bne _020B058C
	mov r0, r7
	ldmia sp!, {r4-r8,pc}
	arm_func_end FUN_020B0534

	arm_func_start FUN_020B06E0
FUN_020B06E0: ; 0x020B06E0
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x0]
	bx lr
	arm_func_end FUN_020B06E0

	arm_func_start FUN_020B06EC
FUN_020B06EC:
	ldr r3, [r0, #0x18]
	ldrh r2, [r3, #0x0]
	cmp r1, r2
	ldrcc r2, [r3, #0xc]
	addcc r1, r2, r1, lsl #0x3
	strcc r1, [r0, #0x0]
	movcc r0, #0x1
	movcs r0, #0x0
	bx lr
	arm_func_end FUN_020B06EC

	arm_func_start FUN_020B0710
FUN_020B0710: ; 0x020B0710
	stmdb sp!, {r4,lr}
	mov r4, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0x0
	ldreq r0, [r4, #0x18]
	ldreq r0, [r0, #0x8]
	cmp r0, #0x3
	beq _020B0738
	cmp r0, #0x4
	bne _020B07B4
_020B0738:
	ldr r0, [r4, #0x4]
	eor r0, r0, #0x1
	str r0, [r4, #0x4]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x0]
	ldrh r0, [r1, #0x2]
	ldr r1, [r1, #0xc]
	add r0, r1, r0, lsl #0x3
	sub r0, r0, #0x8
	cmp r2, r0
	bhi _020B0800
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1
	bne _020B0780
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x24]
	blx r2
_020B0780:
	ldr r0, [r4, #0x14]
	cmp r0, #0x0
	ldreq r0, [r4, #0x18]
	ldreq r0, [r0, #0x8]
	cmp r0, #0x2
	beq _020B07A8
	cmp r0, #0x4
	movne r0, #0x0
	strne r0, [r4, #0x8]
	bne _020B0800
_020B07A8:
	mov r0, r4
	bl FUN_020B0448
	b _020B0800
_020B07B4:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1
	bne _020B07D0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x24]
	blx r2
_020B07D0:
	ldr r0, [r4, #0x14]
	cmp r0, #0x0
	ldreq r0, [r4, #0x18]
	ldreq r0, [r0, #0x8]
	cmp r0, #0x2
	beq _020B07F8
	cmp r0, #0x4
	movne r0, #0x0
	strne r0, [r4, #0x8]
	bne _020B0800
_020B07F8:
	mov r0, r4
	bl FUN_020B0448
_020B0800:
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x0]
	ldrh r0, [r1, #0x0]
	ldr r1, [r1, #0xc]
	add r0, r1, r0, lsl #0x3
	sub r0, r0, #0x8
	cmp r2, r0
	strhi r0, [r4, #0x0]
	ldmhiia sp!, {r4,pc}
	cmp r2, r1
	strcc r1, [r4, #0x0]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B0710

	arm_func_start FUN_020B0830
FUN_020B0830: ; 0x020B0830
	ldrh r3, [r0, #0x6]
	ldrh r2, [r0, #0x8]
	mov r12, #0x0
	add r1, r3, #0x1
	cmp r2, r1
	bgt _020B0854
	ldrh r0, [r0, #0x4]
	cmp r0, r3
	movls r12, #0x1
_020B0854:
	cmp r12, #0x0
	subne r0, r3, r2
	addne r0, r0, #0x1
	movne r0, r0, lsl #0x10
	movne r0, r0, lsr #0x10
	moveq r0, #0x0
	bx lr
	arm_func_end FUN_020B0830

	arm_func_start FUN_020B0870
FUN_020B0870: ; 0x020B0870
	stmdb sp!, {r4,lr}
	mov r4, r0
	bl FUN_020B09B4
	mov r0, r4
	bl FUN_020B0888
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B0870

	arm_func_start FUN_020B0888
FUN_020B0888: ; 0x020B0888
	stmdb sp!, {r4-r6,lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	cmp r0, #0x0
	beq _020B0944
	ldrh r2, [r5, #0x6]
	ldrh r1, [r5, #0x8]
	mov r3, #0x0
	add r0, r2, #0x1
	cmp r1, r0
	bgt _020B08C0
	ldrh r0, [r5, #0x4]
	cmp r0, r2
	movls r3, #0x1
_020B08C0:
	cmp r3, #0x0
	moveq r4, #0x0
	beq _020B08E0
	ldrh r0, [r5, #0x4]
	sub r0, r2, r0
	add r0, r0, #0x1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0xd
_020B08E0:
	ldr r2, [r5, #0x0]
	ldr r1, _020B09AC ; =UNK_021CCDA0
	mov r0, #0x540
	mla r1, r2, r0, r1
	ldrh r0, [r5, #0x4]
	add r2, r1, #0x100
	mov r1, r4
	add r6, r2, r0, lsl #0x3
	mov r0, r6
	bl DC_InvalidateRange
	ldr r0, _020B09B0 ; =GXi_DmaId
	mvn r1, #0x0
	ldr r0, [r0, #0x0]
	cmp r0, r1
	beq _020B0930
	mov r1, r6
	mov r3, r4
	mov r2, #0xc0
	bl MI_DmaFill32
	b _020B0998
_020B0930:
	mov r1, r6
	mov r2, r4
	mov r0, #0xc0
	bl MIi_CpuClear32
	b _020B0998
_020B0944:
	ldr r2, [r5, #0x0]
	ldr r1, _020B09AC ; =UNK_021CCDA0
	mov r0, #0x540
	mla r1, r2, r0, r1
	ldrh r2, [r5, #0x4]
	ldrh r0, [r5, #0x6]
	add r1, r1, #0x100
	add r3, r1, r2, lsl #0x3
	sub r0, r0, r2
	add r0, r0, #0x1
	mov r0, r0, lsl #0x10
	movs r2, r0, lsr #0x10
	mov r0, #0x0
	beq _020B0998
	mov r1, #0xc0
_020B0980:
	add r0, r0, #0x1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, r2
	strh r1, [r3], #0x8
	blo _020B0980
_020B0998:
	ldrh r0, [r5, #0x4]
	strh r0, [r5, #0x8]
	ldrh r0, [r5, #0xa]
	strh r0, [r5, #0xe]
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B09AC: .word UNK_021CCDA0
_020B09B0: .word GXi_DmaId
	arm_func_end FUN_020B0888

	arm_func_start FUN_020B09B4
FUN_020B09B4: ; 0x020B09B4
	stmdb sp!, {r4-r10,lr}
	mov r7, r0
	ldr r0, [r7, #0x14]
	cmp r0, #0x0
	beq _020B0A48
	ldr r5, [r7, #0x0]
	ldr r1, _020B0BA8 ; =UNK_021CCDA0
	mov r0, #0x540
	mla r1, r5, r0, r1
	ldrh r2, [r7, #0x4]
	ldrh r0, [r7, #0x6]
	add r1, r1, #0x100
	add r4, r1, r2, lsl #0x3
	sub r0, r0, r2
	add r0, r0, #0x1
	mov r0, r0, lsl #0x13
	mov r6, r0, lsr #0x10
	mov r2, r2, lsl #0x13
	mov r0, r4
	mov r1, r6
	mov r7, r2, lsr #0x10
	bl DC_FlushRange
	cmp r5, #0x0
	beq _020B0A20
	cmp r5, #0x1
	beq _020B0A34
	ldmia sp!, {r4-r10,pc}
_020B0A20:
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl GX_LoadOAM
	ldmia sp!, {r4-r10,pc}
_020B0A34:
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl GXS_LoadOAM
	ldmia sp!, {r4-r10,pc}
_020B0A48:
	ldr r0, [r7, #0x0]
	ldr r2, _020B0BA8 ; =UNK_021CCDA0
	mov r1, #0x540
	mla r2, r0, r1, r2
	ldrh r5, [r7, #0x4]
	ldrh r1, [r7, #0x6]
	ldr r3, _020B0BAC ; =UNK_0210655C
	add r4, r2, #0x100
	sub r1, r1, r5
	add r1, r1, #0x1
	mov r1, r1, lsl #0x10
	mov r2, r5, lsl #0x13
	add r6, r4, r5, lsl #0x3
	movs r5, r1, lsr #0x10
	mov r4, r2, lsr #0x10
	ldr r9, [r3, r0, lsl #0x2]
	mov r10, #0x0
	beq _020B0AC8
	mov r8, #0x6
_020B0A94:
	mov r0, r6
	mov r1, r4
	mov r2, r8
	blx r9
	add r0, r10, #0x1
	add r2, r4, #0x8
	mov r1, r0, lsl #0x10
	mov r0, r2, lsl #0x10
	mov r10, r1, lsr #0x10
	cmp r10, r5
	mov r4, r0, lsr #0x10
	add r6, r6, #0x8
	blo _020B0A94
_020B0AC8:
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	mov r3, #0x0
	add r0, r2, #0x1
	cmp r1, r0
	bgt _020B0AEC
	ldrh r0, [r7, #0xa]
	cmp r0, r2
	movls r3, #0x1
_020B0AEC:
	cmp r3, #0x0
	ldmeqia sp!, {r4-r10,pc}
	ldr r0, [r7, #0x0]
	ldr r2, _020B0BA8 ; =UNK_021CCDA0
	mov r1, #0x540
	mla r2, r0, r1, r2
	ldrh r5, [r7, #0xa]
	add r4, r2, #0x100
	ldrh r1, [r7, #0xc]
	mov r2, r5, lsl #0x15
	ldr r3, _020B0BAC ; =UNK_0210655C
	sub r1, r1, r5
	add r1, r1, #0x1
	mov r1, r1, lsl #0x10
	add r9, r4, r5, lsl #0x5
	ldr r5, [r3, r0, lsl #0x2]
	movs r8, r1, lsr #0x10
	mov r7, r2, lsr #0x10
	mov r6, #0x0
	ldmeqia sp!, {r4-r10,pc}
	mov r4, #0x2
_020B0B40:
	mov r2, r4
	add r0, r9, #0x6
	add r1, r7, #0x6
	blx r5
	mov r2, r4
	add r0, r9, #0xe
	add r1, r7, #0xe
	blx r5
	mov r2, r4
	add r0, r9, #0x16
	add r1, r7, #0x16
	blx r5
	add r0, r9, #0x1e
	add r1, r7, #0x1e
	mov r2, r4
	blx r5
	add r0, r7, #0x20
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	add r9, r9, #0x20
	add r0, r6, #0x1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, r8
	blo _020B0B40
	ldmia sp!, {r4-r10,pc}
	.balign 4
_020B0BA8: .word UNK_021CCDA0
_020B0BAC: .word UNK_0210655C
	arm_func_end FUN_020B09B4

	arm_func_start FUN_020B0BB0
FUN_020B0BB0: ; 0x020B0BB0
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldrh r12, [r0, #0xc]
	ldrh r3, [r0, #0xe]
	mov lr, #0x0
	add r2, r12, #0x1
	cmp r3, r2
	bgt _020B0BDC
	ldrh r2, [r0, #0xa]
	cmp r2, r12
	movls lr, #0x1
_020B0BDC:
	cmp lr, #0x0
	subne r2, r12, r3
	addne r2, r2, #0x1
	movne r2, r2, lsl #0x10
	movne r2, r2, lsr #0x10
	moveq r2, #0x0
	cmp r2, #0x1
	movcs r2, #0x1
	movcc r2, #0x0
	cmp r2, #0x0
	addeq sp, sp, #0x4
	ldreq r0, _020B0C74 ; =0x0000FFFE
	ldmeqia sp!, {pc}
	ldr lr, [r0, #0x0]
	ldr r3, _020B0C78 ; =UNK_021CCDA0
	mov r2, #0x540
	mla r12, lr, r2, r3
	ldr r3, [r1, #0x0]
	ldrh r2, [r0, #0xe]
	add r12, r12, #0x100
	mov r3, r3, asr #0x4
	add r12, r12, r2, lsl #0x5
	strh r3, [r12, #0x6]
	ldr r3, [r1, #0x4]
	mov r3, r3, asr #0x4
	strh r3, [r12, #0xe]
	ldr r3, [r1, #0x8]
	mov r3, r3, asr #0x4
	strh r3, [r12, #0x16]
	ldr r1, [r1, #0xc]
	mov r1, r1, asr #0x4
	strh r1, [r12, #0x1e]
	ldrh r1, [r0, #0xe]
	add r1, r1, #0x1
	strh r1, [r0, #0xe]
	mov r0, r2
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B0C74: .word 0x0000FFFE
_020B0C78: .word UNK_021CCDA0
	arm_func_end FUN_020B0BB0

	arm_func_start FUN_020B0C7C
FUN_020B0C7C: ; 0x020B0C7C
	stmdb sp!, {r4,lr}
	ldrh r12, [r0, #0x6]
	ldrh r4, [r0, #0x8]
	mov lr, #0x0
	add r3, r12, #0x1
	cmp r4, r3
	bgt _020B0CA4
	ldrh r3, [r0, #0x4]
	cmp r3, r12
	movls lr, #0x1
_020B0CA4:
	cmp lr, #0x0
	subne r3, r12, r4
	addne r3, r3, #0x1
	movne r3, r3, lsl #0x10
	movne r3, r3, lsr #0x10
	moveq r3, #0x0
	cmp r3, #0x1
	movcs r3, #0x1
	movcc r3, #0x0
	cmp r3, #0x0
	beq _020B0D48
	ldr r4, [r0, #0x0]
	ldr ip, _020B0D50 ; =UNK_021CCDA0
	mov r3, #0x540
	mla r12, r4, r3, r12
	ldrh r3, [r0, #0x8]
	add r4, r12, #0x100
	ldrh r12, [r1, #0x0]
	mov lr, r3, lsl #0x3
	add r3, r4, r3, lsl #0x3
	strh r12, [r4, lr]
	ldrh lr, [r1, #0x2]
	ldr ip, _020B0D54 ; =0x0000FFFE
	strh lr, [r3, #0x2]
	ldrh r1, [r1, #0x4]
	cmp r2, r12
	strh r1, [r3, #0x4]
	beq _020B0D34
	ldr r1, [r3, #0x0]
	mov r12, r1, lsl #0x16
	mov r12, r12, lsr #0x1e
	ands r12, r12, #0x1
	bicne r12, r1, #0x3e000000
	andne r1, r2, #0x1f
	orrne r1, r12, r1, lsl #0x19
	strne r1, [r3, #0x0]
_020B0D34:
	ldrh r1, [r0, #0x8]
	add r1, r1, #0x1
	strh r1, [r0, #0x8]
	mov r0, #0x1
	ldmia sp!, {r4,pc}
_020B0D48:
	mov r0, #0x0
	ldmia sp!, {r4,pc}
	.balign 4
_020B0D50: .word UNK_021CCDA0
_020B0D54: .word 0x0000FFFE
	arm_func_end FUN_020B0C7C

	arm_func_start FUN_020B0D58
FUN_020B0D58: ; 0x020B0D58
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldrh lr, [r0, #0x6]
	ldrh r12, [r0, #0x8]
	mov r4, #0x0
	add r3, lr, #0x1
	cmp r12, r3
	bgt _020B0D84
	ldrh r3, [r0, #0x4]
	cmp r3, lr
	movls r4, #0x1
_020B0D84:
	cmp r4, #0x0
	subne r3, lr, r12
	addne r3, r3, #0x1
	movne r3, r3, lsl #0x10
	movne r3, r3, lsr #0x10
	moveq r3, #0x0
	cmp r3, r2
	movcs r3, #0x1
	movcc r3, #0x0
	cmp r3, #0x0
	beq _020B0E24
	ldr lr, [r0, #0x0]
	ldr ip, _020B0E30 ; =UNK_021CCDA0
	mov r3, #0x540
	mla r12, lr, r3, r12
	ldrh r3, [r0, #0x8]
	add r12, r12, #0x100
	cmp r2, #0x0
	add r4, r12, r3, lsl #0x3
	mov r5, #0x0
	ble _020B0E18
	add r3, r0, #0x8
_020B0DDC:
	ldrh lr, [r1, #0x0]
	mov r0, r5, lsl #0x3
	add r12, r4, r5, lsl #0x3
	strh lr, [r4, r0]
	ldrh r0, [r1, #0x2]
	add r5, r5, #0x1
	cmp r5, r2
	strh r0, [r12, #0x2]
	ldrh r0, [r1, #0x4]
	add r1, r1, #0x8
	strh r0, [r12, #0x4]
	ldrh r0, [r3, #0x0]
	add r0, r0, #0x1
	strh r0, [r3, #0x0]
	blt _020B0DDC
_020B0E18:
	add sp, sp, #0x4
	mov r0, #0x1
	ldmia sp!, {r4-r5,pc}
_020B0E24:
	mov r0, #0x0
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B0E30: .word UNK_021CCDA0
	arm_func_end FUN_020B0D58

	arm_func_start FUN_020B0E34
FUN_020B0E34: ; 0x020B0E34
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldr r5, [sp, #0x1c]
	ldr r6, _020B0FB4 ; =UNK_021CCDA0
	mov r4, #0x540
	mla r4, r5, r4, r6
	mov lr, r1
	sub r1, r2, #0x1
	add r1, lr, r1
	mov r1, r1, lsl #0x10
	mov r12, r1, lsr #0x10
	add r7, r4, lr, lsl #0x1
	add r2, r4, r12, lsl #0x1
	mov r6, r0
	mov r5, r3
	cmp r7, r2
	mov r3, lr, lsl #0x1
	bhi _020B0E9C
	ldr r0, _020B0FB8 ; =0x0000FFFF
_020B0E80:
	ldrh r1, [r7, #0x0]
	cmp r1, r0
	movne r0, #0x0
	bne _020B0EA0
	add r7, r7, #0x2
	cmp r7, r2
	bls _020B0E80
_020B0E9C:
	mov r0, #0x1
_020B0EA0:
	cmp r0, #0x0
	beq _020B0EE0
	ldr r0, _020B0FBC ; =UNK_021CCD9C
	sub r2, r12, lr
	ldrh r7, [r0, #0x0]
	add r1, r4, r3
	mov r2, r2, lsl #0x1
	add r3, r7, #0x1
	strh r3, [r0, #0x0]
	strh r7, [r6, #0x10]
	strh lr, [r6, #0x4]
	strh r12, [r6, #0x6]
	strh lr, [r6, #0x8]
	ldrh r0, [r6, #0x10]
	bl MIi_CpuClear16
	b _020B0EEC
_020B0EE0:
	add sp, sp, #0x4
	mov r0, #0x0
	ldmia sp!, {r4-r7,pc}
_020B0EEC:
	ldrh r0, [sp, #0x18]
	add r4, r4, #0x500
	cmp r0, #0x0
	bne _020B0F18
	mov r0, #0x20
	strh r0, [r6, #0xa]
	mov r0, #0x0
	strh r0, [r6, #0xc]
	ldrh r0, [r6, #0xa]
	strh r0, [r6, #0xe]
	b _020B0F98
_020B0F18:
	sub r0, r0, #0x1
	add r0, r5, r0
	mov r0, r0, lsl #0x10
	mov r12, r0, lsr #0x10
	add r7, r4, r5, lsl #0x1
	add r2, r4, r12, lsl #0x1
	cmp r7, r2
	mov r3, r5, lsl #0x1
	bhi _020B0F5C
	ldr r0, _020B0FB8 ; =0x0000FFFF
_020B0F40:
	ldrh r1, [r7, #0x0]
	cmp r1, r0
	movne r0, #0x0
	bne _020B0F60
	add r7, r7, #0x2
	cmp r7, r2
	bls _020B0F40
_020B0F5C:
	mov r0, #0x1
_020B0F60:
	cmp r0, #0x0
	beq _020B0F8C
	strh r5, [r6, #0xa]
	strh r12, [r6, #0xc]
	strh r5, [r6, #0xe]
	ldrh r0, [r6, #0x10]
	sub r2, r12, r5
	add r1, r4, r3
	mov r2, r2, lsl #0x1
	bl MIi_CpuClear16
	b _020B0F98
_020B0F8C:
	add sp, sp, #0x4
	mov r0, #0x0
	ldmia sp!, {r4-r7,pc}
_020B0F98:
	mov r1, #0x0
	ldr r0, [sp, #0x1c]
	str r1, [r6, #0x14]
	str r0, [r6, #0x0]
	mov r0, #0x1
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B0FB4: .word UNK_021CCDA0
_020B0FB8: .word 0x0000FFFF
_020B0FBC: .word UNK_021CCD9C
	arm_func_end FUN_020B0E34

	arm_func_start FUN_020B0FC0
FUN_020B0FC0: ; 0x020B0FC0
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r1, _020B1060 ; =UNK_021CCEA0
	mov r0, #0xc0
	mov r2, #0x400
	bl MIi_CpuClear16
	ldr r1, _020B1064 ; =UNK_021CD3E0
	mov r0, #0xc0
	mov r2, #0x400
	bl MIi_CpuClear16
	ldr r1, _020B1068 ; =UNK_021CD920
	mov r0, #0xc0
	mov r2, #0x400
	bl MIi_CpuClear16
	ldr r0, _020B106C ; =0x0000FFFF
	ldr r1, _020B1070 ; =UNK_021CCDA0
	mov r2, #0x100
	bl MIi_CpuClear16
	ldr r0, _020B106C ; =0x0000FFFF
	ldr r1, _020B1074 ; =UNK_021CD2E0
	mov r2, #0x100
	bl MIi_CpuClear16
	ldr r0, _020B106C ; =0x0000FFFF
	ldr r1, _020B1078 ; =UNK_021CD820
	mov r2, #0x100
	bl MIi_CpuClear16
	ldr r0, _020B106C ; =0x0000FFFF
	ldr r1, _020B107C ; =UNK_021CD2A0
	mov r2, #0x40
	bl MIi_CpuClear16
	ldr r0, _020B106C ; =0x0000FFFF
	ldr r1, _020B1080 ; =UNK_021CD7E0
	mov r2, #0x40
	bl MIi_CpuClear16
	ldr r0, _020B106C ; =0x0000FFFF
	ldr r1, _020B1084 ; =UNK_021CDD20
	mov r2, #0x40
	bl MIi_CpuClear16
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B1060: .word UNK_021CCEA0
_020B1064: .word UNK_021CD3E0
_020B1068: .word UNK_021CD920
_020B106C: .word 0x0000FFFF
_020B1070: .word UNK_021CCDA0
_020B1074: .word UNK_021CD2E0
_020B1078: .word UNK_021CD820
_020B107C: .word UNK_021CD2A0
_020B1080: .word UNK_021CD7E0
_020B1084: .word UNK_021CDD20
	arm_func_end FUN_020B0FC0

	arm_func_start FUN_020B1088
FUN_020B1088: ; 0x020B1088
	ldr ip, _020B1094 ; =MIi_CpuCopy16
	add r1, r1, #0x7000000
	bx r12
	.balign 4
_020B1094: .word MIi_CpuCopy16
	arm_func_end FUN_020B1088

	arm_func_start FUN_020B1098
FUN_020B1098: ; 0x020B1098
	ldr r3, _020B10A8 ; =0x07000400
	ldr ip, _020B10AC ; =MIi_CpuCopy16
	add r1, r1, r3
	bx r12
	.balign 4
_020B10A8: .word 0x07000400
_020B10AC: .word MIi_CpuCopy16
	arm_func_end FUN_020B1098

	arm_func_start FUN_020B10B0
FUN_020B10B0: ; 0x020B10B0
	mov r1, r1, lsl #0x1
	ldrh r0, [r0, r1]
	bx lr
	arm_func_end FUN_020B10B0

	arm_func_start FUN_020B10BC
FUN_020B10BC: ; 0x020B10BC
	ldr r0, [r0, r1, lsl #0x2]
	bx lr
	arm_func_end FUN_020B10BC

	arm_func_start FUN_020B10C4
FUN_020B10C4:
	str r2, [r0, r1, lsl #0x2]
	bx lr
	arm_func_end FUN_020B10C4

	arm_func_start FUN_020B10CC
FUN_020B10CC:
	mov r2, #0x0
	mvn r1, #0x0
_020B10D4:
	str r1, [r0, r2, lsl #0x2]
	add r2, r2, #0x1
	cmp r2, #0x3
	blt _020B10D4
	bx lr
	arm_func_end FUN_020B10CC

	arm_func_start FUN_020B10E8
FUN_020B10E8: ; 0x020B10E8
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	mov r10, r0
	ldr r0, [r10, #0x0]
	mov r9, r1
	cmp r0, #0x3
	ldr r0, [sp, #0x28]
	moveq r7, #0x20
	str r0, [sp, #0x28]
	ldrh r0, [r9, #0x0]
	movne r7, #0x200
	mov r11, r2
	mov r8, r3
	str r0, [sp, #0x0]
	mov r6, #0x0
	cmp r0, #0x0
	bls _020B1210
_020B112C:
	ldr r1, [r9, #0x4]
	mov r0, r6, lsl #0x1
	ldrh r2, [r1, r0]
	ldr r0, [r10, #0xc]
	ldr r1, [r10, #0x8]
	mla r5, r7, r2, r11
	mla r4, r7, r6, r0
	bl DC_FlushRange
	cmp r8, #0x0
	beq _020B11E0
	cmp r8, #0x1
	beq _020B1168
	cmp r8, #0x2
	beq _020B11A4
	b _020B11F8
_020B1168:
	ldr r0, [r10, #0x4]
	cmp r0, #0x0
	beq _020B1190
	bl GX_BeginLoadOBJExtPltt
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl GX_LoadOBJExtPltt
	bl GX_EndLoadOBJExtPltt
	b _020B11F8
_020B1190:
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl GX_LoadOBJPltt
	b _020B11F8
_020B11A4:
	ldr r0, [r10, #0x4]
	cmp r0, #0x0
	beq _020B11CC
	bl GXS_BeginLoadOBJExtPltt
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl GXS_LoadOBJExtPltt
	bl GXS_EndLoadOBJExtPltt
	b _020B11F8
_020B11CC:
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl GXS_LoadOBJPltt
	b _020B11F8
_020B11E0:
	bl GX_BeginLoadTexPltt
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
_020B11F8:
	add r0, r6, #0x1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	ldr r0, [sp, #0x0]
	cmp r6, r0
	blo _020B112C
_020B1210:
	ldr r0, [sp, #0x28]
	ldr r2, [r10, #0x0]
	mov r1, r0
	str r2, [r1, #0x0]
	ldr r4, [r10, #0x4]
	mov r3, r0
	mov r1, r8
	mov r2, r11
	str r4, [r3, #0x4]
	bl FUN_020B19D0
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B10E8

	arm_func_start FUN_020B1240
FUN_020B1240: ; 0x020B1240
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	mov r9, r0
	ldr r5, [r9, #0xc]
	ldr r4, [r9, #0x8]
	mov r8, r1
	mov r7, r2
	mov r0, r5
	mov r1, r4
	mov r6, r3
	bl DC_FlushRange
	cmp r7, #0x0
	beq _020B1300
	cmp r7, #0x1
	beq _020B1288
	cmp r7, #0x2
	beq _020B12C4
	b _020B1318
_020B1288:
	ldr r0, [r9, #0x4]
	cmp r0, #0x0
	beq _020B12B0
	bl GX_BeginLoadOBJExtPltt
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl GX_LoadOBJExtPltt
	bl GX_EndLoadOBJExtPltt
	b _020B1318
_020B12B0:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl GX_LoadOBJPltt
	b _020B1318
_020B12C4:
	ldr r0, [r9, #0x4]
	cmp r0, #0x0
	beq _020B12EC
	bl GXS_BeginLoadOBJExtPltt
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl GXS_LoadOBJExtPltt
	bl GXS_EndLoadOBJExtPltt
	b _020B1318
_020B12EC:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl GXS_LoadOBJPltt
	b _020B1318
_020B1300:
	bl GX_BeginLoadTexPltt
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
_020B1318:
	ldr r1, [r9, #0x0]
	mov r0, r6
	str r1, [r6, #0x0]
	ldr r3, [r9, #0x4]
	mov r1, r7
	mov r2, r8
	str r3, [r6, #0x4]
	bl FUN_020B19D0
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	arm_func_end FUN_020B1240

	arm_func_start FUN_020B1340
FUN_020B1340: ; 0x020B1340
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r7, r0
	mov r6, r1
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	mov r5, r2
	mov r4, r3
	bl DC_FlushRange
	cmp r5, #0x0
	ldr r0, [r7, #0x8]
	beq _020B13B8
	cmp r5, #0x1
	beq _020B1384
	cmp r5, #0x2
	beq _020B13A0
	b _020B13B8
_020B1384:
	mov r3, #0x4000000
	ldr r2, [r3, #0x0]
	ldr r1, _020B1520 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0x0]
	b _020B13B8
_020B13A0:
	ldr r3, _020B1524 ; =0x04001000
	ldr r1, _020B1520 ; =0xFFCFFFEF
	ldr r2, [r3, #0x0]
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0x0]
_020B13B8:
	ldr r0, [r7, #0x8]
	cmp r0, #0x0
	bne _020B14D8
	ldrh r0, [r7, #0x2]
	cmp r0, #0x10
	bgt _020B1408
	cmp r0, #0x10
	bge _020B1434
	cmp r0, #0x8
	addls pc, pc, r0, lsl #0x2
	b _020B1444
	; Jump table
	b _020B1444 ; case 0
	b _020B1414 ; case 1
	b _020B141C ; case 2
	b _020B1444 ; case 3
	b _020B1424 ; case 4
	b _020B1444 ; case 5
	b _020B1444 ; case 6
	b _020B1444 ; case 7
	b _020B142C ; case 8
_020B1408:
	cmp r0, #0x20
	beq _020B143C
	b _020B1444
_020B1414:
	mov r0, #0x0
	b _020B1448
_020B141C:
	mov r0, #0x1
	b _020B1448
_020B1424:
	mov r0, #0x2
	b _020B1448
_020B142C:
	mov r0, #0x3
	b _020B1448
_020B1434:
	mov r0, #0x4
	b _020B1448
_020B143C:
	mov r0, #0x5
	b _020B1448
_020B1444:
	mov r0, #0x0
_020B1448:
	str r0, [r4, #0xc]
	ldrh r0, [r7, #0x0]
	cmp r0, #0x10
	bgt _020B1490
	cmp r0, #0x10
	bge _020B14BC
	cmp r0, #0x8
	addls pc, pc, r0, lsl #0x2
	b _020B14CC
	; Jump table
	b _020B14CC ; case 0
	b _020B149C ; case 1
	b _020B14A4 ; case 2
	b _020B14CC ; case 3
	b _020B14AC ; case 4
	b _020B14CC ; case 5
	b _020B14CC ; case 6
	b _020B14CC ; case 7
	b _020B14B4 ; case 8
_020B1490:
	cmp r0, #0x20
	beq _020B14C4
	b _020B14CC
_020B149C:
	mov r0, #0x0
	b _020B14D0
_020B14A4:
	mov r0, #0x1
	b _020B14D0
_020B14AC:
	mov r0, #0x2
	b _020B14D0
_020B14B4:
	mov r0, #0x3
	b _020B14D0
_020B14BC:
	mov r0, #0x4
	b _020B14D0
_020B14C4:
	mov r0, #0x5
	b _020B14D0
_020B14CC:
	mov r0, #0x0
_020B14D0:
	str r0, [r4, #0x10]
	b _020B14E8
_020B14D8:
	ldrh r0, [r7, #0x2]
	str r0, [r4, #0xc]
	ldrh r0, [r7, #0x0]
	str r0, [r4, #0x10]
_020B14E8:
	ldr r1, [r7, #0x4]
	mov r0, #0x0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	mov r0, #0x1
	str r0, [r4, #0x1c]
	ldr r3, [r7, #0x8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	str r3, [r4, #0x20]
	bl FUN_020B1A1C
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B1520: .word 0xFFCFFFEF
_020B1524: .word 0x04001000
	arm_func_end FUN_020B1340

	arm_func_start FUN_020B1528
FUN_020B1528: ; 0x020B1528
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r7, r0
	movs r5, r2
	mov r6, r1
	mov r4, r3
	ldr r0, [r7, #0x8]
	beq _020B1590
	cmp r5, #0x1
	beq _020B155C
	cmp r5, #0x2
	beq _020B1578
	b _020B1590
_020B155C:
	mov r3, #0x4000000
	ldr r2, [r3, #0x0]
	ldr r1, _020B1760 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0x0]
	b _020B1590
_020B1578:
	ldr r3, _020B1764 ; =0x04001000
	ldr r1, _020B1760 ; =0xFFCFFFEF
	ldr r2, [r3, #0x0]
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0x0]
_020B1590:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	bl DC_FlushRange
	cmp r5, #0x0
	beq _020B15B8
	cmp r5, #0x1
	beq _020B15D4
	cmp r5, #0x2
	beq _020B15E8
	b _020B15F8
_020B15B8:
	bl GX_BeginLoadTex
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GX_LoadTex
	bl GX_EndLoadTex
	b _020B15F8
_020B15D4:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GX_LoadOBJ
	b _020B15F8
_020B15E8:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GXS_LoadOBJ
_020B15F8:
	ldr r0, [r7, #0x8]
	cmp r0, #0x0
	bne _020B1718
	ldrh r0, [r7, #0x2]
	cmp r0, #0x10
	bgt _020B1648
	cmp r0, #0x10
	bge _020B1674
	cmp r0, #0x8
	addls pc, pc, r0, lsl #0x2
	b _020B1684
	; Jump table
	b _020B1684 ; case 0
	b _020B1654 ; case 1
	b _020B165C ; case 2
	b _020B1684 ; case 3
	b _020B1664 ; case 4
	b _020B1684 ; case 5
	b _020B1684 ; case 6
	b _020B1684 ; case 7
	b _020B166C ; case 8
_020B1648:
	cmp r0, #0x20
	beq _020B167C
	b _020B1684
_020B1654:
	mov r0, #0x0
	b _020B1688
_020B165C:
	mov r0, #0x1
	b _020B1688
_020B1664:
	mov r0, #0x2
	b _020B1688
_020B166C:
	mov r0, #0x3
	b _020B1688
_020B1674:
	mov r0, #0x4
	b _020B1688
_020B167C:
	mov r0, #0x5
	b _020B1688
_020B1684:
	mov r0, #0x0
_020B1688:
	str r0, [r4, #0xc]
	ldrh r0, [r7, #0x0]
	cmp r0, #0x10
	bgt _020B16D0
	cmp r0, #0x10
	bge _020B16FC
	cmp r0, #0x8
	addls pc, pc, r0, lsl #0x2
	b _020B170C
	; Jump table
	b _020B170C ; case 0
	b _020B16DC ; case 1
	b _020B16E4 ; case 2
	b _020B170C ; case 3
	b _020B16EC ; case 4
	b _020B170C ; case 5
	b _020B170C ; case 6
	b _020B170C ; case 7
	b _020B16F4 ; case 8
_020B16D0:
	cmp r0, #0x20
	beq _020B1704
	b _020B170C
_020B16DC:
	mov r0, #0x0
	b _020B1710
_020B16E4:
	mov r0, #0x1
	b _020B1710
_020B16EC:
	mov r0, #0x2
	b _020B1710
_020B16F4:
	mov r0, #0x3
	b _020B1710
_020B16FC:
	mov r0, #0x4
	b _020B1710
_020B1704:
	mov r0, #0x5
	b _020B1710
_020B170C:
	mov r0, #0x0
_020B1710:
	str r0, [r4, #0x10]
	b _020B1728
_020B1718:
	ldrh r0, [r7, #0x2]
	str r0, [r4, #0xc]
	ldrh r0, [r7, #0x0]
	str r0, [r4, #0x10]
_020B1728:
	ldr r1, [r7, #0x4]
	mov r0, #0x0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	mov r0, #0x1
	str r0, [r4, #0x1c]
	ldr r3, [r7, #0x8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	str r3, [r4, #0x20]
	bl FUN_020B1A1C
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B1760: .word 0xFFCFFFEF
_020B1764: .word 0x04001000
	arm_func_end FUN_020B1528

	arm_func_start FUN_020B1768
FUN_020B1768: ; 0x020B1768
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r7, r0
	movs r5, r2
	mov r6, r1
	mov r4, r3
	ldr r0, [r7, #0x8]
	beq _020B17D0
	cmp r5, #0x1
	beq _020B179C
	cmp r5, #0x2
	beq _020B17B8
	b _020B17D0
_020B179C:
	mov r3, #0x4000000
	ldr r2, [r3, #0x0]
	ldr r1, _020B19A0 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0x0]
	b _020B17D0
_020B17B8:
	ldr r3, _020B19A4 ; =0x04001000
	ldr r1, _020B19A0 ; =0xFFCFFFEF
	ldr r2, [r3, #0x0]
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0x0]
_020B17D0:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	bl DC_FlushRange
	cmp r5, #0x0
	beq _020B17F8
	cmp r5, #0x1
	beq _020B1814
	cmp r5, #0x2
	beq _020B1828
	b _020B1838
_020B17F8:
	bl GX_BeginLoadTex
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GX_LoadTex
	bl GX_EndLoadTex
	b _020B1838
_020B1814:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GX_LoadOBJ
	b _020B1838
_020B1828:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GXS_LoadOBJ
_020B1838:
	ldr r0, [r7, #0x8]
	cmp r0, #0x0
	bne _020B1958
	ldrh r0, [r7, #0x2]
	cmp r0, #0x10
	bgt _020B1888
	cmp r0, #0x10
	bge _020B18B4
	cmp r0, #0x8
	addls pc, pc, r0, lsl #0x2
	b _020B18C4
	; Jump table
	b _020B18C4 ; case 0
	b _020B1894 ; case 1
	b _020B189C ; case 2
	b _020B18C4 ; case 3
	b _020B18A4 ; case 4
	b _020B18C4 ; case 5
	b _020B18C4 ; case 6
	b _020B18C4 ; case 7
	b _020B18AC ; case 8
_020B1888:
	cmp r0, #0x20
	beq _020B18BC
	b _020B18C4
_020B1894:
	mov r0, #0x0
	b _020B18C8
_020B189C:
	mov r0, #0x1
	b _020B18C8
_020B18A4:
	mov r0, #0x2
	b _020B18C8
_020B18AC:
	mov r0, #0x3
	b _020B18C8
_020B18B4:
	mov r0, #0x4
	b _020B18C8
_020B18BC:
	mov r0, #0x5
	b _020B18C8
_020B18C4:
	mov r0, #0x0
_020B18C8:
	str r0, [r4, #0xc]
	ldrh r0, [r7, #0x0]
	cmp r0, #0x10
	bgt _020B1910
	cmp r0, #0x10
	bge _020B193C
	cmp r0, #0x8
	addls pc, pc, r0, lsl #0x2
	b _020B194C
	; Jump table
	b _020B194C ; case 0
	b _020B191C ; case 1
	b _020B1924 ; case 2
	b _020B194C ; case 3
	b _020B192C ; case 4
	b _020B194C ; case 5
	b _020B194C ; case 6
	b _020B194C ; case 7
	b _020B1934 ; case 8
_020B1910:
	cmp r0, #0x20
	beq _020B1944
	b _020B194C
_020B191C:
	mov r0, #0x0
	b _020B1950
_020B1924:
	mov r0, #0x1
	b _020B1950
_020B192C:
	mov r0, #0x2
	b _020B1950
_020B1934:
	mov r0, #0x3
	b _020B1950
_020B193C:
	mov r0, #0x4
	b _020B1950
_020B1944:
	mov r0, #0x5
	b _020B1950
_020B194C:
	mov r0, #0x0
_020B1950:
	str r0, [r4, #0x10]
	b _020B1968
_020B1958:
	ldrh r0, [r7, #0x2]
	str r0, [r4, #0xc]
	ldrh r0, [r7, #0x0]
	str r0, [r4, #0x10]
_020B1968:
	ldr r1, [r7, #0x4]
	mov r0, #0x0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	mov r0, #0x1
	str r0, [r4, #0x1c]
	ldr r3, [r7, #0x8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	str r3, [r4, #0x20]
	bl FUN_020B1A1C
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B19A0: .word 0xFFCFFFEF
_020B19A4: .word 0x04001000
	arm_func_end FUN_020B1768

	arm_func_start FUN_020B19A8
FUN_020B19A8:
	add r0, r0, r1, lsl #0x2
	ldr r1, [r0, #0x8]
	mvn r0, #0x0
	cmp r1, r0
	movne r0, #0x1
	moveq r0, #0x0
	bx lr
	arm_func_end FUN_020B19A8

	arm_func_start FUN_020B19C4
FUN_020B19C4: ; 0x020B19C4
	add r0, r0, r1, lsl #0x2
	ldr r0, [r0, #0x8]
	bx lr
	arm_func_end FUN_020B19C4

	arm_func_start FUN_020B19D0
FUN_020B19D0: ; 0x020B19D0
	add r0, r0, r1, lsl #0x2
	str r2, [r0, #0x8]
	bx lr
	arm_func_end FUN_020B19D0

	arm_func_start FUN_020B19DC
FUN_020B19DC: ; 0x020B19DC
	mov r3, #0x0
	mvn r2, #0x0
_020B19E4:
	add r1, r0, r3, lsl #0x2
	add r3, r3, #0x1
	str r2, [r1, #0x8]
	cmp r3, #0x3
	blt _020B19E4
	bx lr
	arm_func_end FUN_020B19DC

	arm_func_start FUN_020B19FC
FUN_020B19FC:
	ldr r1, [r0, r1, lsl #0x2]
	mvn r0, #0x0
	cmp r1, r0
	movne r0, #0x1
	moveq r0, #0x0
	bx lr
	arm_func_end FUN_020B19FC

	arm_func_start FUN_020B1A14
FUN_020B1A14: ; 0x020B1A14
	ldr r0, [r0, r1, lsl #0x2]
	bx lr
	arm_func_end FUN_020B1A14

	arm_func_start FUN_020B1A1C
FUN_020B1A1C: ; 0x020B1A1C
	str r2, [r0, r1, lsl #0x2]
	bx lr
	arm_func_end FUN_020B1A1C

	arm_func_start FUN_020B1A24
FUN_020B1A24: ; 0x020B1A24
	mov r2, #0x0
	mvn r1, #0x0
_020B1A2C:
	str r1, [r0, r2, lsl #0x2]
	add r2, r2, #0x1
	cmp r2, #0x3
	blt _020B1A2C
	bx lr
	arm_func_end FUN_020B1A24

	arm_func_start FUN_020B1A40
FUN_020B1A40: ; 0x020B1A40
	stmdb sp!, {r4,lr}
	mov r4, r0
	add r1, r4, #0x4
	mov r0, #0x0
	mov r2, #0x18
	bl MIi_CpuClear16
	mov r0, #0x1000
	str r0, [r4, #0x4]
	str r0, [r4, #0x8]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B1A40

	arm_func_start FUN_020B1A68
FUN_020B1A68:
	ldr ip, _020B1A74 ; =FUN_020B1A40
	str r1, [r0, #0x0]
	bx r12
	.balign 4
_020B1A74: .word FUN_020B1A40
	arm_func_end FUN_020B1A68

	arm_func_start FUN_020B1A78
FUN_020B1A78: ; 0x020B1A78
	ldr r3, [r0, #0x0]
	cmp r3, #0x1
	ldreqh r3, [r0, #0x12]
	orreq r3, r3, #0x2
	streqh r3, [r0, #0x12]
	streq r1, [r0, #0x4]
	streq r2, [r0, #0x8]
	bx lr
	arm_func_end FUN_020B1A78

	arm_func_start FUN_020B1A98
FUN_020B1A98: ; 0x020B1A98
	ldr r2, [r0, #0x0]
	cmp r2, #0x1
	ldreqh r2, [r0, #0x12]
	orreq r2, r2, #0x4
	streqh r2, [r0, #0x12]
	streqh r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_020B1A98

	arm_func_start FUN_020B1AB4
FUN_020B1AB4: ; 0x020B1AB4
	ldr r3, [r0, #0x0]
	cmp r3, #0x1
	ldreqh r3, [r0, #0x12]
	orreq r3, r3, #0x8
	streqh r3, [r0, #0x12]
	streqh r1, [r0, #0xc]
	streqh r2, [r0, #0xe]
	bx lr
	arm_func_end FUN_020B1AB4

	arm_func_start FUN_020B1AD4
FUN_020B1AD4: ; 0x020B1AD4
	mov r2, #0x0
	str r2, [r0, #0x0]
	str r1, [r0, #0x4]
	mov r1, #0x1
	str r1, [r0, #0x8]
	ldr ip, _020B1AF4 ; =FUN_020B1A68
	add r0, r0, #0xc
	bx r12
	.balign 4
_020B1AF4: .word FUN_020B1A68
	arm_func_end FUN_020B1AD4

	arm_func_start FUN_020B1AF8
FUN_020B1AF8: ; 0x020B1AF8
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x34
	ldrh r5, [r2, #0x0]
	ldr r4, [sp, #0x60]
	ldr r10, [sp, #0x58]
	str r4, [sp, #0x60]
	cmp r1, r5
	movcs r1, r5
	mov r4, #0x0
	cmp r1, #0x0
	str r4, [sp, #0x0]
	bls _020B1E7C
	ldrh r4, [sp, #0x5c]
	mov r4, r4, lsl #0x19
	str r4, [sp, #0x4]
	ldr r4, [sp, #0x0]
	str r4, [sp, #0x14]
	mov r4, #0x100
	str r4, [sp, #0xc]
	mov r4, #0x300
	str r4, [sp, #0x8]
	mov r4, #0x1
	str r4, [sp, #0x10]
_020B1B54:
	ldr r5, [sp, #0x0]
	mov r6, #0x6
	mul r6, r5, r6
	ldr r8, [r2, #0x4]
	ldr r4, [sp, #0x0]
	add r7, r0, r5, lsl #0x3
	ldrh r5, [r8, r6]
	mov r4, r4, lsl #0x3
	add r9, r8, r6
	strh r5, [r0, r4]
	ldrh r4, [r9, #0x2]
	cmp r3, #0x0
	strh r4, [r7, #0x2]
	ldrh r4, [r9, #0x4]
	strh r4, [r7, #0x4]
	bne _020B1B9C
	cmp r10, #0x0
	beq _020B1E60
_020B1B9C:
	ldr r5, [r7, #0x0]
	ldr r4, _020B1E88 ; =0x01FF0000
	and r4, r5, r4
	mov r4, r4, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r4, r4, asr #0x10
	cmp r4, #0xff
	orrgt r4, r4, #0xff00
	movgt r4, r4, lsl #0x10
	movgt r4, r4, asr #0x10
	mov r4, r4, lsl #0xc
	str r4, [sp, #0x20]
	ldr r4, [r7, #0x0]
	and r4, r4, #0xff
	mov r4, r4, lsl #0x10
	mov r4, r4, asr #0x10
	cmp r4, #0x7f
	orrgt r4, r4, #0xff00
	movgt r4, r4, lsl #0x10
	movgt r4, r4, asr #0x10
	mov r4, r4, lsl #0xc
	str r4, [sp, #0x24]
	cmp r3, #0x0
	beq _020B1E00
	ldr r5, [r7, #0x0]
	and r6, r5, #0x300
	cmp r6, #0x100
	beq _020B1C1C
	cmp r6, #0x300
	beq _020B1C1C
	and r4, r5, #0x30000000
	orr r6, r6, r4
_020B1C1C:
	cmp r6, #0x300
	bne _020B1C70
	ldr r4, _020B1E8C ; =0xC000C000
	ldr r8, _020B1E90 ; =UNK_020FF8AC
	and r5, r5, r4
	and r4, r5, #0xc000
	mov r6, r4, asr #0xe
	and r4, r5, #0xc0000000
	mov r4, r4, lsr #0x1e
	mov r4, r4, lsl #0x1
	add r8, r8, r6, lsl #0x3
	ldrh r9, [r4, r8]
	ldr r8, _020B1E94 ; =UNK_020FF894
	ldr r5, [sp, #0x20]
	add r6, r8, r6, lsl #0x3
	add r5, r5, r9, lsl #0xb
	str r5, [sp, #0x20]
	ldrh r4, [r4, r6]
	ldr r5, [sp, #0x24]
	add r4, r5, r4, lsl #0xb
	str r4, [sp, #0x24]
_020B1C70:
	ldr r4, [sp, #0x60]
	ldr r5, [r3, #0x8]
	cmp r4, #0x0
	ldrne r8, [sp, #0x8]
	add r4, sp, #0x20
	ldreq r8, [sp, #0xc]
	mov r6, r4
	cmp r8, #0x300
	ldreq r9, [sp, #0x10]
	mov r12, #0x1000
	ldrne r9, [sp, #0x14]
	cmp r4, r4
	ldr r4, [sp, #0x24]
	addeq r6, sp, #0x28
	smull r11, r4, r5, r4
	adds r5, r11, r12
	adc r11, r4, #0x0
	ldr r4, [r3, #0x0]
	ldr lr, [sp, #0x20]
	smlal r5, r11, r4, lr
	mov r4, r5, lsr #0xc
	orr r4, r4, r11, lsl #0x14
	str r4, [r6, #0x0]
	ldr r4, [r3, #0xc]
	ldr r5, [sp, #0x24]
	ldr lr, [r3, #0x4]
	smull r11, r5, r4, r5
	adds r11, r11, r12
	adc r4, r5, #0x0
	add r5, sp, #0x28
	cmp r6, r5
	ldr r5, [sp, #0x20]
	smlal r11, r4, lr, r5
	mov r5, r11, lsr #0xc
	orr r5, r5, r4, lsl #0x14
	str r5, [r6, #0x4]
	ldreq r5, [sp, #0x28]
	ldreq r4, [sp, #0x2c]
	streq r5, [sp, #0x20]
	streq r4, [sp, #0x24]
	cmp r8, #0x100
	beq _020B1D38
	cmp r8, #0x300
	beq _020B1D38
	ldr r5, [r7, #0x0]
	ldr r4, _020B1E98 ; =0xC1FFFCFF
	and r4, r5, r4
	orr r4, r4, r8
	str r4, [r7, #0x0]
	b _020B1D54
_020B1D38:
	ldr r5, [r7, #0x0]
	ldr r4, _020B1E98 ; =0xC1FFFCFF
	and r4, r5, r4
	orr r5, r4, r8
	ldr r4, [sp, #0x4]
	orr r4, r4, r5
	str r4, [r7, #0x0]
_020B1D54:
	ldr r6, [r7, #0x0]
	ldr r5, _020B1E8C ; =0xC000C000
	cmp r9, #0x0
	and r8, r6, r5
	and r5, r8, #0xc000
	mov r6, r5, asr #0xe
	and r5, r8, #0xc0000000
	ldr r8, _020B1E90 ; =UNK_020FF8AC
	mov r5, r5, lsr #0x1e
	mov r5, r5, lsl #0x1
	add r8, r8, r6, lsl #0x3
	ldrh r9, [r5, r8]
	ldr r8, _020B1E94 ; =UNK_020FF894
	ldr r4, [sp, #0x20]
	add r6, r8, r6, lsl #0x3
	mov r11, r9, asr #0x1
	ldrh r5, [r5, r6]
	mov r8, r11, lsl #0xc
	ldr r6, [r3, #0x0]
	rsb r12, r8, #0x0
	mov r9, r5, asr #0x1
	mla r12, r6, r11, r12
	ldr r5, [r3, #0x8]
	mla r6, r5, r9, r12
	add r6, r4, r6
	str r6, [sp, #0x20]
	ldr r12, [r3, #0x4]
	mov r5, r9, lsl #0xc
	str r12, [sp, #0x1c]
	ldr r12, [r3, #0xc]
	rsb lr, r5, #0x0
	str r12, [sp, #0x18]
	ldr r12, [sp, #0x1c]
	ldr r4, [sp, #0x24]
	mla r11, r12, r11, lr
	ldr r12, [sp, #0x18]
	subne r6, r6, r8
	mla r9, r12, r9, r11
	add r4, r4, r9
	str r4, [sp, #0x24]
	subne r4, r4, r5
	strne r6, [sp, #0x20]
	strne r4, [sp, #0x24]
_020B1E00:
	cmp r10, #0x0
	beq _020B1E28
	ldr r6, [sp, #0x20]
	ldr r4, [r10, #0x0]
	ldr r5, [sp, #0x24]
	add r4, r6, r4
	str r4, [sp, #0x20]
	ldr r4, [r10, #0x4]
	add r4, r5, r4
	str r4, [sp, #0x24]
_020B1E28:
	ldr r4, [sp, #0x20]
	ldr r6, [r7, #0x0]
	add r5, r4, #0x800
	ldr r4, _020B1E9C ; =0x000001FF
	and r4, r4, r5, asr #0xc
	ldr r5, _020B1EA0 ; =0xFE00FF00
	and r6, r6, r5
	ldr r5, [sp, #0x24]
	add r5, r5, #0x800
	mov r5, r5, asr #0xc
	and r5, r5, #0xff
	orr r5, r6, r5
	orr r4, r5, r4, lsl #0x10
	str r4, [r7, #0x0]
_020B1E60:
	ldr r4, [sp, #0x0]
	add r4, r4, #0x1
	mov r4, r4, lsl #0x10
	mov r4, r4, lsr #0x10
	str r4, [sp, #0x0]
	cmp r4, r1
	blo _020B1B54
_020B1E7C:
	mov r0, r1
	add sp, sp, #0x34
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B1E88: .word 0x01FF0000
_020B1E8C: .word 0xC000C000
_020B1E90: .word UNK_020FF8AC
_020B1E94: .word UNK_020FF894
_020B1E98: .word 0xC1FFFCFF
_020B1E9C: .word 0x000001FF
_020B1EA0: .word 0xFE00FF00
	arm_func_end FUN_020B1AF8

	arm_func_start FUN_020B1EA4
FUN_020B1EA4: ; 0x020B1EA4
	stmdb sp!, {r4,lr}
	mov r4, r0
	bl FUN_020B0518
	cmp r0, #0x0
	ldmeqia sp!, {r4,pc}
	mov r0, r4
	bl FUN_020B1FC4
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B1EA4

	arm_func_start FUN_020B1EC4
FUN_020B1EC4: ; 0x020B1EC4
	stmdb sp!, {r4,lr}
	mov r4, r0
	bl FUN_020B0534
	cmp r0, #0x0
	ldmeqia sp!, {r4,pc}
	mov r0, r4
	bl FUN_020B1FC4
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B1EC4

	arm_func_start FUN_020B1EE4
FUN_020B1EE4: ; 0x020B1EE4
	stmdb sp!, {r4,lr}
	mov r4, r0
	bl FUN_020B0438
	mov r0, r4
	bl FUN_020B1FC4
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B1EE4

	arm_func_start FUN_020B1EFC
FUN_020B1EFC: ; 0x020B1EFC
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x14
	mov r4, r2
	ldr r2, [r4, #0xc]
	mov r5, r1
	ldr r1, [r2, #0x0]
	ldr r2, [sp, #0x34]
	str r1, [sp, #0x0]
	ldr r1, [sp, #0x38]
	str r2, [sp, #0x4]
	mov r6, r3
	mov r7, r0
	ldr r12, [sp, #0x3c]
	str r1, [sp, #0x8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	mov r0, r6
	str r12, [sp, #0xc]
	bl FUN_020B45F0
	str r6, [r7, #0x34]
	str r4, [r7, #0x30]
	add r0, r7, #0x38
	mov r1, #0x1
	str r6, [r7, #0x34]
	bl FUN_020B1A68
	mov r0, r7
	bl FUN_020B04C0
	mov r0, r7
	mov r1, r5
	bl FUN_020B1EE4
	add sp, sp, #0x14
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020B1EFC

	arm_func_start FUN_020B1F80
FUN_020B1F80: ; 0x020B1F80
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	mov r4, r1
	str r2, [r5, #0x30]
	mvn r2, #0x0
	add r0, r5, #0x38
	mov r1, #0x1
	str r2, [r5, #0x34]
	bl FUN_020B1A68
	mov r0, r5
	bl FUN_020B04C0
	mov r0, r5
	mov r1, r4
	bl FUN_020B1EE4
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020B1F80

	arm_func_start FUN_020B1FC4
FUN_020B1FC4: ; 0x020B1FC4
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r5, r0
	ldr r1, [r5, #0x0]
	ldrh r1, [r1, #0x4]
	cmp r1, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r7,pc}
	bl FUN_020B06E0
	mov r4, r0
	ldr r7, [r5, #0x30]
	ldrh r1, [r4, #0x0]
	mov r0, r7
	bl FUN_020AFE8C
	str r0, [r5, #0x2c]
	ldr r1, [r5, #0x18]
	add r0, r5, #0x38
	ldr r2, [r1, #0x4]
	mov r1, #0x1
	and r6, r2, #0xff
	bl FUN_020B1A68
	cmp r6, #0x0
	beq _020B2068
	cmp r6, #0x2
	bne _020B203C
	ldrsh r1, [r4, #0x4]
	ldrsh r2, [r4, #0x6]
	add r0, r5, #0x38
	bl FUN_020B1AB4
	b _020B2068
_020B203C:
	ldr r1, [r4, #0x4]
	ldr r2, [r4, #0x8]
	add r0, r5, #0x38
	bl FUN_020B1A78
	ldrh r1, [r4, #0x2]
	add r0, r5, #0x38
	bl FUN_020B1A98
	ldrsh r1, [r4, #0xc]
	ldrsh r2, [r4, #0xe]
	add r0, r5, #0x38
	bl FUN_020B1AB4
_020B2068:
	ldr r2, [r7, #0xc]
	cmp r2, #0x0
	movne r0, #0x1
	moveq r0, #0x0
	cmp r0, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r7,pc}
	ldr r1, [r5, #0x34]
	mvn r0, #0x0
	cmp r1, r0
	movne r0, #0x1
	moveq r0, #0x0
	cmp r0, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r7,pc}
	ldrh r1, [r4, #0x0]
	ldr r2, [r2, #0x4]
	ldr r0, [r5, #0x34]
	add r3, r2, r1, lsl #0x3
	ldr r1, [r2, r1, lsl #0x3]
	ldr r2, [r3, #0x4]
	bl FUN_020B4400
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020B1FC4

	arm_func_start FUN_020B20C8
FUN_020B20C8: ; 0x020B20C8
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0xc
	mov r6, #0x0
	str r6, [r0, #0x38]
	ldr r7, [sp, #0x30]
	str r6, [r0, #0x30]
	mov r10, r1
	str r7, [r0, #0x34]
	str r0, [sp, #0x0]
	movs r8, r3
	mov r9, r2
	str r10, [r0, #0x3c]
	ldr r11, [sp, #0x34]
	beq _020B215C
	mov r0, #0x1
	str r6, [sp, #0x8]
	str r0, [sp, #0x4]
_020B210C:
	mov r0, #0x28
	mul r4, r6, r0
	ldr r1, [sp, #0x4]
	add r0, r10, r4
	bl FUN_020B1AD4
	mov r0, #0x54
	mla r5, r6, r0, r9
	ldr r1, [sp, #0x8]
	mov r0, r7
	str r5, [r10, r4]
	bl FUN_020AFC04
	mov r1, r0
	mov r0, r5
	mov r2, r11
	bl FUN_020B1F80
	add r0, r6, #0x1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, r8
	blo _020B210C
_020B215C:
	ldr r0, [sp, #0x0]
	bl FUN_020B04C0
	ldr r0, [sp, #0x0]
	ldr r3, [sp, #0x38]
	ldr r2, [sp, #0x0]
	add r0, r0, #0x44
	mov r1, #0x1
	str r3, [r2, #0x40]
	bl FUN_020B1A68
	ldr r0, [sp, #0x0]
	mov r1, #0x0
	strh r1, [r0, #0x2c]
	add sp, sp, #0xc
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B20C8

	arm_func_start FUN_020B2194
FUN_020B2194: ; 0x020B2194
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r7, r0
	bl FUN_020B0518
	cmp r0, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r7,pc}
	mov r0, r7
	bl FUN_020B06E0
	mov r4, r0
	ldrh r1, [r4, #0x0]
	ldr r0, [r7, #0x40]
	bl FUN_020AFF34
	ldr r1, [r7, #0x18]
	mov r6, r0
	ldr r1, [r1, #0x4]
	add r0, r7, #0x44
	and r5, r1, #0xff
	mov r1, #0x1
	bl FUN_020B1A68
	cmp r5, #0x0
	beq _020B2234
	cmp r5, #0x2
	bne _020B2208
	ldrsh r1, [r4, #0x4]
	ldrsh r2, [r4, #0x6]
	add r0, r7, #0x44
	bl FUN_020B1AB4
	b _020B2234
_020B2208:
	ldr r1, [r4, #0x4]
	ldr r2, [r4, #0x8]
	add r0, r7, #0x44
	bl FUN_020B1A78
	ldrh r1, [r4, #0x2]
	add r0, r7, #0x44
	bl FUN_020B1A98
	ldrsh r1, [r4, #0xc]
	ldrsh r2, [r4, #0xe]
	add r0, r7, #0x44
	bl FUN_020B1AB4
_020B2234:
	ldrh r2, [r7, #0x2c]
	mov r1, r6
	add r0, r7, #0x30
	bl FUN_020B24E0
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020B2194

	arm_func_start FUN_020B224C
FUN_020B224C: ; 0x020B224C
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r4, r0
	ldr r2, [r4, #0x0]
	mov r6, r1
	ldrh r5, [r2, #0x4]
	bl FUN_020B0534
	cmp r0, #0x0
	beq _020B2318
	ldrh r1, [r4, #0x2c]
	mov r0, r4
	add r1, r1, r5
	strh r1, [r4, #0x2c]
	bl FUN_020B06E0
	mov r5, r0
	ldrh r1, [r5, #0x0]
	ldr r0, [r4, #0x40]
	bl FUN_020AFF34
	ldr r1, [r4, #0x18]
	mov r7, r0
	ldr r1, [r1, #0x4]
	add r0, r4, #0x44
	and r6, r1, #0xff
	mov r1, #0x1
	bl FUN_020B1A68
	cmp r6, #0x0
	beq _020B2300
	cmp r6, #0x2
	bne _020B22D4
	ldrsh r1, [r5, #0x4]
	ldrsh r2, [r5, #0x6]
	add r0, r4, #0x44
	bl FUN_020B1AB4
	b _020B2300
_020B22D4:
	ldr r1, [r5, #0x4]
	ldr r2, [r5, #0x8]
	add r0, r4, #0x44
	bl FUN_020B1A78
	ldrh r1, [r5, #0x2]
	add r0, r4, #0x44
	bl FUN_020B1A98
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #0xe]
	add r0, r4, #0x44
	bl FUN_020B1AB4
_020B2300:
	ldrh r2, [r4, #0x2c]
	mov r1, r7
	add r0, r4, #0x30
	bl FUN_020B24E0
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
_020B2318:
	mov r1, r6
	add r0, r4, #0x30
	bl FUN_020B232C
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020B224C

	arm_func_start FUN_020B232C
FUN_020B232C: ; 0x020B232C
	stmdb sp!, {r4-r8,lr}
	mov r7, r0
	ldr r0, [r7, #0x8]
	mov r6, r1
	cmp r0, #0x1
	bne _020B238C
	ldr r0, [r7, #0x0]
	ldr r4, [r7, #0xc]
	ldrh r0, [r0, #0x2]
	mov r5, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r8,pc}
	mov r8, #0x58
_020B2360:
	mla r0, r5, r8, r4
	mov r1, r6
	bl FUN_020B1EC4
	ldr r1, [r7, #0x0]
	add r0, r5, #0x1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1, #0x2]
	mov r5, r0, lsr #0x10
	cmp r5, r1
	blo _020B2360
	ldmia sp!, {r4-r8,pc}
_020B238C:
	ldr r0, [r7, #0x0]
	ldr r4, [r7, #0xc]
	ldrh r0, [r0, #0x0]
	mov r5, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r8,pc}
	mov r8, #0x28
_020B23A8:
	mul r0, r5, r8
	ldr r0, [r4, r0]
	mov r1, r6
	bl FUN_020B1EC4
	ldr r1, [r7, #0x0]
	add r0, r5, #0x1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1, #0x0]
	mov r5, r0, lsr #0x10
	cmp r5, r1
	blo _020B23A8
	ldmia sp!, {r4-r8,pc}
	arm_func_end FUN_020B232C

	arm_func_start FUN_020B23D8
FUN_020B23D8: ; 0x020B23D8
	stmdb sp!, {r4-r6,lr}
	mov r5, r0
	ldrh r0, [r5, #0x0]
	mov r4, #0x0
	mov r6, r4
	cmp r0, #0x0
	bls _020B2424
_020B23F4:
	mov r0, r5
	mov r1, r6
	bl FUN_020AFF34
	ldrh r0, [r0, #0x0]
	ldrh r1, [r5, #0x0]
	cmp r0, r4
	movhi r4, r0
	add r0, r6, #0x1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, r1
	blo _020B23F4
_020B2424:
	mov r0, r4
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020B23D8

	arm_func_start FUN_020B242C
FUN_020B242C: ; 0x020B242C
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r7, r0
	bl FUN_020B0438
	mov r1, #0x0
	mov r0, r7
	strh r1, [r7, #0x2c]
	bl FUN_020B06E0
	mov r4, r0
	ldrh r1, [r4, #0x0]
	ldr r0, [r7, #0x40]
	bl FUN_020AFF34
	ldr r1, [r7, #0x18]
	mov r6, r0
	ldr r1, [r1, #0x4]
	add r0, r7, #0x44
	and r5, r1, #0xff
	mov r1, #0x1
	bl FUN_020B1A68
	cmp r5, #0x0
	beq _020B24C8
	cmp r5, #0x2
	bne _020B249C
	ldrsh r1, [r4, #0x4]
	ldrsh r2, [r4, #0x6]
	add r0, r7, #0x44
	bl FUN_020B1AB4
	b _020B24C8
_020B249C:
	ldr r1, [r4, #0x4]
	ldr r2, [r4, #0x8]
	add r0, r7, #0x44
	bl FUN_020B1A78
	ldrh r1, [r4, #0x2]
	add r0, r7, #0x44
	bl FUN_020B1A98
	ldrsh r1, [r4, #0xc]
	ldrsh r2, [r4, #0xe]
	add r0, r7, #0x44
	bl FUN_020B1AB4
_020B24C8:
	ldrh r2, [r7, #0x2c]
	mov r1, r6
	add r0, r7, #0x30
	bl FUN_020B24E0
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020B242C

	arm_func_start FUN_020B24E0
FUN_020B24E0: ; 0x020B24E0
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x14
	mov r10, r1
	str r0, [sp, #0x0]
	str r10, [r0, #0x0]
	ldr r0, [r0, #0x8]
	mov r9, r2
	cmp r0, #0x1
	bne _020B2654
	ldrh r1, [r10, #0x2]
	ldr r0, [sp, #0x0]
	mov r4, #0x0
	ldr r8, [r0, #0xc]
	cmp r1, #0x0
	bls _020B2544
	mov r3, r4
	mov r0, #0x58
_020B2524:
	mla r1, r4, r0, r8
	str r3, [r1, #0x54]
	add r1, r4, #0x1
	mov r1, r1, lsl #0x10
	ldrh r2, [r10, #0x2]
	mov r4, r1, lsr #0x10
	cmp r4, r2
	blo _020B2524
_020B2544:
	ldrh r0, [r10, #0x0]
	mov r5, #0x0
	cmp r0, #0x0
	addls sp, sp, #0x14
	ldmlsia sp!, {r4-r11,pc}
	str r5, [sp, #0x4]
	mov r11, #0x1
_020B2560:
	ldr r0, [r10, #0x4]
	mov r1, #0x58
	add r7, r0, r5, lsl #0x3
	ldrh r0, [r7, #0x6]
	and r0, r0, #0xff00
	mov r0, r0, lsl #0x8
	mov r0, r0, lsr #0x10
	mla r6, r0, r1, r8
	ldr r0, [r6, #0x54]
	cmp r0, #0x0
	bne _020B2634
	ldr r0, [sp, #0x0]
	ldrh r1, [r7, #0x0]
	ldr r0, [r0, #0x4]
	bl FUN_020AFC04
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl FUN_020B1EE4
	str r11, [r6, #0x8]
	ldrh r0, [r7, #0x6]
	and r0, r0, #0xf
	cmp r0, #0x1
	bne _020B2630
	ldrh r1, [r4, #0x0]
	ldr r7, [sp, #0x4]
	mov r3, r7
	cmp r1, #0x0
	bls _020B25F0
	ldr r2, [r4, #0xc]
_020B25D8:
	add r0, r2, r3, lsl #0x3
	ldrh r0, [r0, #0x4]
	add r3, r3, #0x1
	cmp r3, r1
	add r7, r7, r0
	blo _020B25D8
_020B25F0:
	mov r0, r6
	bl FUN_020B0408
	cmp r0, #0x0
	beq _020B261C
	mov r0, r9
	mov r1, r7
	bl _u32_div_f
	mov r0, r6
	mov r1, r1, lsl #0xc
	bl FUN_020B1EC4
	b _020B2630
_020B261C:
	cmp r9, r7
	movcc r7, r9
	mov r0, r6
	mov r1, r7, lsl #0xc
	bl FUN_020B1EC4
_020B2630:
	str r11, [r6, #0x54]
_020B2634:
	add r0, r5, #0x1
	mov r0, r0, lsl #0x10
	ldrh r1, [r10, #0x0]
	mov r5, r0, lsr #0x10
	cmp r5, r1
	blo _020B2560
	add sp, sp, #0x14
	ldmia sp!, {r4-r11,pc}
_020B2654:
	ldrh r1, [r10, #0x0]
	ldr r0, [sp, #0x0]
	mov r4, #0x0
	cmp r1, #0x0
	ldr r11, [r0, #0xc]
	addls sp, sp, #0x14
	ldmlsia sp!, {r4-r11,pc}
	mov r0, #0x1
	str r4, [sp, #0xc]
	str r0, [sp, #0x8]
_020B267C:
	mov r0, #0x28
	mul r2, r4, r0
	ldr r3, [r10, #0x4]
	mov r0, r4, lsl #0x3
	ldrh r1, [r3, r0]
	ldr r0, [sp, #0x0]
	ldr r6, [r11, r2]
	ldr r0, [r0, #0x4]
	add r7, r3, r4, lsl #0x3
	bl FUN_020AFC04
	mov r5, r0
	mov r0, r6
	mov r1, r5
	bl FUN_020B1EE4
	ldr r0, [sp, #0x8]
	str r0, [r6, #0x8]
	ldrh r0, [r7, #0x6]
	and r0, r0, #0xf
	cmp r0, #0x1
	bne _020B2740
	ldrh r1, [r5, #0x0]
	ldr r8, [sp, #0xc]
	mov r0, r8
	cmp r1, #0x0
	bls _020B2700
	ldr r3, [r5, #0xc]
_020B26E4:
	add r1, r3, r0, lsl #0x3
	ldrh r2, [r1, #0x4]
	add r0, r0, #0x1
	ldrh r1, [r5, #0x0]
	add r8, r8, r2
	cmp r0, r1
	blo _020B26E4
_020B2700:
	mov r0, r6
	bl FUN_020B0408
	cmp r0, #0x0
	beq _020B272C
	mov r0, r9
	mov r1, r8
	bl _u32_div_f
	mov r0, r6
	mov r1, r1, lsl #0xc
	bl FUN_020B1EC4
	b _020B2740
_020B272C:
	cmp r9, r8
	movcc r8, r9
	mov r0, r6
	mov r1, r8, lsl #0xc
	bl FUN_020B1EC4
_020B2740:
	mov r0, #0x28
	mla r3, r4, r0, r11
	ldr r0, [sp, #0x8]
	str r0, [r3, #0x8]
	ldrsh r1, [r7, #0x2]
	ldrsh r2, [r7, #0x4]
	add r0, r3, #0xc
	bl FUN_020B1AB4
	add r0, r4, #0x1
	mov r0, r0, lsl #0x10
	ldrh r1, [r10, #0x0]
	mov r4, r0, lsr #0x10
	cmp r4, r1
	blo _020B267C
	add sp, sp, #0x14
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B24E0

	arm_func_start thunk_FUN_020b5040
thunk_FUN_020b5040: ; 0x020B2780
	ldr ip, _020B2788 ; =FUN_020B5040
	bx r12
	.balign 4
_020B2788: .word FUN_020B5040
	arm_func_end thunk_FUN_020b5040

	arm_func_start FUN_020B278C
FUN_020B278C:
	ldr r0, [r0, #0x78]
	bx lr
	arm_func_end FUN_020B278C

	arm_func_start FUN_020B2794
FUN_020B2794: ; 0x020B2794
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr r2, _020B2894 ; =UNK_021CDD70
	mov lr, #0x0
	ldr r12, [r2, #0x0]
	ldr r3, _020B2898 ; =UNK_021CDEF4
	mov r2, #0x18
	str r1, [sp, #0x0]
	str r1, [sp, #0xc]
	mla r1, r12, r2, r3
	rsb r3, r0, #0x0
	str r0, [sp, #0x4]
	add r0, sp, #0x0
	mov r2, r1
	str r3, [sp, #0x8]
	str lr, [sp, #0x10]
	str lr, [sp, #0x14]
	bl FUN_020B423C
	ldr r0, _020B2894 ; =UNK_021CDD70
	ldr r1, _020B289C ; =UNK_021CE1F4
	ldr r2, [r0, #0x0]
	mov r0, #0x18
	mla r1, r2, r0, r1
	add r0, sp, #0x0
	mov r2, r1
	bl FUN_020B423C
	ldr r0, _020B28A0 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _020B2824
	ldr r1, _020B28A4 ; =UNK_02106570
	ldr r0, _020B28A8 ; =0x0000FFFE
	ldrh r1, [r1, #0x0]
	cmp r1, r0
	movne r0, #0x1
	bne _020B2828
_020B2824:
	mov r0, #0x0
_020B2828:
	cmp r0, #0x0
	ldreq r1, _020B2894 ; =UNK_021CDD70
	ldreq r0, _020B28A4 ; =UNK_02106570
	ldreq r1, [r1, #0x0]
	streqh r1, [r0, #0x0]
	ldr r0, _020B2894 ; =UNK_021CDD70
	ldr r1, _020B28AC ; =UNK_021CDDF4
	ldr r0, [r0, #0x0]
	mov r0, r0, lsl #0x10
	add r12, r1, r0, lsr #0xd
	ldrh r0, [r12, #0x4]
	cmp r0, #0x3
	addls pc, pc, r0, lsl #0x2
	b _020B288C
	; Jump table
	b _020B2870 ; case 0
	b _020B288C ; case 1
	b _020B2870 ; case 2
	b _020B2870 ; case 3
_020B2870:
	ldr r0, _020B28B0 ; =UNK_021CDD64
	mov r1, #0x1
	ldrh r3, [r0, #0x0]
	add r2, r3, #0x1
	strh r2, [r0, #0x0]
	strh r3, [r12, #0x2]
	strh r1, [r12, #0x4]
_020B288C:
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	.balign 4
_020B2894: .word UNK_021CDD70
_020B2898: .word UNK_021CDEF4
_020B289C: .word UNK_021CE1F4
_020B28A0: .word UNK_021CDD68
_020B28A4: .word UNK_02106570
_020B28A8: .word 0x0000FFFE
_020B28AC: .word UNK_021CDDF4
_020B28B0: .word UNK_021CDD64
	arm_func_end FUN_020B2794

	arm_func_start FUN_020B28B4
FUN_020B28B4: ; 0x020B28B4
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x1c
	ldr r2, _020B29E8 ; =UNK_021CDD70
	mov r12, #0x0
	ldr r3, [r2, #0x0]
	mov r4, r1
	ldr r2, _020B29EC ; =UNK_021CDEF4
	mov r1, #0x18
	mla r1, r3, r1, r2
	mov r5, r0
	add r0, sp, #0x0
	mov r2, r1
	str r5, [sp, #0x0]
	str r12, [sp, #0x4]
	str r12, [sp, #0x8]
	str r4, [sp, #0xc]
	str r12, [sp, #0x10]
	str r12, [sp, #0x14]
	bl FUN_020B423C
	mov r0, r5
	bl FX_Inv
	mov r1, #0x0
	str r0, [sp, #0x0]
	mov r0, r4
	str r1, [sp, #0x4]
	str r1, [sp, #0x8]
	bl FX_Inv
	mov r3, #0x0
	ldr r1, _020B29E8 ; =UNK_021CDD70
	str r0, [sp, #0xc]
	ldr r2, [r1, #0x0]
	ldr r1, _020B29F0 ; =UNK_021CE1F4
	mov r0, #0x18
	mla r1, r2, r0, r1
	add r0, sp, #0x0
	mov r2, r1
	str r3, [sp, #0x10]
	str r3, [sp, #0x14]
	bl FUN_020B423C
	ldr r0, _020B29F4 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _020B2978
	ldr r1, _020B29F8 ; =UNK_02106570
	ldr r0, _020B29FC ; =0x0000FFFE
	ldrh r1, [r1, #0x0]
	cmp r1, r0
	movne r0, #0x1
	bne _020B297C
_020B2978:
	mov r0, #0x0
_020B297C:
	cmp r0, #0x0
	ldreq r1, _020B29E8 ; =UNK_021CDD70
	ldreq r0, _020B29F8 ; =UNK_02106570
	ldreq r1, [r1, #0x0]
	streqh r1, [r0, #0x0]
	ldr r0, _020B29E8 ; =UNK_021CDD70
	ldr r1, _020B2A00 ; =UNK_021CDDF4
	ldr r0, [r0, #0x0]
	mov r0, r0, lsl #0x10
	add r12, r1, r0, lsr #0xd
	ldrh r0, [r12, #0x4]
	cmp r0, #0x3
	addls pc, pc, r0, lsl #0x2
	b _020B29E0
	; Jump table
	b _020B29C4 ; case 0
	b _020B29E0 ; case 1
	b _020B29C4 ; case 2
	b _020B29C4 ; case 3
_020B29C4:
	ldr r0, _020B2A04 ; =UNK_021CDD64
	mov r1, #0x1
	ldrh r3, [r0, #0x0]
	add r2, r3, #0x1
	strh r2, [r0, #0x0]
	strh r3, [r12, #0x2]
	strh r1, [r12, #0x4]
_020B29E0:
	add sp, sp, #0x1c
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B29E8: .word UNK_021CDD70
_020B29EC: .word UNK_021CDEF4
_020B29F0: .word UNK_021CE1F4
_020B29F4: .word UNK_021CDD68
_020B29F8: .word UNK_02106570
_020B29FC: .word 0x0000FFFE
_020B2A00: .word UNK_021CDDF4
_020B2A04: .word UNK_021CDD64
	arm_func_end FUN_020B28B4

	arm_func_start FUN_020B2A08
FUN_020B2A08: ; 0x020B2A08
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x1c
	ldr r3, _020B2AEC ; =UNK_021CDD68
	mov r4, r2
	ldr r2, [r3, #0x0]
	cmp r2, #0x0
	beq _020B2A6C
	ldr r2, _020B2AF0 ; =UNK_021CDD70
	mov r3, #0x18
	ldr r2, [r2, #0x0]
	ldr lr, _020B2AF4 ; =UNK_021CDF04
	mul r5, r2, r3
	ldr r3, [lr, r5]
	ldr ip, _020B2AF8 ; =UNK_021CDF08
	add r0, r3, r0
	str r0, [lr, r5]
	ldr r0, [r12, r5]
	ldr r3, _020B2AFC ; =UNK_021CDD74
	add r0, r0, r1
	str r0, [r12, r5]
	ldr r0, [r3, r2, lsl #0x2]
	add sp, sp, #0x1c
	add r0, r0, r4
	str r0, [r3, r2, lsl #0x2]
	ldmia sp!, {r4-r5,pc}
_020B2A6C:
	ldr r2, _020B2AF0 ; =UNK_021CDD70
	mov lr, #0x1000
	ldr r12, [r2, #0x0]
	ldr r3, _020B2B00 ; =UNK_021CDEF4
	mov r2, #0x18
	str r1, [sp, #0x14]
	mla r1, r12, r2, r3
	mov r3, #0x0
	str r0, [sp, #0x10]
	add r0, sp, #0x0
	mov r2, r1
	str lr, [sp, #0x0]
	str r3, [sp, #0x4]
	str r3, [sp, #0x8]
	str lr, [sp, #0xc]
	bl FUN_020B423C
	ldr r0, _020B2AF0 ; =UNK_021CDD70
	ldr r1, _020B2B04 ; =UNK_021CE1F4
	ldr r2, [r0, #0x0]
	mov r0, #0x18
	mla r1, r2, r0, r1
	add r0, sp, #0x0
	mov r2, r1
	bl FUN_020B423C
	ldr r0, _020B2AF0 ; =UNK_021CDD70
	ldr r2, _020B2AFC ; =UNK_021CDD74
	ldr r1, [r0, #0x0]
	ldr r0, [r2, r1, lsl #0x2]
	add r0, r0, r4
	str r0, [r2, r1, lsl #0x2]
	add sp, sp, #0x1c
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B2AEC: .word UNK_021CDD68
_020B2AF0: .word UNK_021CDD70
_020B2AF4: .word UNK_021CDF04
_020B2AF8: .word UNK_021CDF08
_020B2AFC: .word UNK_021CDD74
_020B2B00: .word UNK_021CDEF4
_020B2B04: .word UNK_021CE1F4
	arm_func_end FUN_020B2A08

	arm_func_start FUN_020B2B08
FUN_020B2B08: ; 0x020B2B08
	ldr r0, _020B2B4C ; =UNK_021CDD70
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	movle r0, #0x1
	movgt r0, #0x0
	cmp r0, #0x0
	bxne lr
	ldr r1, _020B2B4C ; =UNK_021CDD70
	ldr r0, _020B2B50 ; =UNK_02106570
	ldr r3, [r1, #0x0]
	ldrh r2, [r0, #0x0]
	sub r3, r3, #0x1
	str r3, [r1, #0x0]
	cmp r2, r3
	ldrgt r1, _020B2B54 ; =0x0000FFFE
	strgth r1, [r0, #0x0]
	bx lr
	.balign 4
_020B2B4C: .word UNK_021CDD70
_020B2B50: .word UNK_02106570
_020B2B54: .word 0x0000FFFE
	arm_func_end FUN_020B2B08

	arm_func_start FUN_020B2B58
FUN_020B2B58: ; 0x020B2B58
	stmdb sp!, {r4-r10,lr}
	ldr r0, _020B2D74 ; =UNK_021CDD6C
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x7c]
	ands r0, r0, #0x1
	bne _020B2CA4
	ldr r0, _020B2D78 ; =UNK_021CDD70
	ldr r1, [r0, #0x0]
	mov r0, r1, lsl #0x10
	add r5, r1, #0x1
	cmp r5, #0x20
	mov r4, r0, lsr #0x10
	movlt r0, #0x1
	movge r0, #0x0
	cmp r0, #0x0
	beq _020B2C44
	ldr r0, _020B2D7C ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _020B2BE4
	ldr r1, _020B2D78 ; =UNK_021CDD70
	mov r0, #0x18
	ldr r3, [r1, #0x0]
	ldr r1, _020B2D80 ; =UNK_021CDD74
	mul r8, r3, r0
	ldr r6, _020B2D84 ; =UNK_021CDF04
	mul r7, r5, r0
	ldr r2, [r6, r8]
	ldr r0, [r1, r3, lsl #0x2]
	ldr r3, _020B2D88 ; =UNK_021CDF08
	str r2, [r6, r7]
	ldr r2, [r3, r8]
	str r0, [r1, r5, lsl #0x2]
	str r2, [r3, r7]
	b _020B2C3C
_020B2BE4:
	ldr r1, _020B2D78 ; =UNK_021CDD70
	mov r0, #0x18
	ldr r2, [r1, #0x0]
	ldr r7, _020B2D80 ; =UNK_021CDD74
	mul lr, r2, r0
	ldr r1, _020B2D8C ; =UNK_021CDEF4
	mul r12, r5, r0
	ldr r8, _020B2D90 ; =UNK_021CE1F4
	add r10, r1, lr
	ldr r6, [r7, r2, lsl #0x2]
	add r9, r1, r12
	ldmia r10!, {r0-r3}
	stmia r9!, {r0-r3}
	ldmia r10, {r0-r1}
	str r6, [r7, r5, lsl #0x2]
	add r7, r8, lr
	stmia r9, {r0-r1}
	add r6, r8, r12
	ldmia r7!, {r0-r3}
	stmia r6!, {r0-r3}
	ldmia r7, {r0-r1}
	stmia r6, {r0-r1}
_020B2C3C:
	ldr r0, _020B2D78 ; =UNK_021CDD70
	str r5, [r0, #0x0]
_020B2C44:
	ldr r0, _020B2D78 ; =UNK_021CDD70
	ldr r2, _020B2D94 ; =UNK_021CDDF4
	ldr r0, [r0, #0x0]
	mov r5, r4, lsl #0x3
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	add r4, r2, r4, lsl #0x3
	mov r6, r3, lsl #0x3
	ldrh r1, [r2, r5]
	ldrh r0, [r4, #0x2]
	add r3, r2, r3, lsl #0x3
	strh r1, [r2, r6]
	strh r0, [r3, #0x2]
	ldrh r2, [r4, #0x4]
	ldrh r0, [r4, #0x6]
	ldr r1, _020B2D98 ; =UNK_021CDDF8
	strh r2, [r3, #0x4]
	strh r0, [r3, #0x6]
	ldrh r0, [r1, r5]
	cmp r0, #0x1
	moveq r0, #0x2
	streqh r0, [r1, r6]
	strneh r0, [r1, r6]
	ldmia sp!, {r4-r10,pc}
_020B2CA4:
	ldr r0, _020B2D78 ; =UNK_021CDD70
	ldr r0, [r0, #0x0]
	add r4, r0, #0x1
	cmp r4, #0x20
	movlt r0, #0x1
	movge r0, #0x0
	cmp r0, #0x0
	ldmeqia sp!, {r4-r10,pc}
	ldr r0, _020B2D7C ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _020B2D10
	ldr r1, _020B2D78 ; =UNK_021CDD70
	mov r0, #0x18
	ldr r3, [r1, #0x0]
	ldr r1, _020B2D80 ; =UNK_021CDD74
	mul r7, r3, r0
	ldr r5, _020B2D84 ; =UNK_021CDF04
	mul r6, r4, r0
	ldr r2, [r5, r7]
	ldr r0, [r1, r3, lsl #0x2]
	ldr r3, _020B2D88 ; =UNK_021CDF08
	str r2, [r5, r6]
	ldr r2, [r3, r7]
	str r0, [r1, r4, lsl #0x2]
	str r2, [r3, r6]
	b _020B2D68
_020B2D10:
	ldr r1, _020B2D78 ; =UNK_021CDD70
	mov r0, #0x18
	ldr r2, [r1, #0x0]
	ldr ip, _020B2D80 ; =UNK_021CDD74
	mul r9, r2, r0
	ldr r1, _020B2D8C ; =UNK_021CDEF4
	mul r8, r4, r0
	ldr lr, _020B2D90 ; =UNK_021CE1F4
	add r6, r1, r9
	ldr r5, [r12, r2, lsl #0x2]
	add r7, r1, r8
	ldmia r6!, {r0-r3}
	stmia r7!, {r0-r3}
	ldmia r6, {r0-r1}
	add r6, lr, r9
	stmia r7, {r0-r1}
	add lr, lr, r8
	ldmia r6!, {r0-r3}
	stmia lr!, {r0-r3}
	ldmia r6, {r0-r1}
	stmia lr, {r0-r1}
	str r5, [r12, r4, lsl #0x2]
_020B2D68:
	ldr r0, _020B2D78 ; =UNK_021CDD70
	str r4, [r0, #0x0]
	ldmia sp!, {r4-r10,pc}
	.balign 4
_020B2D74: .word UNK_021CDD6C
_020B2D78: .word UNK_021CDD70
_020B2D7C: .word UNK_021CDD68
_020B2D80: .word UNK_021CDD74
_020B2D84: .word UNK_021CDF04
_020B2D88: .word UNK_021CDF08
_020B2D8C: .word UNK_021CDEF4
_020B2D90: .word UNK_021CE1F4
_020B2D94: .word UNK_021CDDF4
_020B2D98: .word UNK_021CDDF8
	arm_func_end FUN_020B2B58

	arm_func_start FUN_020B2D9C
FUN_020B2D9C: ; 0x020B2D9C
	stmdb sp!, {r4-r6,lr}
	mov r4, r0
	ldrh r0, [r4, #0x56]
	cmp r0, #0x0
	bne _020B2DBC
	add r0, r4, #0x30
	bl FUN_020B2E78
	ldmia sp!, {r4-r6,pc}
_020B2DBC:
	bl FUN_020B2B58
	ldrh r0, [r4, #0x56]
	ands r0, r0, #0x8
	beq _020B2E0C
	ldr r0, _020B2E70 ; =UNK_021CDD6C
	ldrsh r6, [r4, #0x52]
	ldr r0, [r0, #0x0]
	ldrsh r5, [r4, #0x50]
	bl FUN_020B4F88
	cmp r0, #0x0
	ldr r0, _020B2E70 ; =UNK_021CDD6C
	rsbne r5, r5, #0x0
	ldr r0, [r0, #0x0]
	bl FUN_020B4F74
	cmp r0, #0x0
	rsbne r6, r6, #0x0
	mov r0, r5, lsl #0xc
	mov r1, r6, lsl #0xc
	mov r2, #0x0
	bl FUN_020B2A08
_020B2E0C:
	ldrh r0, [r4, #0x56]
	ands r0, r0, #0x4
	beq _020B2E40
	ldrh r0, [r4, #0x54]
	ldr r2, _020B2E74 ; =FX_SinCosTable_
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #0x1
	mov r3, r1, lsl #0x1
	mov r1, r0, lsl #0x1
	ldrsh r0, [r2, r3]
	ldrsh r1, [r2, r1]
	bl FUN_020B2794
_020B2E40:
	ldrh r0, [r4, #0x56]
	ands r0, r0, #0x2
	beq _020B2E5C
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x4c]
	mov r2, #0x1000
	bl FUN_020B28B4
_020B2E5C:
	add r0, r4, #0x30
	bl FUN_020B2E78
	mov r0, #0x1
	bl FUN_020B2B08
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B2E70: .word UNK_021CDD6C
_020B2E74: .word FX_SinCosTable_
	arm_func_end FUN_020B2D9C

	arm_func_start FUN_020B2E78
FUN_020B2E78: ; 0x020B2E78
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, [r5, #0x8]
	cmp r0, #0x1
	bne _020B309C
	ldr r0, [r5, #0x0]
	mov r2, #0x0
	ldrh r0, [r0, #0x2]
	cmp r0, #0x0
	bls _020B2ED0
	ldr r3, _020B3174 ; =UNK_021CE8F4
	mov r4, r2
_020B2EAC:
	add r0, r3, r2, lsl #0x2
	str r4, [r0, #0x4]
	ldr r0, [r5, #0x0]
	add r2, r2, #0x1
	ldrh r1, [r0, #0x2]
	mov r0, r2, lsl #0x10
	mov r2, r0, lsr #0x10
	cmp r2, r1
	blo _020B2EAC
_020B2ED0:
	ldr r0, _020B3178 ; =UNK_021CDD6C
	mov r6, #0x1
	ldr r1, [r0, #0x0]
	ldr r0, _020B3174 ; =UNK_021CE8F4
	str r6, [r0, #0x404]
	ldr r0, [r1, #0x80]
	cmp r0, #0x0
	beq _020B2FD8
	bl FUN_020B4948
	str r0, [sp, #0x0]
	mov r0, r6
	bl FUN_020B497C
	ldr r0, _020B3178 ; =UNK_021CDD6C
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x80]
	bl FUN_020B4958
	ldr r2, [r5, #0x0]
	mov r7, #0x0
	ldrh r0, [r2, #0x0]
	cmp r0, #0x0
	bls _020B2FC0
	mov r11, r7
_020B2F28:
	ldr r0, [r2, #0x4]
	ldr r9, [r5, #0xc]
	add r10, r0, r7, lsl #0x3
	ldrh r0, [r10, #0x6]
	and r0, r0, #0xff00
	mov r0, r0, lsl #0x8
	mov r8, r0, lsr #0x10
	ldr r0, _020B3174 ; =UNK_021CE8F4
	strh r8, [r0, #0x0]
	bl FUN_020B2B58
	ldr r0, _020B3178 ; =UNK_021CDD6C
	ldrsh r4, [r10, #0x4]
	ldr r0, [r0, #0x0]
	ldrsh r10, [r10, #0x2]
	bl FUN_020B4F88
	cmp r0, #0x0
	ldr r0, _020B3178 ; =UNK_021CDD6C
	rsbne r10, r10, #0x0
	ldr r0, [r0, #0x0]
	bl FUN_020B4F74
	cmp r0, #0x0
	rsbne r4, r4, #0x0
	mov r2, r11
	mov r0, r10, lsl #0xc
	mov r1, r4, lsl #0xc
	bl FUN_020B2A08
	mov r0, #0x58
	mla r0, r8, r0, r9
	bl FUN_020B3554
	mov r0, r6
	bl FUN_020B2B08
	ldr r2, [r5, #0x0]
	add r0, r7, #0x1
	mov r0, r0, lsl #0x10
	ldrh r1, [r2, #0x0]
	mov r7, r0, lsr #0x10
	cmp r7, r1
	blo _020B2F28
_020B2FC0:
	mov r0, #0x0
	bl FUN_020B497C
	ldr r0, [sp, #0x0]
	bl FUN_020B4958
	bl FUN_020B4968
	b _020B3088
_020B2FD8:
	ldr r2, [r5, #0x0]
	mov r7, #0x0
	ldrh r0, [r2, #0x0]
	cmp r0, #0x0
	bls _020B3088
	str r7, [sp, #0x4]
	mov r11, #0x58
_020B2FF4:
	ldr r0, [r2, #0x4]
	ldr r9, [r5, #0xc]
	add r10, r0, r7, lsl #0x3
	ldrh r0, [r10, #0x6]
	and r0, r0, #0xff00
	mov r0, r0, lsl #0x8
	mov r8, r0, lsr #0x10
	ldr r0, _020B3174 ; =UNK_021CE8F4
	strh r8, [r0, #0x0]
	bl FUN_020B2B58
	ldr r0, _020B3178 ; =UNK_021CDD6C
	ldrsh r4, [r10, #0x4]
	ldr r0, [r0, #0x0]
	ldrsh r10, [r10, #0x2]
	bl FUN_020B4F88
	cmp r0, #0x0
	ldr r0, _020B3178 ; =UNK_021CDD6C
	rsbne r10, r10, #0x0
	ldr r0, [r0, #0x0]
	bl FUN_020B4F74
	cmp r0, #0x0
	rsbne r4, r4, #0x0
	ldr r2, [sp, #0x4]
	mov r0, r10, lsl #0xc
	mov r1, r4, lsl #0xc
	bl FUN_020B2A08
	mla r0, r8, r11, r9
	bl FUN_020B3554
	mov r0, r6
	bl FUN_020B2B08
	ldr r2, [r5, #0x0]
	add r0, r7, #0x1
	mov r0, r0, lsl #0x10
	ldrh r1, [r2, #0x0]
	mov r7, r0, lsr #0x10
	cmp r7, r1
	blo _020B2FF4
_020B3088:
	ldr r0, _020B3174 ; =UNK_021CE8F4
	mov r1, #0x0
	str r1, [r0, #0x404]
	add sp, sp, #0xc
	ldmia sp!, {r4-r11,pc}
_020B309C:
	ldr r0, _020B3178 ; =UNK_021CDD6C
	ldr r7, [r5, #0xc]
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x80]
	cmp r0, #0x0
	beq _020B312C
	bl FUN_020B4948
	mov r6, r0
	mov r0, #0x1
	bl FUN_020B497C
	ldr r0, _020B3178 ; =UNK_021CDD6C
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x80]
	bl FUN_020B4958
	ldr r0, [r5, #0x0]
	mov r4, #0x0
	ldrh r0, [r0, #0x0]
	cmp r0, #0x0
	bls _020B3110
	mov r8, #0x28
_020B30EC:
	mla r0, r4, r8, r7
	bl FUN_020B3474
	ldr r1, [r5, #0x0]
	add r0, r4, #0x1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1, #0x0]
	mov r4, r0, lsr #0x10
	cmp r4, r1
	blo _020B30EC
_020B3110:
	mov r0, #0x0
	bl FUN_020B497C
	mov r0, r6
	bl FUN_020B4958
	bl FUN_020B4968
	add sp, sp, #0xc
	ldmia sp!, {r4-r11,pc}
_020B312C:
	ldr r0, [r5, #0x0]
	mov r4, #0x0
	ldrh r0, [r0, #0x0]
	cmp r0, #0x0
	addls sp, sp, #0xc
	ldmlsia sp!, {r4-r11,pc}
	mov r6, #0x28
_020B3148:
	mla r0, r4, r6, r7
	bl FUN_020B3474
	ldr r1, [r5, #0x0]
	add r0, r4, #0x1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1, #0x0]
	mov r4, r0, lsr #0x10
	cmp r4, r1
	blo _020B3148
	add sp, sp, #0xc
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B3174: .word UNK_021CE8F4
_020B3178: .word UNK_021CDD6C
	arm_func_end FUN_020B2E78

	arm_func_start FUN_020B317C
FUN_020B317C: ; 0x020B317C
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldr r1, _020B31EC ; =UNK_021CDD6C
	mov r5, r0
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x80]
	cmp r1, #0x0
	beq _020B31E0
	bl FUN_020B4948
	mov r4, r0
	mov r0, #0x1
	bl FUN_020B497C
	ldr r0, _020B31EC ; =UNK_021CDD6C
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x80]
	bl FUN_020B4958
	mov r0, r5
	bl FUN_020B3554
	mov r0, #0x0
	bl FUN_020B497C
	mov r0, r4
	bl FUN_020B4958
	bl FUN_020B4968
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
_020B31E0:
	bl FUN_020B3554
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B31EC: .word UNK_021CDD6C
	arm_func_end FUN_020B317C

	arm_func_start FUN_020B31F0
FUN_020B31F0: ; 0x020B31F0
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r1, _020B3260 ; =0x04000448
	mov r2, #0x1
	ldr r0, _020B3264 ; =UNK_021CDD6C
	str r2, [r1, #0x0]
	ldr r2, [r0, #0x0]
	ldr r3, [r2, #0x7c]
	cmp r3, #0x0
	beq _020B324C
	ands r0, r3, #0x1
	ldrne r0, _020B3268 ; =UNK_021CDD68
	movne r1, #0x0
	strne r1, [r0, #0x0]
	ands r0, r3, #0x2
	beq _020B323C
	mov r0, #0x0
	str r0, [r2, #0x74]
	bl FUN_020B4DA0
_020B323C:
	ldr r0, _020B3264 ; =UNK_021CDD6C
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x7c]
_020B324C:
	ldr r0, _020B3264 ; =UNK_021CDD6C
	mov r1, #0x0
	str r1, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B3260: .word 0x04000448
_020B3264: .word UNK_021CDD6C
_020B3268: .word UNK_021CDD68
	arm_func_end FUN_020B31F0

	arm_func_start FUN_020B326C
FUN_020B326C: ; 0x020B326C
	stmdb sp!, {r4-r8,lr}
	ldr r5, _020B330C ; =UNK_021CDD60
	ldr r3, _020B3310 ; =UNK_021CDD6C
	ldrh r6, [r5, #0x0]
	ldr r2, _020B3314 ; =UNK_021CDD70
	mov r4, #0x0
	ldr r7, _020B3318 ; =0x0000FFFE
	ldr r1, _020B331C ; =UNK_02106570
	str r0, [r3, #0x0]
	str r4, [r2, #0x0]
	strh r7, [r1, #0x0]
	cmp r6, #0x0
	ble _020B32D0
	ldr r8, _020B3320 ; =UNK_021CE4F4
	mvn r7, #0x0
	mov r6, #0x10
_020B32AC:
	mov r0, r7
	mov r2, r6
	add r1, r8, #0x10
	bl MIi_CpuClearFast
	ldrh r0, [r5, #0x0]
	add r4, r4, #0x1
	add r8, r8, #0x20
	cmp r4, r0
	blt _020B32AC
_020B32D0:
	ldr r4, _020B330C ; =UNK_021CDD60
	mov r0, #0x0
	ldr r3, _020B3324 ; =UNK_021CDD64
	ldr r1, _020B3328 ; =UNK_021CDDF4
	mov r2, #0x100
	strh r0, [r4, #0x0]
	strh r0, [r3, #0x0]
	bl MIi_CpuClearFast
	ldr r1, _020B332C ; =0x04000444
	mov r2, #0x0
	ldr r0, _020B3330 ; =0x04000454
	str r2, [r1, #0x0]
	str r2, [r0, #0x0]
	bl FUN_020B4178
	ldmia sp!, {r4-r8,pc}
	.balign 4
_020B330C: .word UNK_021CDD60
_020B3310: .word UNK_021CDD6C
_020B3314: .word UNK_021CDD70
_020B3318: .word 0x0000FFFE
_020B331C: .word UNK_02106570
_020B3320: .word UNK_021CE4F4
_020B3324: .word UNK_021CDD64
_020B3328: .word UNK_021CDDF4
_020B332C: .word 0x04000444
_020B3330: .word 0x04000454
	arm_func_end FUN_020B326C

	arm_func_start FUN_020B3334
FUN_020B3334: ; 0x020B3334
	stmdb sp!, {r4,lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0x0
	mov r2, #0x48
	bl MIi_CpuClear16
	mov r0, #0x1
	str r0, [r4, #0x10]
	mov r0, #0x3
	ldr r1, _020B3380 ; =FUN_020B3EE0
	str r0, [r4, #0x14]
	ldr r0, _020B3384 ; =FUN_020B3E48
	str r1, [r4, #0x18]
	ldr r1, _020B3388 ; =FUN_020B3C40
	str r0, [r4, #0x1c]
	ldr r0, _020B338C ; =FUN_020B3B90
	str r1, [r4, #0x20]
	str r0, [r4, #0x24]
	ldmia sp!, {r4,pc}
	.balign 4
_020B3380: .word FUN_020B3EE0
_020B3384: .word FUN_020B3E48
_020B3388: .word FUN_020B3C40
_020B338C: .word FUN_020B3B90
	arm_func_end FUN_020B3334

	arm_func_start FUN_020B3390
FUN_020B3390: ; 0x020B3390
	ldr r2, [r0, #0x70]
	str r2, [r1, #0x30]
	str r1, [r0, #0x70]
	bx lr
	arm_func_end FUN_020B3390

	arm_func_start FUN_020B33A0
FUN_020B33A0: ; 0x020B33A0
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r4, r0
	bl FUN_020B504C
	mov r7, #0x0
	str r7, [r4, #0x70]
	str r7, [r4, #0x74]
	str r7, [r4, #0x78]
	str r7, [r4, #0x7c]
	str r7, [r4, #0x80]
	str r7, [r4, #0x84]
	strh r7, [r4, #0x88]
	strh r7, [r4, #0x8a]
	str r7, [r4, #0x8c]
	str r7, [r4, #0x90]
	ldr r1, _020B3454 ; =UNK_021CDD70
	strh r7, [r4, #0x94]
	ldr r2, _020B3458 ; =0x0000FFFE
	ldr r0, _020B345C ; =UNK_02106570
	ldr r6, _020B3460 ; =UNK_021CE4F4
	str r7, [r1, #0x0]
	strh r2, [r0, #0x0]
	mvn r5, #0x0
	mov r4, #0x10
_020B3400:
	mov r0, r5
	mov r2, r4
	add r1, r6, #0x10
	bl MIi_CpuClearFast
	add r7, r7, #0x1
	cmp r7, #0x20
	add r6, r6, #0x20
	blt _020B3400
	ldr ip, _020B3464 ; =UNK_021CDD60
	mov r0, #0x0
	ldr r3, _020B3468 ; =UNK_021CDD64
	ldr r1, _020B346C ; =UNK_021CDDF4
	mov r2, #0x100
	strh r0, [r12, #0x0]
	strh r0, [r3, #0x0]
	bl MIi_CpuClearFast
	ldr r0, _020B3470 ; =UNK_021CDD68
	mov r1, #0x0
	str r1, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B3454: .word UNK_021CDD70
_020B3458: .word 0x0000FFFE
_020B345C: .word UNK_02106570
_020B3460: .word UNK_021CE4F4
_020B3464: .word UNK_021CDD60
_020B3468: .word UNK_021CDD64
_020B346C: .word UNK_021CDDF4
_020B3470: .word UNK_021CDD68
	arm_func_end FUN_020B33A0

	arm_func_start FUN_020B3474
FUN_020B3474: ; 0x020B3474
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r5, r0
	ldr r0, [r5, #0x8]
	cmp r0, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r7,pc}
	ldr r4, [r5, #0x0]
	bl FUN_020B2B58
	ldrh r0, [r5, #0x1e]
	ands r0, r0, #0x8
	beq _020B34E4
	ldr r0, _020B354C ; =UNK_021CDD6C
	ldrsh r7, [r5, #0x1a]
	ldr r0, [r0, #0x0]
	ldrsh r6, [r5, #0x18]
	bl FUN_020B4F88
	cmp r0, #0x0
	ldr r0, _020B354C ; =UNK_021CDD6C
	rsbne r6, r6, #0x0
	ldr r0, [r0, #0x0]
	bl FUN_020B4F74
	cmp r0, #0x0
	rsbne r7, r7, #0x0
	mov r0, r6, lsl #0xc
	mov r1, r7, lsl #0xc
	mov r2, #0x0
	bl FUN_020B2A08
_020B34E4:
	ldrh r0, [r5, #0x1e]
	ands r0, r0, #0x4
	beq _020B3518
	ldrh r0, [r5, #0x1c]
	ldr r2, _020B3550 ; =FX_SinCosTable_
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #0x1
	mov r3, r1, lsl #0x1
	mov r1, r0, lsl #0x1
	ldrsh r0, [r2, r3]
	ldrsh r1, [r2, r1]
	bl FUN_020B2794
_020B3518:
	ldrh r0, [r5, #0x1e]
	ands r0, r0, #0x2
	beq _020B3534
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	mov r2, #0x1000
	bl FUN_020B28B4
_020B3534:
	mov r0, r4
	bl FUN_020B3554
	mov r0, #0x1
	bl FUN_020B2B08
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B354C: .word UNK_021CDD6C
_020B3550: .word FX_SinCosTable_
	arm_func_end FUN_020B3474

	arm_func_start FUN_020B3554
FUN_020B3554:
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r5, r0
	ldrh r0, [r5, #0x4a]
	ldr r4, [r5, #0x2c]
	cmp r0, #0x0
	bne _020B35C0
	ldr r2, [r5, #0x34]
	mvn r0, #0x0
	cmp r2, r0
	movne r0, #0x1
	moveq r0, #0x0
	cmp r0, #0x0
	beq _020B35B0
	ldr r1, _020B36B4 ; =UNK_02106574
	mov r0, r4
	str r2, [r1, #0x0]
	bl FUN_020B36C0
	ldr r0, _020B36B4 ; =UNK_02106574
	mvn r1, #0x0
	str r1, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
_020B35B0:
	mov r0, r4
	bl FUN_020B36C0
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
_020B35C0:
	bl FUN_020B2B58
	ldrh r0, [r5, #0x4a]
	ands r0, r0, #0x8
	beq _020B3610
	ldr r0, _020B36B8 ; =UNK_021CDD6C
	ldrsh r7, [r5, #0x46]
	ldr r0, [r0, #0x0]
	ldrsh r6, [r5, #0x44]
	bl FUN_020B4F88
	cmp r0, #0x0
	ldr r0, _020B36B8 ; =UNK_021CDD6C
	rsbne r6, r6, #0x0
	ldr r0, [r0, #0x0]
	bl FUN_020B4F74
	cmp r0, #0x0
	rsbne r7, r7, #0x0
	mov r0, r6, lsl #0xc
	mov r1, r7, lsl #0xc
	mov r2, #0x0
	bl FUN_020B2A08
_020B3610:
	ldrh r0, [r5, #0x4a]
	ands r0, r0, #0x4
	beq _020B3644
	ldrh r0, [r5, #0x48]
	ldr r2, _020B36BC ; =FX_SinCosTable_
	mov r0, r0, asr #0x4
	mov r1, r0, lsl #0x1
	add r0, r1, #0x1
	mov r3, r1, lsl #0x1
	mov r1, r0, lsl #0x1
	ldrsh r0, [r2, r3]
	ldrsh r1, [r2, r1]
	bl FUN_020B2794
_020B3644:
	ldrh r0, [r5, #0x4a]
	ands r0, r0, #0x2
	beq _020B3660
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x40]
	mov r2, #0x1000
	bl FUN_020B28B4
_020B3660:
	ldr r2, [r5, #0x34]
	mvn r0, #0x0
	cmp r2, r0
	movne r0, #0x1
	moveq r0, #0x0
	cmp r0, #0x0
	beq _020B369C
	ldr r1, _020B36B4 ; =UNK_02106574
	mov r0, r4
	str r2, [r1, #0x0]
	bl FUN_020B36C0
	ldr r0, _020B36B4 ; =UNK_02106574
	mvn r1, #0x0
	str r1, [r0, #0x0]
	b _020B36A4
_020B369C:
	mov r0, r4
	bl FUN_020B36C0
_020B36A4:
	mov r0, #0x1
	bl FUN_020B2B08
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B36B4: .word UNK_02106574
_020B36B8: .word UNK_021CDD6C
_020B36BC: .word FX_SinCosTable_
	arm_func_end FUN_020B3554

	arm_func_start FUN_020B36C0
FUN_020B36C0: ; 0x020B36C0
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	ldr r5, _020B3B54 ; =UNK_021CDD6C
	mov r10, r0
	ldr r0, [r5, #0x0]
	ldr r1, [r0, #0x7c]
	str r0, [sp, #0x0]
	ldr r9, [r0, #0x70]
	ands r0, r1, #0x2
	beq _020B38EC
	ldr r0, [r9, #0x14]
	cmp r0, #0x0
	beq _020B3840
	ldr r0, _020B3B58 ; =UNK_021CDD68
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _020B3720
	ldr r2, _020B3B5C ; =UNK_02106570
	ldr r0, _020B3B60 ; =0x0000FFFE
	ldrh r2, [r2, #0x0]
	cmp r2, r0
	movne r0, #0x1
	bne _020B3724
_020B3720:
	mov r0, #0x0
_020B3724:
	cmp r0, #0x0
	beq _020B37AC
	ldr r0, _020B3B64 ; =UNK_021CE8F4
	ldr r1, [r0, #0x404]
	cmp r1, #0x0
	beq _020B3788
	ldrh r1, [r0, #0x0]
	ldr r0, _020B3B68 ; =UNK_021CE8F8
	ldr r1, [r0, r1, lsl #0x2]
	cmp r1, #0x0
	bne _020B37AC
	bl FUN_020B4010
	ldr r0, _020B3B6C ; =UNK_021CDD70
	ldr r2, _020B3B70 ; =UNK_021CDDF4
	ldr r0, [r0, #0x0]
	ldr r1, _020B3B64 ; =UNK_021CE8F4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	ldrh r3, [r2, r0]
	ldr r4, _020B3B74 ; =UNK_021CE4F4
	ldrh r2, [r1, #0x0]
	ldr r0, _020B3B68 ; =UNK_021CE8F8
	add r1, r4, r3, lsl #0x5
	str r1, [r0, r2, lsl #0x2]
	b _020B37AC
_020B3788:
	bl FUN_020B4010
	ldr r0, _020B3B6C ; =UNK_021CDD70
	ldr r1, _020B3B70 ; =UNK_021CDDF4
	ldr r0, [r0, #0x0]
	ldr r2, _020B3B74 ; =UNK_021CE4F4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	ldrh r0, [r1, r0]
	add r1, r2, r0, lsl #0x5
_020B37AC:
	ldr r0, _020B3B58 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	ldreq r0, _020B3B6C ; =UNK_021CDD70
	ldreq r3, _020B3B78 ; =UNK_021CDEF4
	ldreq r2, [r0, #0x0]
	moveq r0, #0x18
	mlaeq r0, r2, r0, r3
	beq _020B37FC
	ldr r2, _020B3B6C ; =UNK_021CDD70
	mov r0, #0x18
	ldr r2, [r2, #0x0]
	ldr r3, _020B3B7C ; =UNK_021CDF04
	mul r4, r2, r0
	ldr r2, _020B3B80 ; =UNK_021CDF08
	ldr r3, [r3, r4]
	ldr r0, _020B3B84 ; =UNK_02106578
	ldr r2, [r2, r4]
	str r3, [r0, #0x10]
	str r2, [r0, #0x14]
_020B37FC:
	bl FUN_020B4FAC
	ldr r1, _020B3B88 ; =UNK_02106574
	mvn r0, #0x0
	ldr r1, [r1, #0x0]
	cmp r1, r0
	movne r0, #0x1
	moveq r0, #0x0
	cmp r0, #0x0
	beq _020B3830
	mov r0, r10
	bl FUN_020B4BF4
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
_020B3830:
	mov r0, r10
	bl FUN_020B4CDC
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
_020B3840:
	ldr r0, _020B3B6C ; =UNK_021CDD70
	ldr r1, _020B3B8C ; =UNK_021CDD74
	ldr r2, [r0, #0x0]
	ldr r0, [sp, #0x0]
	ldr r1, [r1, r2, lsl #0x2]
	bl FUN_020B4FA4
	ldr r0, _020B3B58 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	ldreq r0, _020B3B6C ; =UNK_021CDD70
	ldreq r2, _020B3B78 ; =UNK_021CDEF4
	ldreq r1, [r0, #0x0]
	moveq r0, #0x18
	mlaeq r0, r1, r0, r2
	beq _020B38A8
	ldr r1, _020B3B6C ; =UNK_021CDD70
	mov r0, #0x18
	ldr r1, [r1, #0x0]
	ldr r2, _020B3B7C ; =UNK_021CDF04
	mul r3, r1, r0
	ldr r1, _020B3B80 ; =UNK_021CDF08
	ldr r2, [r2, r3]
	ldr r0, _020B3B84 ; =UNK_02106578
	ldr r1, [r1, r3]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
_020B38A8:
	bl FUN_020B4FC4
	ldr r1, _020B3B88 ; =UNK_02106574
	mvn r0, #0x0
	ldr r1, [r1, #0x0]
	cmp r1, r0
	movne r0, #0x1
	moveq r0, #0x0
	cmp r0, #0x0
	beq _020B38DC
	mov r0, r10
	bl FUN_020B4BF4
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
_020B38DC:
	mov r0, r10
	bl FUN_020B4CDC
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
_020B38EC:
	cmp r9, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r11,pc}
	ldr r4, _020B3B6C ; =UNK_021CDD70
	ldr fp, _020B3B78 ; =UNK_021CDEF4
	mov r7, #0x0
	mov r6, #0x1
_020B3908:
	ldr r0, [r9, #0x10]
	cmp r0, #0x0
	beq _020B3B40
	ldr r0, [r9, #0x14]
	cmp r0, #0x0
	beq _020B3A8C
	ldr r8, [r5, #0x0]
	mov r1, r9
	str r9, [r8, #0x74]
	mov r0, r8
	bl FUN_020B4F9C
	ldr r1, [r9, #0x28]
	ldr r2, [r9, #0x2c]
	mov r0, r8
	bl FUN_020B5034
	mov r0, r8
	bl FUN_020B4E0C
	ldr r0, _020B3B58 ; =UNK_021CDD68
	mov r1, r7
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _020B3978
	ldr r0, _020B3B5C ; =UNK_02106570
	ldrh r2, [r0, #0x0]
	ldr r0, _020B3B60 ; =0x0000FFFE
	cmp r2, r0
	movne r0, r6
	bne _020B397C
_020B3978:
	mov r0, r7
_020B397C:
	cmp r0, #0x0
	beq _020B3A04
	ldr r0, _020B3B64 ; =UNK_021CE8F4
	ldr r0, [r0, #0x404]
	cmp r0, #0x0
	beq _020B39E4
	ldr r0, _020B3B64 ; =UNK_021CE8F4
	ldrh r1, [r0, #0x0]
	add r0, r0, r1, lsl #0x2
	ldr r1, [r0, #0x4]
	cmp r1, #0x0
	bne _020B3A04
	bl FUN_020B4010
	ldr r0, _020B3B64 ; =UNK_021CE8F4
	ldr r2, [r4, #0x0]
	ldrh r1, [r0, #0x0]
	mov r0, r2, lsl #0x10
	mov r2, r0, lsr #0xd
	ldr r0, _020B3B70 ; =UNK_021CDDF4
	ldrh r3, [r0, r2]
	ldr r0, _020B3B64 ; =UNK_021CE8F4
	add r2, r0, r1, lsl #0x2
	ldr r0, _020B3B74 ; =UNK_021CE4F4
	add r1, r0, r3, lsl #0x5
	str r1, [r2, #0x4]
	b _020B3A04
_020B39E4:
	bl FUN_020B4010
	ldr r0, [r4, #0x0]
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0xd
	ldr r0, _020B3B70 ; =UNK_021CDDF4
	ldrh r1, [r0, r1]
	ldr r0, _020B3B74 ; =UNK_021CE4F4
	add r1, r0, r1, lsl #0x5
_020B3A04:
	ldr r0, _020B3B58 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	ldreq r2, [r4, #0x0]
	moveq r0, #0x18
	mlaeq r0, r2, r0, r11
	beq _020B3A44
	ldr r2, [r4, #0x0]
	mov r0, #0x18
	mla r8, r2, r0, r11
	ldr r0, _020B3B84 ; =UNK_02106578
	ldr r3, [r8, #0x10]
	mov r2, r0
	str r3, [r2, #0x10]
	ldr r3, [r8, #0x14]
	str r3, [r2, #0x14]
_020B3A44:
	bl FUN_020B4FAC
	ldr r0, _020B3B88 ; =UNK_02106574
	ldr r1, [r0, #0x0]
	mvn r0, #0x0
	cmp r1, r0
	movne r0, r6
	moveq r0, r7
	cmp r0, #0x0
	beq _020B3A74
	mov r0, r10
	bl FUN_020B4BF4
	b _020B3A7C
_020B3A74:
	mov r0, r10
	bl FUN_020B4CDC
_020B3A7C:
	ldr r0, [r5, #0x0]
	str r7, [r0, #0x74]
	bl FUN_020B4DA0
	b _020B3B40
_020B3A8C:
	ldr r8, [r5, #0x0]
	mov r1, r9
	mov r0, r8
	str r9, [r8, #0x74]
	bl FUN_020B4F9C
	mov r0, r8
	bl FUN_020B4E0C
	ldr r2, [r4, #0x0]
	ldr r1, _020B3B8C ; =UNK_021CDD74
	ldr r0, [sp, #0x0]
	ldr r1, [r1, r2, lsl #0x2]
	bl FUN_020B4FA4
	ldr r0, _020B3B58 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	ldreq r1, [r4, #0x0]
	moveq r0, #0x18
	mlaeq r0, r1, r0, r11
	beq _020B3AFC
	ldr r1, [r4, #0x0]
	mov r0, #0x18
	mla r3, r1, r0, r11
	ldr r0, _020B3B84 ; =UNK_02106578
	ldr r2, [r3, #0x10]
	mov r1, r0
	str r2, [r1, #0x10]
	ldr r2, [r3, #0x14]
	str r2, [r1, #0x14]
_020B3AFC:
	bl FUN_020B4FC4
	ldr r0, _020B3B88 ; =UNK_02106574
	ldr r1, [r0, #0x0]
	mvn r0, #0x0
	cmp r1, r0
	movne r0, r6
	moveq r0, r7
	cmp r0, #0x0
	beq _020B3B2C
	mov r0, r10
	bl FUN_020B4BF4
	b _020B3B34
_020B3B2C:
	mov r0, r10
	bl FUN_020B4CDC
_020B3B34:
	ldr r0, [r5, #0x0]
	str r7, [r0, #0x74]
	bl FUN_020B4DA0
_020B3B40:
	ldr r9, [r9, #0x30]
	cmp r9, #0x0
	bne _020B3908
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B3B54: .word UNK_021CDD6C
_020B3B58: .word UNK_021CDD68
_020B3B5C: .word UNK_02106570
_020B3B60: .word 0x0000FFFE
_020B3B64: .word UNK_021CE8F4
_020B3B68: .word UNK_021CE8F8
_020B3B6C: .word UNK_021CDD70
_020B3B70: .word UNK_021CDDF4
_020B3B74: .word UNK_021CE4F4
_020B3B78: .word UNK_021CDEF4
_020B3B7C: .word UNK_021CDF04
_020B3B80: .word UNK_021CDF08
_020B3B84: .word UNK_02106578
_020B3B88: .word UNK_02106574
_020B3B8C: .word UNK_021CDD74
	arm_func_end FUN_020B36C0

	arm_func_start FUN_020B3B90
FUN_020B3B90: ; 0x020B3B90
	stmdb sp!, {r4-r6,lr}
	sub sp, sp, #0x8
	ldr r0, _020B3C24 ; =UNK_021CDD6C
	mov r12, r1
	ldr r0, [r0, #0x0]
	mov r3, r2
	ldr r1, [r0, #0x74]
	ldr r2, [r1, #0x44]
	cmp r2, #0x0
	addeq sp, sp, #0x8
	ldmeqia sp!, {r4-r6,pc}
	ldr r2, _020B3C28 ; =UNK_021CDD68
	ldr r2, [r2, #0x0]
	cmp r2, #0x0
	ldreq r2, _020B3C2C ; =UNK_021CDD70
	ldreq r4, _020B3C30 ; =UNK_021CDEF4
	ldreq lr, [r2, #0x0]
	moveq r2, #0x18
	mlaeq r6, lr, r2, r4
	beq _020B3C0C
	ldr lr, _020B3C2C ; =UNK_021CDD70
	mov r2, #0x18
	ldr lr, [lr, #0x0]
	ldr r4, _020B3C34 ; =UNK_021CDF04
	mul r5, lr, r2
	ldr r2, _020B3C38 ; =UNK_021CDF08
	ldr r4, [r4, r5]
	ldr r6, _020B3C3C ; =UNK_02106578
	ldr r2, [r2, r5]
	str r4, [r6, #0x10]
	str r2, [r6, #0x14]
_020B3C0C:
	str r6, [sp, #0x0]
	ldr lr, [r1, #0x44]
	mov r2, r12
	blx lr
	add sp, sp, #0x8
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B3C24: .word UNK_021CDD6C
_020B3C28: .word UNK_021CDD68
_020B3C2C: .word UNK_021CDD70
_020B3C30: .word UNK_021CDEF4
_020B3C34: .word UNK_021CDF04
_020B3C38: .word UNK_021CDF08
_020B3C3C: .word UNK_02106578
	arm_func_end FUN_020B3B90

	arm_func_start FUN_020B3C40
FUN_020B3C40: ; 0x020B3C40
	stmdb sp!, {r4-r6,lr}
	sub sp, sp, #0x8
	ldr r3, _020B3E2C ; =UNK_021CDD6C
	add r4, r0, #0x38
	ldr r0, [r3, #0x0]
	mov r6, r1
	mov r5, r2
	bl FUN_020B278C
	cmp r0, #0x0
	beq _020B3C90
	ldrh r1, [r4, #0x4]
	and r1, r1, #0xf000
	mov r1, r1, lsl #0x4
	mov r1, r1, lsr #0x10
	bl FUN_020B10B0
	ldr r1, [r4, #0x4]
	and r0, r0, #0xf
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #0xc
	str r0, [r4, #0x4]
_020B3C90:
	ldr r0, _020B3E2C ; =UNK_021CDD6C
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x84]
	cmp r0, #0x0
	beq _020B3DA4
	ldr r0, [r1, #0x84]
	ands r0, r0, #0x1
	beq _020B3CC8
	ldrh r0, [r1, #0x88]
	ldr r1, [r4, #0x4]
	bic r1, r1, #0xc00
	and r0, r0, #0x3
	orr r0, r1, r0, lsl #0xa
	str r0, [r4, #0x4]
_020B3CC8:
	ldr r0, _020B3E2C ; =UNK_021CDD6C
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x84]
	ands r0, r0, #0x2
	beq _020B3CF4
	ldrh r0, [r1, #0x8a]
	ldr r1, [r4, #0x4]
	bic r1, r1, #0xf000
	and r0, r0, #0xf
	orr r0, r1, r0, lsl #0xc
	str r0, [r4, #0x4]
_020B3CF4:
	ldr r0, _020B3E2C ; =UNK_021CDD6C
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x84]
	ands r0, r0, #0x10
	beq _020B3D2C
	ldr r2, [r4, #0x4]
	ldrh r0, [r1, #0x94]
	mov r1, r2, lsl #0x10
	bic r2, r2, #0xf000
	add r0, r0, r1, lsr #0x1c
	and r0, r0, #0xf
	and r0, r0, #0xf
	orr r0, r2, r0, lsl #0xc
	str r0, [r4, #0x4]
_020B3D2C:
	ldr r0, _020B3E2C ; =UNK_021CDD6C
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x84]
	ands r0, r0, #0x4
	beq _020B3D60
	ldr r0, [r1, #0x90]
	cmp r0, #0x0
	ldrne r0, [r4, #0x0]
	orrne r0, r0, #0x1000
	strne r0, [r4, #0x0]
	ldreq r0, [r4, #0x0]
	biceq r0, r0, #0x1000
	streq r0, [r4, #0x0]
_020B3D60:
	ldr r0, _020B3E2C ; =UNK_021CDD6C
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x84]
	ands r0, r0, #0x8
	beq _020B3DA4
	ldr r0, [r4, #0x0]
	ldrh r2, [r4, #0x4]
	ldr r1, [r1, #0x8c]
	bic r0, r0, #0xc00
	orr r0, r0, r1, lsl #0xa
	str r0, [r4, #0x0]
	ldrh r0, [r4, #0x4]
	and r1, r2, #0xf000
	mov r1, r1, asr #0xc
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #0xc
	strh r0, [r4, #0x4]
_020B3DA4:
	ldr r0, _020B3E2C ; =UNK_021CDD6C
	ldr r0, [r0, #0x0]
	ldr r1, [r0, #0x74]
	ldr r2, [r1, #0x40]
	cmp r2, #0x0
	addeq sp, sp, #0x8
	ldmeqia sp!, {r4-r6,pc}
	ldr r2, _020B3E30 ; =UNK_021CDD68
	ldr r2, [r2, #0x0]
	cmp r2, #0x0
	ldreq r2, _020B3E34 ; =UNK_021CDD70
	ldreq r4, _020B3E38 ; =UNK_021CDEF4
	ldreq r3, [r2, #0x0]
	moveq r2, #0x18
	mlaeq r4, r3, r2, r4
	beq _020B3E10
	ldr r3, _020B3E34 ; =UNK_021CDD70
	mov r2, #0x18
	ldr r4, [r3, #0x0]
	ldr r3, _020B3E3C ; =UNK_021CDF04
	mul r12, r4, r2
	ldr r2, _020B3E40 ; =UNK_021CDF08
	ldr r3, [r3, r12]
	ldr r4, _020B3E44 ; =UNK_02106578
	ldr r2, [r2, r12]
	str r3, [r4, #0x10]
	str r2, [r4, #0x14]
_020B3E10:
	str r4, [sp, #0x0]
	ldr r4, [r1, #0x40]
	mov r2, r6
	mov r3, r5
	blx r4
	add sp, sp, #0x8
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B3E2C: .word UNK_021CDD6C
_020B3E30: .word UNK_021CDD68
_020B3E34: .word UNK_021CDD70
_020B3E38: .word UNK_021CDEF4
_020B3E3C: .word UNK_021CDF04
_020B3E40: .word UNK_021CDF08
_020B3E44: .word UNK_02106578
	arm_func_end FUN_020B3C40

	arm_func_start FUN_020B3E48
FUN_020B3E48: ; 0x020B3E48
	stmdb sp!, {r4,lr}
	ldr r0, _020B3EC4 ; =UNK_021CDD6C
	mov r2, r1
	ldr r0, [r0, #0x0]
	ldr r1, [r0, #0x74]
	ldr r3, [r1, #0x3c]
	cmp r3, #0x0
	ldmeqia sp!, {r4,pc}
	ldr r3, _020B3EC8 ; =UNK_021CDD68
	ldr r3, [r3, #0x0]
	cmp r3, #0x0
	ldreq r3, _020B3ECC ; =UNK_021CDD70
	ldreq lr, _020B3ED0 ; =UNK_021CDEF4
	ldreq r12, [r3, #0x0]
	moveq r3, #0x18
	mlaeq r3, r12, r3, lr
	beq _020B3EB8
	ldr ip, _020B3ECC ; =UNK_021CDD70
	mov r3, #0x18
	ldr r12, [r12, #0x0]
	ldr lr, _020B3ED4 ; =UNK_021CDF04
	mul r4, r12, r3
	ldr ip, _020B3ED8 ; =UNK_021CDF08
	ldr lr, [lr, r4]
	ldr r3, _020B3EDC ; =UNK_02106578
	ldr r12, [r12, r4]
	str lr, [r3, #0x10]
	str r12, [r3, #0x14]
_020B3EB8:
	ldr r12, [r1, #0x3c]
	blx r12
	ldmia sp!, {r4,pc}
	.balign 4
_020B3EC4: .word UNK_021CDD6C
_020B3EC8: .word UNK_021CDD68
_020B3ECC: .word UNK_021CDD70
_020B3ED0: .word UNK_021CDEF4
_020B3ED4: .word UNK_021CDF04
_020B3ED8: .word UNK_021CDF08
_020B3EDC: .word UNK_02106578
	arm_func_end FUN_020B3E48

	arm_func_start FUN_020B3EE0
FUN_020B3EE0: ; 0x020B3EE0
	stmdb sp!, {r4-r6,lr}
	ldr r2, _020B3FF4 ; =UNK_021CDD6C
	mov r6, r0
	ldr r0, [r2, #0x0]
	mov r5, r1
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x34]
	cmp r0, #0x0
	beq _020B3F7C
	ldr r0, _020B3FF8 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	ldreq r0, _020B3FFC ; =UNK_021CDD70
	ldreq r1, _020B4000 ; =UNK_021CDEF4
	ldreq r2, [r0, #0x0]
	moveq r0, #0x18
	mlaeq r1, r2, r0, r1
	beq _020B3F54
	ldr r1, _020B3FFC ; =UNK_021CDD70
	mov r0, #0x18
	ldr r2, [r1, #0x0]
	ldr r1, _020B4004 ; =UNK_021CDF04
	mul r3, r2, r0
	ldr r0, _020B4008 ; =UNK_021CDF08
	ldr r2, [r1, r3]
	ldr r1, _020B400C ; =UNK_02106578
	ldr r0, [r0, r3]
	str r2, [r1, #0x10]
	str r0, [r1, #0x14]
_020B3F54:
	ldr r3, [r4, #0x34]
	mov r0, r5
	mov r2, r4
	blx r3
	cmp r0, #0x0
	moveq r0, #0x0
	streq r0, [r6, #0x30]
	ldmeqia sp!, {r4-r6,pc}
	mov r0, #0x1
	str r0, [r6, #0x30]
_020B3F7C:
	ldr r0, [r4, #0x38]
	cmp r0, #0x0
	ldmeqia sp!, {r4-r6,pc}
	ldr r0, _020B3FF8 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	ldreq r0, _020B3FFC ; =UNK_021CDD70
	ldreq r2, _020B4000 ; =UNK_021CDEF4
	ldreq r1, [r0, #0x0]
	moveq r0, #0x18
	mlaeq r3, r1, r0, r2
	beq _020B3FD8
	ldr r1, _020B3FFC ; =UNK_021CDD70
	mov r0, #0x18
	ldr r2, [r1, #0x0]
	ldr r1, _020B4004 ; =UNK_021CDF04
	mul r6, r2, r0
	ldr r0, _020B4008 ; =UNK_021CDF08
	ldr r1, [r1, r6]
	ldr r3, _020B400C ; =UNK_02106578
	ldr r0, [r0, r6]
	str r1, [r3, #0x10]
	str r0, [r3, #0x14]
_020B3FD8:
	ldr r0, _020B3FF4 ; =UNK_021CDD6C
	ldr r6, [r4, #0x38]
	ldr r0, [r0, #0x0]
	mov r1, r4
	mov r2, r5
	blx r6
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B3FF4: .word UNK_021CDD6C
_020B3FF8: .word UNK_021CDD68
_020B3FFC: .word UNK_021CDD70
_020B4000: .word UNK_021CDEF4
_020B4004: .word UNK_021CDF04
_020B4008: .word UNK_021CDF08
_020B400C: .word UNK_02106578
	arm_func_end FUN_020B3EE0

	arm_func_start FUN_020B4010
FUN_020B4010:
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldr r0, _020B4154 ; =UNK_021CDD70
	ldr r1, _020B4158 ; =UNK_021CDDF4
	ldr r0, [r0, #0x0]
	mov r2, #0x1
	mov r0, r0, lsl #0x10
	add r3, r1, r0, lsr #0xd
	ldrh r0, [r3, #0x4]
	cmp r0, #0x1
	beq _020B4044
	cmp r0, #0x2
	movne r2, #0x0
_020B4044:
	cmp r2, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r5,pc}
	ldr r0, _020B415C ; =UNK_021CDD60
	mov r2, #0x10
	ldrh r4, [r0, #0x0]
	cmp r4, #0x1f
	addcc r1, r4, #0x1
	strcch r1, [r0, #0x0]
	ldr r0, _020B4160 ; =UNK_021CE4F4
	ldrh r5, [r3, #0x2]
	add r0, r0, r4, lsl #0x5
	add r1, r0, #0x10
	mvn r0, #0x0
	strh r4, [r3, #0x0]
	bl MIi_CpuClearFast
	ldr r0, _020B4154 ; =UNK_021CDD70
	ldr r1, _020B4164 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	ldr r2, [r1, #0x0]
	mov r1, r0, lsl #0x10
	cmp r2, #0x0
	ldr r3, _020B4158 ; =UNK_021CDDF4
	mov r1, r1, lsr #0xd
	ldrh r1, [r3, r1]
	ldr r3, _020B4160 ; =UNK_021CE4F4
	moveq r2, #0x18
	add r1, r3, r1, lsl #0x5
	ldreq r3, _020B4168 ; =UNK_021CE1F4
	mlaeq r12, r0, r2, r3
	beq _020B40E4
	mov r2, #0x18
	mul r3, r0, r2
	ldr r2, _020B416C ; =UNK_021CDF04
	ldr r0, _020B4170 ; =UNK_021CDF08
	ldr r2, [r2, r3]
	ldr ip, _020B4174 ; =UNK_02106578
	ldr r0, [r0, r3]
	str r2, [r12, #0x10]
	str r0, [r12, #0x14]
_020B40E4:
	ldr r2, [r12, #0x0]
	ldr r0, _020B4154 ; =UNK_021CDD70
	str r2, [r1, #0x0]
	ldr r2, [r12, #0x4]
	str r2, [r1, #0x4]
	ldr r2, [r12, #0x8]
	str r2, [r1, #0x8]
	ldr r2, [r12, #0xc]
	str r2, [r1, #0xc]
	ldr r0, [r0, #0x0]
	mov r0, r0, lsl #0x10
	movs lr, r0, lsr #0x10
	addmi sp, sp, #0x4
	ldmmiia sp!, {r4-r5,pc}
	ldr r3, _020B4158 ; =UNK_021CDDF4
	mov r0, #0x3
_020B4124:
	add r2, r3, lr, lsl #0x3
	ldrh r1, [r2, #0x2]
	mov r12, lr, lsl #0x3
	cmp r5, r1
	addne sp, sp, #0x4
	ldmneia sp!, {r4-r5,pc}
	strh r0, [r2, #0x4]
	strh r4, [r3, r12]
	subs lr, lr, #0x1
	bpl _020B4124
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B4154: .word UNK_021CDD70
_020B4158: .word UNK_021CDDF4
_020B415C: .word UNK_021CDD60
_020B4160: .word UNK_021CE4F4
_020B4164: .word UNK_021CDD68
_020B4168: .word UNK_021CE1F4
_020B416C: .word UNK_021CDF04
_020B4170: .word UNK_021CDF08
_020B4174: .word UNK_02106578
	arm_func_end FUN_020B4010

	arm_func_start FUN_020B4178
FUN_020B4178: ; 0x020B4178
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldr r0, _020B4220 ; =UNK_021CDD68
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _020B41B8
	ldr r1, _020B4224 ; =UNK_021CDD70
	mov r0, #0x18
	ldr r12, [r1, #0x0]
	ldr r1, _020B4228 ; =UNK_021CDF04
	mul r3, r12, r0
	mov r2, #0x0
	ldr r0, _020B422C ; =UNK_021CDF08
	str r2, [r1, r3]
	str r2, [r0, r3]
	b _020B420C
_020B41B8:
	ldr r0, _020B4224 ; =UNK_021CDD70
	mov lr, #0x18
	ldr r1, [r0, #0x0]
	ldr r4, _020B4230 ; =UNK_021CDEF4
	mul r3, r1, lr
	mov r2, #0x1000
	str r2, [r4, r3]
	add r5, r4, r3
	mov r1, #0x0
	str r1, [r5, #0x4]
	str r1, [r5, #0x8]
	str r2, [r5, #0xc]
	str r1, [r5, #0x10]
	str r1, [r5, #0x14]
	ldr r12, [r0, #0x0]
	ldr r4, _020B4234 ; =UNK_021CE1F4
	ldmia r5!, {r0-r3}
	mla lr, r12, lr, r4
	stmia lr!, {r0-r3}
	ldmia r5, {r0-r1}
	stmia lr, {r0-r1}
_020B420C:
	ldr r0, _020B4238 ; =UNK_021CDD74
	mov r1, #0x0
	str r1, [r0, r12, lsl #0x2]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B4220: .word UNK_021CDD68
_020B4224: .word UNK_021CDD70
_020B4228: .word UNK_021CDF04
_020B422C: .word UNK_021CDF08
_020B4230: .word UNK_021CDEF4
_020B4234: .word UNK_021CE1F4
_020B4238: .word UNK_021CDD74
	arm_func_end FUN_020B4178

	arm_func_start FUN_020B423C
FUN_020B423C: ; 0x020B423C
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x1c
	ldr r4, [r0, #0x4]
	ldr r3, [r1, #0x8]
	mov r12, r2
	smull r6, r5, r4, r3
	ldr r4, [r0, #0x0]
	ldr r3, [r1, #0x0]
	cmp r12, r1
	smlal r6, r5, r4, r3
	mov r3, r6, lsr #0xc
	addeq r2, sp, #0x0
	orr r3, r3, r5, lsl #0x14
	str r3, [r2, #0x0]
	ldr r4, [r0, #0x4]
	ldr r3, [r1, #0xc]
	ldr r5, [r0, #0x0]
	smull r7, r6, r4, r3
	ldr r3, [r1, #0x4]
	add lr, sp, #0x0
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #0x14
	str r3, [r2, #0x4]
	ldr r4, [r0, #0xc]
	ldr r3, [r1, #0x8]
	ldr r5, [r0, #0x8]
	smull r7, r6, r4, r3
	ldr r3, [r1, #0x0]
	cmp r2, lr
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #0x14
	str r3, [r2, #0x8]
	ldr r4, [r0, #0xc]
	ldr r3, [r1, #0xc]
	ldr r5, [r0, #0x8]
	smull r7, r6, r4, r3
	ldr r3, [r1, #0x4]
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #0x14
	str r3, [r2, #0xc]
	ldr r4, [r0, #0x14]
	ldr r3, [r1, #0x8]
	ldr r5, [r0, #0x10]
	smull r7, r6, r4, r3
	ldr r3, [r1, #0x0]
	ldr r4, [r1, #0x10]
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #0x14
	add r3, r4, r3
	str r3, [r2, #0x10]
	ldr r4, [r0, #0x14]
	ldr r3, [r1, #0xc]
	ldr r5, [r0, #0x10]
	ldr r0, [r1, #0x4]
	smull r6, r3, r4, r3
	smlal r6, r3, r5, r0
	mov r0, r6, lsr #0xc
	ldr r1, [r1, #0x14]
	orr r0, r0, r3, lsl #0x14
	add r0, r1, r0
	str r0, [r2, #0x14]
	ldmeqia lr!, {r0-r3}
	stmeqia r12!, {r0-r3}
	ldmeqia lr, {r0-r1}
	stmeqia r12, {r0-r1}
	add sp, sp, #0x1c
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020B423C

	arm_func_start FUN_020B4358
FUN_020B4358: ; 0x020B4358
	stmdb sp!, {r4,lr}
	ldr r2, _020B43A0 ; =UNK_021CED04
	mov r1, #0x30
	ldr r2, [r2, #0x0]
	mla r4, r0, r1, r2
	mov r0, r4
	bl FUN_020B10CC
	mov r0, #0x0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldmia sp!, {r4,pc}
	.balign 4
_020B43A0: .word UNK_021CED04
	arm_func_end FUN_020B4358

	arm_func_start FUN_020B43A4
FUN_020B43A4: ; 0x020B43A4
	ldr r1, _020B43F8 ; =UNK_021CED00
	mov r0, #0x0
	ldr r3, [r1, #0x0]
	cmp r3, #0x0
	bls _020B43F0
	ldr r1, _020B43FC ; =UNK_021CED04
	ldr r2, [r1, #0x0]
	mov r12, r2
_020B43C4:
	ldr r1, [r12, #0x1c]
	cmp r1, #0x1
	movne r1, #0x30
	mlane r1, r0, r1, r2
	movne r2, #0x1
	strne r2, [r1, #0x1c]
	bxne lr
	add r0, r0, #0x1
	cmp r0, r3
	add r12, r12, #0x30
	blo _020B43C4
_020B43F0:
	mvn r0, #0x0
	bx lr
	.balign 4
_020B43F8: .word UNK_021CED00
_020B43FC: .word UNK_021CED04
	arm_func_end FUN_020B43A4

	arm_func_start FUN_020B4400
FUN_020B4400: ; 0x020B4400
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r1
	mov r4, r2
	bl FUN_020B469C
	mvn r1, #0x0
	str r1, [r0, #0x24]
	str r5, [r0, #0x28]
	str r4, [r0, #0x2c]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020B4400

	arm_func_start FUN_020B442C
FUN_020B442C: ; 0x020B442C
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x14
	mov r0, #0x0
	str r0, [sp, #0x0]
	ldr r0, _020B4558 ; =UNK_021CED00
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	addls sp, sp, #0x14
	ldmlsia sp!, {r4-r11,pc}
	ldr r0, [sp, #0x0]
	mov r5, #0x1
	str r0, [sp, #0x4]
	mov r11, r0
	str r0, [sp, #0x8]
	str r0, [sp, #0xc]
_020B4468:
	ldr r0, _020B455C ; =UNK_021CED04
	ldr r1, [r0, #0x0]
	ldr r0, [sp, #0x4]
	add r8, r1, r0
	ldr r0, [r8, #0x1c]
	cmp r0, #0x0
	beq _020B4528
	ldr r9, [sp, #0x8]
	mov r0, r9
	cmp r0, #0x3
	bge _020B4520
	add r4, r8, #0x24
_020B4498:
	mov r6, r5, lsl r9
	mov r1, r11
	ldr r0, [r8, #0x24]
	ands r0, r0, r6
	beq _020B44B8
	ldr r0, [r8, #0x20]
	ands r0, r0, r6
	movne r1, r5
_020B44B8:
	cmp r1, #0x0
	beq _020B4514
	ldr r0, _020B4560 ; =UNK_020FF8C4
	cmp r9, #0x0
	ldr r7, [r0, r9, lsl #0x2]
	ldreq r10, [r8, #0x14]
	mov r0, r8
	mov r1, r9
	ldrne r10, [r8, #0x10]
	bl FUN_020B10BC
	mov r1, r0
	mov r0, r7
	ldr r7, _020B4564 ; =UNK_021CECFC
	ldr r2, [r8, #0x28]
	ldr r3, [r8, #0x2c]
	ldr r7, [r7, #0x0]
	add r2, r10, r2
	blx r7
	cmp r0, #0x0
	ldrne r1, [r4, #0x0]
	mvnne r0, r6
	andne r0, r1, r0
	strne r0, [r4, #0x0]
_020B4514:
	add r9, r9, #0x1
	cmp r9, #0x3
	blt _020B4498
_020B4520:
	ldr r0, [sp, #0xc]
	str r0, [r8, #0x20]
_020B4528:
	ldr r0, _020B4558 ; =UNK_021CED00
	ldr r1, [r0, #0x0]
	ldr r0, [sp, #0x0]
	add r0, r0, #0x1
	str r0, [sp, #0x0]
	cmp r0, r1
	ldr r0, [sp, #0x4]
	add r0, r0, #0x30
	str r0, [sp, #0x4]
	blo _020B4468
	add sp, sp, #0x14
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B4558: .word UNK_021CED00
_020B455C: .word UNK_021CED04
_020B4560: .word UNK_020FF8C4
_020B4564: .word UNK_021CECFC
	arm_func_end FUN_020B442C

	arm_func_start FUN_020B4568
FUN_020B4568: ; 0x020B4568
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldr ip, _020B45E4 ; =UNK_021CECFC
	movs r6, r1
	ldr r1, _020B45E8 ; =UNK_021CED00
	ldr r3, _020B45EC ; =UNK_021CED04
	mov r7, r0
	str r2, [r12, #0x0]
	mov r5, #0x0
	addeq sp, sp, #0x4
	str r7, [r3, #0x0]
	str r6, [r1, #0x0]
	ldmeqia sp!, {r4-r7,pc}
	mov r4, r5
_020B45A0:
	mov r0, r7
	bl FUN_020B10CC
	str r4, [r7, #0xc]
	str r4, [r7, #0x10]
	str r4, [r7, #0x14]
	str r4, [r7, #0x18]
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	str r4, [r7, #0x24]
	str r4, [r7, #0x28]
	add r5, r5, #0x1
	str r4, [r7, #0x2c]
	cmp r5, r6
	add r7, r7, #0x30
	blo _020B45A0
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B45E4: .word UNK_021CECFC
_020B45E8: .word UNK_021CED00
_020B45EC: .word UNK_021CED04
	arm_func_end FUN_020B4568

	arm_func_start FUN_020B45F0
FUN_020B45F0: ; 0x020B45F0
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldr ip, _020B4698 ; =UNK_021CED04
	mov r4, #0x30
	ldr r12, [r12, #0x0]
	mov r7, r1
	mla r4, r0, r4, r12
	mov r0, r4
	mov r6, r2
	mov r5, r3
	bl FUN_020B10CC
	mvn r0, #0x0
	cmp r7, r0
	beq _020B4638
	mov r0, r4
	mov r2, r7
	mov r1, #0x0
	bl FUN_020B10C4
_020B4638:
	mvn r0, #0x0
	cmp r6, r0
	beq _020B4654
	mov r0, r4
	mov r2, r6
	mov r1, #0x1
	bl FUN_020B10C4
_020B4654:
	mvn r0, #0x0
	cmp r5, r0
	beq _020B4670
	mov r0, r4
	mov r2, r5
	mov r1, #0x2
	bl FUN_020B10C4
_020B4670:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #0xc]
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x24]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B4698: .word UNK_021CED04
	arm_func_end FUN_020B45F0

	arm_func_start FUN_020B469C
FUN_020B469C: ; 0x020B469C
	ldr r2, _020B46B0 ; =UNK_021CED04
	mov r1, #0x30
	ldr r2, [r2, #0x0]
	mla r0, r1, r0, r2
	bx lr
	.balign 4
_020B46B0: .word UNK_021CED04
	arm_func_end FUN_020B469C

	arm_func_start FUN_020B46B4
FUN_020B46B4: ; 0x020B46B4
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x1c
	add r12, sp, #0x4
	mov r5, r1
	mov r4, r2
	mov r7, r3
	mov r6, r0
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	mov r0, r7
	str r12, [sp, #0x0]
	bl FUN_020B498C
	ldr r2, [r7, #0x0]
	and r1, r2, #0x300
	cmp r1, #0x100
	beq _020B4708
	cmp r1, #0x300
	beq _020B4708
	and r0, r2, #0x30000000
	orr r1, r1, r0
_020B4708:
	cmp r1, #0x300
	bne _020B478C
	ldr r0, _020B4914 ; =0xC000C000
	ldr r1, _020B4918 ; =UNK_021CED08
	and r0, r2, r0
	and r2, r0, #0xc0000000
	mov r12, r2, lsr #0x1e
	and r0, r0, #0xc000
	mov lr, r0, asr #0xe
	ldr r3, _020B491C ; =UNK_020FF8AC
	ldr r0, [r1, #0x0]
	ldr r2, _020B4920 ; =UNK_020FF894
	cmp r0, #0x0
	ldrne r0, _020B4924 ; =UNK_021CED10
	mov r12, r12, lsl #0x1
	add r1, r2, lr, lsl #0x3
	add r3, r3, lr, lsl #0x3
	ldrh r2, [r12, r3]
	ldrh r1, [r12, r1]
	ldrne r0, [r0, #0x0]
	mov r2, r2, asr #0x1
	addne r3, r0, r4, lsl #0xc
	mov r1, r1, asr #0x1
	add r0, r5, r1
	add r2, r6, r2
	ldr r1, _020B4928 ; =0x04000470
	mov r2, r2, lsl #0xc
	str r2, [r1, #0x0]
	mov r0, r0, lsl #0xc
	moveq r3, r4, lsl #0xc
	str r0, [r1, #0x0]
	str r3, [r1, #0x0]
	b _020B47C0
_020B478C:
	ldr r0, _020B4918 ; =UNK_021CED08
	ldr r1, _020B4928 ; =0x04000470
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	ldrne r0, _020B4924 ; =UNK_021CED10
	ldrne r0, [r0, #0x0]
	addne r2, r0, r4, lsl #0xc
	mov r0, r6, lsl #0xc
	str r0, [r1, #0x0]
	mov r0, r5, lsl #0xc
	moveq r2, r4, lsl #0xc
	str r0, [r1, #0x0]
	str r2, [r1, #0x0]
_020B47C0:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, _020B492C ; =0x0400046C
	mov r0, r0, lsl #0xc
	str r0, [r2, #0x0]
	mov r0, r1, lsl #0xc
	str r0, [r2, #0x0]
	mov r1, #0x1000
	str r1, [r2, #0x0]
	ldr r0, _020B4930 ; =0x04000500
	mov r1, #0x1
	str r1, [r0, #0x0]
	ldr r0, [sp, #0x4]
	ldr r1, [sp, #0x10]
	mov r0, r0, lsl #0x8
	mov r1, r1, lsl #0x8
	mov r0, r0, asr #0x10
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r2, r2, r0, lsl #0x10
	ldr r1, _020B4934 ; =0x04000488
	ldr r0, _020B4938 ; =0x04000490
	str r2, [r1, #0x0]
	mov r2, #0x10000
	str r2, [r0, #0x0]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r2, r2, lsl #0x8
	mov r3, r3, lsl #0x8
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r4, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r3, r4, r2, lsl #0x10
	ldr r2, _020B493C ; =0x00010040
	str r3, [r1, #0x0]
	str r2, [r0, #0x0]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x8]
	mov r2, r2, lsl #0x8
	mov r3, r3, lsl #0x8
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r4, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r4, r2, lsl #0x10
	str r2, [r1, #0x0]
	mov r2, #0x40
	str r2, [r0, #0x0]
	ldr r2, [sp, #0x4]
	ldr r3, [sp, #0x8]
	mov r2, r2, lsl #0x8
	mov r3, r3, lsl #0x8
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r4, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r4, r2, lsl #0x10
	str r2, [r1, #0x0]
	mov r2, #0x0
	str r2, [r0, #0x0]
	ldr r1, _020B4940 ; =0x04000504
	ldr r0, _020B4918 ; =UNK_021CED08
	str r2, [r1, #0x0]
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	addeq sp, sp, #0x1c
	ldmeqia sp!, {r4-r7,pc}
	ldr r1, _020B4924 ; =UNK_021CED10
	ldr r0, _020B4944 ; =UNK_02106590
	ldr r2, [r1, #0x0]
	ldr r0, [r0, #0x0]
	add r0, r2, r0
	str r0, [r1, #0x0]
	add sp, sp, #0x1c
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B4914: .word 0xC000C000
_020B4918: .word UNK_021CED08
_020B491C: .word UNK_020FF8AC
_020B4920: .word UNK_020FF894
_020B4924: .word UNK_021CED10
_020B4928: .word 0x04000470
_020B492C: .word 0x0400046C
_020B4930: .word 0x04000500
_020B4934: .word 0x04000488
_020B4938: .word 0x04000490
_020B493C: .word 0x00010040
_020B4940: .word 0x04000504
_020B4944: .word UNK_02106590
	arm_func_end FUN_020B46B4

	arm_func_start FUN_020B4948
FUN_020B4948:
	ldr r0, _020B4954 ; =UNK_02106590
	ldr r0, [r0, #0x0]
	bx lr
	.balign 4
_020B4954: .word UNK_02106590
	arm_func_end FUN_020B4948

	arm_func_start FUN_020B4958
FUN_020B4958:
	ldr r1, _020B4964 ; =UNK_02106590
	str r0, [r1, #0x0]
	bx lr
	.balign 4
_020B4964: .word UNK_02106590
	arm_func_end FUN_020B4958

	arm_func_start FUN_020B4968
FUN_020B4968: ; 0x020B4968
	ldr r0, _020B4978 ; =UNK_021CED10
	mov r1, #0x0
	str r1, [r0, #0x0]
	bx lr
	.balign 4
_020B4978: .word UNK_021CED10
	arm_func_end FUN_020B4968

	arm_func_start FUN_020B497C
FUN_020B497C:
	ldr r1, _020B4988 ; =UNK_021CED08
	str r0, [r1, #0x0]
	bx lr
	.balign 4
_020B4988: .word UNK_021CED08
	arm_func_end FUN_020B497C

	arm_func_start FUN_020B498C
FUN_020B498C: ; 0x020B498C
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r4, [r6, #0x0]
	ldr r0, _020B4BCC ; =0xC000C000
	ldr r5, [r6, #0x4]
	and r4, r4, r0
	and r0, r4, #0xc0000000
	and r4, r4, #0xc000
	mov lr, r0, lsr #0x1e
	ldr r0, _020B4BD0 ; =UNK_020FF8AC
	mov r12, r4, asr #0xe
	ldr r8, _020B4BD4 ; =UNK_020FF894
	mov r4, lr, lsl #0x1
	add r0, r0, r12, lsl #0x3
	ldrh r9, [r4, r0]
	ldr r0, [sp, #0x28]
	mov r5, r5, lsl #0x16
	mov r5, r5, lsr #0x16
	mov r7, r5, lsl #0x10
	str r9, [r0, #0x10]
	add r5, r8, r12, lsl #0x3
	ldrh r8, [r4, r5]
	mov r5, r1
	mov r4, r3
	str r8, [r0, #0x14]
	ldr r1, [r5, #0x14]
	mov r7, r7, lsr #0x10
	cmp r1, #0x0
	bne _020B4A74
	ldr r1, [r5, #0x8]
	mov r2, r2, lsr #0x3
	orr r1, r2, r1, lsl #0x1a
	ldr r2, [r5, #0x0]
	orr r1, r1, #0x40000000
	ldr r3, [r5, #0x4]
	orr r1, r1, r2, lsl #0x14
	orr r2, r1, r3, lsl #0x17
	ldr r8, [r5, #0x10]
	ldr r1, _020B4BD8 ; =0x040004A8
	orr r2, r2, r8, lsl #0x1d
	str r2, [r1, #0x0]
	ldr r1, [r5, #0x8]
	ldr r2, [r5, #0x0]
	cmp r1, #0x4
	moveq r1, r7, lsl #0xf
	moveq r7, r1, lsr #0x10
	ldr r1, _020B4BDC ; =UNK_020FF8D8
	ldr r1, [r1, r2, lsl #0x2]
	sub r1, r1, #0x1
	and r1, r7, r1
	mov r1, r1, lsl #0xf
	str r1, [r0, #0x0]
	ldr r1, [r5, #0x0]
	mov r1, r7, asr r1
	mov r1, r1, lsl #0xf
	str r1, [r0, #0x4]
	b _020B4AE0
_020B4A74:
	and r1, r1, #0x700000
	mov r1, r1, asr #0x14
	mov r12, r12, lsl #0x10
	add r1, r1, #0x5
	ldr r3, [r5, #0x8]
	mov lr, lr, lsl #0x10
	ldr sb, _020B4BE0 ; =UNK_020FF8F8
	mov r12, r12, lsr #0x10
	ldr r8, _020B4BE4 ; =UNK_020FF928
	add r1, r2, r7, lsl r1
	mov r2, r3, lsl #0x1a
	orr r3, r2, r1, lsr #0x3
	mov r7, lr, lsr #0x10
	add r2, r9, r12, lsl #0x4
	add r1, r8, r12, lsl #0x4
	ldr r2, [r2, r7, lsl #0x2]
	orr r3, r3, #0x40000000
	ldr r1, [r1, r7, lsl #0x2]
	orr r2, r3, r2, lsl #0x14
	ldr r3, [r5, #0x10]
	orr r2, r2, r1, lsl #0x17
	ldr r1, _020B4BD8 ; =0x040004A8
	orr r2, r2, r3, lsl #0x1d
	str r2, [r1, #0x0]
	mov r1, #0x0
	str r1, [r0, #0x0]
	str r1, [r0, #0x4]
_020B4AE0:
	ldr r2, [r0, #0x0]
	ldr r1, [r0, #0x10]
	add r1, r2, r1, lsl #0xc
	str r1, [r0, #0x8]
	ldr r2, [r0, #0x4]
	ldr r1, [r0, #0x14]
	add r1, r2, r1, lsl #0xc
	str r1, [r0, #0xc]
	ldr r1, [r6, #0x0]
	mov r2, r1, lsl #0x2
	mov r1, r1, lsl #0x3
	movs r3, r1, lsr #0x1f
	mov r12, r2, lsr #0x1f
	ldrne r2, [r0, #0x0]
	ldrne r1, [r0, #0x8]
	strne r1, [r0, #0x0]
	strne r2, [r0, #0x8]
	cmp r12, #0x0
	ldrne r2, [r0, #0x4]
	ldrne r1, [r0, #0xc]
	strne r1, [r0, #0x4]
	ldr r1, _020B4BE8 ; =UNK_021CED0C
	strne r2, [r0, #0xc]
	ldr r7, [r1, #0x0]
	cmp r7, #0x0
	beq _020B4B60
	str r3, [sp, #0x0]
	add r1, r0, #0x4
	add r2, r0, #0x8
	add r3, r0, #0xc
	str r12, [sp, #0x4]
	blx r7
_020B4B60:
	ldr r0, [r6, #0x4]
	ldr r1, [r6, #0x0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x1c
	mov r3, r1, lsl #0x12
	ldr r1, [r5, #0xc]
	mov r0, r0, lsl #0x10
	ldr r2, _020B4BEC ; =UNK_020FF8D0
	mov r3, r3, lsr #0x1f
	cmp r1, #0x0
	mov r0, r0, lsr #0x10
	ldr r1, [r2, r3, lsl #0x2]
	movne r0, r0, lsl #0x9
	bne _020B4BA4
	cmp r1, #0x4
	moveq r0, #0x0
	movne r0, r0, lsl #0x5
_020B4BA4:
	cmp r1, #0x2
	moveq r2, #0x1
	movne r2, #0x0
	add r1, r4, r0
	rsb r0, r2, #0x4
	mov r1, r1, lsr r0
	ldr r0, _020B4BF0 ; =0x040004AC
	str r1, [r0, #0x0]
	add sp, sp, #0xc
	ldmia sp!, {r4-r9,pc}
	.balign 4
_020B4BCC: .word 0xC000C000
_020B4BD0: .word UNK_020FF8AC
_020B4BD4: .word UNK_020FF894
_020B4BD8: .word 0x040004A8
_020B4BDC: .word UNK_020FF8D8
_020B4BE0: .word UNK_020FF8F8
_020B4BE4: .word UNK_020FF928
_020B4BE8: .word UNK_021CED0C
_020B4BEC: .word UNK_020FF8D0
_020B4BF0: .word 0x040004AC
	arm_func_end FUN_020B498C

	arm_func_start FUN_020B4BF4
FUN_020B4BF4: ; 0x020B4BF4
	stmdb sp!, {r4-r6,lr}
	ldr r2, _020B4CD8 ; =UNK_021CED14
	mov r6, r0
	ldr r3, [r2, #0x0]
	mov r4, r1
	ldr r5, [r3, #0x0]
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	ldmeqia sp!, {r4-r6,pc}
	mov r0, #0x1
	str r0, [r3, #0x30]
	ldr r3, [r5, #0x18]
	cmp r3, #0x0
	beq _020B4C38
	ldr r0, [r2, #0x0]
	mov r1, r6
	blx r3
_020B4C38:
	ldr r0, _020B4CD8 ; =UNK_021CED14
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x30]
	cmp r0, #0x0
	beq _020B4CB8
	mvn r0, #0x0
	cmp r4, r0
	beq _020B4C7C
	mov r0, r4
	ldr r4, [r5, #0x14]
	bl FUN_020B469C
	mov r3, #0x1
	mvn r1, r3, lsl r4
	ldr r2, [r0, #0x20]
	and r1, r2, r1
	orr r1, r1, r3, lsl r4
	str r1, [r0, #0x20]
_020B4C7C:
	ldr r0, [r5, #0x14]
	cmp r0, #0x3
	addls pc, pc, r0, lsl #0x2
	b _020B4CB8
	; Jump table
	b _020B4C9C ; case 0
	b _020B4CAC ; case 1
	b _020B4CAC ; case 2
	b _020B4CB8 ; case 3
_020B4C9C:
	mov r0, r5
	mov r1, r6
	bl FUN_020B5090
	b _020B4CB8
_020B4CAC:
	mov r0, r5
	mov r1, r6
	bl FUN_020B53B4
_020B4CB8:
	ldr r2, [r5, #0x1c]
	cmp r2, #0x0
	ldmeqia sp!, {r4-r6,pc}
	ldr r0, _020B4CD8 ; =UNK_021CED14
	mov r1, r6
	ldr r0, [r0, #0x0]
	blx r2
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B4CD8: .word UNK_021CED14
	arm_func_end FUN_020B4BF4

	arm_func_start FUN_020B4CDC
FUN_020B4CDC:
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldr r1, _020B4D9C ; =UNK_021CED14
	mov r5, r0
	ldr r2, [r1, #0x0]
	ldr r4, [r2, #0x0]
	ldr r0, [r4, #0x10]
	cmp r0, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r5,pc}
	mov r0, #0x1
	str r0, [r2, #0x30]
	ldr r2, [r4, #0x18]
	cmp r2, #0x0
	beq _020B4D24
	ldr r0, [r1, #0x0]
	mov r1, r5
	blx r2
_020B4D24:
	ldr r0, _020B4D9C ; =UNK_021CED14
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x30]
	cmp r0, #0x0
	beq _020B4D74
	ldr r0, [r4, #0x14]
	cmp r0, #0x3
	addls pc, pc, r0, lsl #0x2
	b _020B4D74
	; Jump table
	b _020B4D58 ; case 0
	b _020B4D68 ; case 1
	b _020B4D68 ; case 2
	b _020B4D74 ; case 3
_020B4D58:
	mov r0, r4
	mov r1, r5
	bl FUN_020B5090
	b _020B4D74
_020B4D68:
	mov r0, r4
	mov r1, r5
	bl FUN_020B53B4
_020B4D74:
	ldr r2, [r4, #0x1c]
	cmp r2, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r5,pc}
	ldr r0, _020B4D9C ; =UNK_021CED14
	mov r1, r5
	ldr r0, [r0, #0x0]
	blx r2
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B4D9C: .word UNK_021CED14
	arm_func_end FUN_020B4CDC

	arm_func_start FUN_020B4DA0
FUN_020B4DA0: ; 0x020B4DA0
	ldr r0, _020B4E00 ; =UNK_021CED14
	ldr r3, [r0, #0x0]
	ldr r1, [r3, #0x0]
	ldr r1, [r1, #0x14]
	cmp r1, #0x0
	bne _020B4DD8
	ldr r2, _020B4E04 ; =0x04000440
	mov r1, #0x0
	ldr r0, _020B4E08 ; =0x04000448
	str r1, [r2, #0x0]
	mov r1, #0x1
	str r1, [r0, #0x0]
	str r1, [r2, #0x0]
	b _020B4DF0
_020B4DD8:
	mov r2, #0x0
	str r2, [r3, #0x10]
	ldr r1, [r0, #0x0]
	str r2, [r1, #0x2c]
	ldr r0, [r0, #0x0]
	str r2, [r0, #0x28]
_020B4DF0:
	ldr r0, _020B4E00 ; =UNK_021CED14
	mov r1, #0x0
	str r1, [r0, #0x0]
	bx lr
	.balign 4
_020B4E00: .word UNK_021CED14
_020B4E04: .word 0x04000440
_020B4E08: .word 0x04000448
	arm_func_end FUN_020B4DA0

	arm_func_start FUN_020B4E0C
FUN_020B4E0C: ; 0x020B4E0C
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldr r2, _020B4F28 ; =UNK_021CED14
	mov r4, r0
	str r4, [r2, #0x0]
	ldr r0, [r4, #0x0]
	ldr r5, [r0, #0x14]
	cmp r5, #0x0
	bne _020B4ED8
	ldr lr, _020B4F2C ; =0x04000440
	mov r1, #0x0
	ldr r0, _020B4F30 ; =0x04000444
	str r1, [lr, #0x0]
	str r1, [r0, #0x0]
	ldr r12, [r4, #0x0]
	ldr r0, _020B4F34 ; =0x04000470
	ldr r3, [r12, #0x0]
	ldr r12, [r12, #0x4]
	rsb r3, r3, #0x0
	str r3, [r0, #0x0]
	rsb r3, r12, #0x0
	str r3, [r0, #0x0]
	str r1, [r0, #0x0]
	mov r0, #0x1
	str r0, [lr, #0x0]
	ldr r0, [r2, #0x0]
	ldr r5, [r0, #0x8]
	mov r0, r5
	bl FUN_020B19FC
	cmp r0, #0x0
	moveq r0, #0x0
	beq _020B4E98
	mov r0, r5
	mov r1, #0x0
	bl FUN_020B1A14
_020B4E98:
	ldr r1, _020B4F28 ; =UNK_021CED14
	str r0, [r4, #0x14]
	ldr r0, [r1, #0x0]
	mov r1, #0x0
	ldr r5, [r0, #0xc]
	mov r0, r5
	bl FUN_020B19A8
	cmp r0, #0x0
	moveq r0, #0x0
	beq _020B4ECC
	mov r0, r5
	mov r1, #0x0
	bl FUN_020B19C4
_020B4ECC:
	add sp, sp, #0x4
	str r0, [r4, #0x18]
	ldmia sp!, {r4-r5,pc}
_020B4ED8:
	ldr r4, [r4, #0x8]
	mov r1, r5
	mov r0, r4
	bl FUN_020B19FC
	cmp r0, #0x0
	moveq r1, #0x0
	beq _020B4F14
	mov r0, r4
	mov r1, r5
	bl FUN_020B1A14
	ldr r1, [r4, #0x20]
	and r1, r1, #0x700000
	mov r1, r1, asr #0x14
	add r1, r1, #0x5
	mov r1, r0, lsr r1
_020B4F14:
	ldr r0, _020B4F28 ; =UNK_021CED14
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B4F28: .word UNK_021CED14
_020B4F2C: .word 0x04000440
_020B4F30: .word 0x04000444
_020B4F34: .word 0x04000470
	arm_func_end FUN_020B4E0C

	arm_func_start FUN_020B4F38
FUN_020B4F38: ; 0x020B4F38
	cmp r1, #0x0
	ldrne r1, [r0, #0x24]
	orrne r1, r1, #0x1
	strne r1, [r0, #0x24]
	ldreq r1, [r0, #0x24]
	biceq r1, r1, #0x1
	streq r1, [r0, #0x24]
	cmp r2, #0x0
	ldrne r1, [r0, #0x24]
	orrne r1, r1, #0x2
	strne r1, [r0, #0x24]
	ldreq r1, [r0, #0x24]
	biceq r1, r1, #0x2
	streq r1, [r0, #0x24]
	bx lr
	arm_func_end FUN_020B4F38

	arm_func_start FUN_020B4F74
FUN_020B4F74:
	ldr r0, [r0, #0x24]
	ands r0, r0, #0x2
	movne r0, #0x1
	moveq r0, #0x0
	bx lr
	arm_func_end FUN_020B4F74

	arm_func_start FUN_020B4F88
FUN_020B4F88:
	ldr r0, [r0, #0x24]
	ands r0, r0, #0x1
	movne r0, #0x1
	moveq r0, #0x0
	bx lr
	arm_func_end FUN_020B4F88

	arm_func_start FUN_020B4F9C
FUN_020B4F9C: ; 0x020B4F9C
	str r1, [r0, #0x0]
	bx lr
	arm_func_end FUN_020B4F9C

	arm_func_start FUN_020B4FA4
FUN_020B4FA4: ; 0x020B4FA4
	str r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_020B4FA4

	arm_func_start FUN_020B4FAC
FUN_020B4FAC: ; 0x020B4FAC
	ldr r2, _020B4FC0 ; =UNK_021CED14
	ldr r2, [r2, #0x0]
	str r0, [r2, #0x2c]
	str r1, [r2, #0x28]
	bx lr
	.balign 4
_020B4FC0: .word UNK_021CED14
	arm_func_end FUN_020B4FAC

	arm_func_start FUN_020B4FC4
FUN_020B4FC4: ; 0x020B4FC4
	ldr r1, _020B5028 ; =UNK_021CED14
	mov r3, #0x0
	ldr r12, [r1, #0x0]
	mov r1, #0x1000
	str r0, [r12, #0x2c]
	ldr r2, [r0, #0x0]
	str r2, [r12, #0x40]
	ldr r2, [r0, #0x4]
	str r2, [r12, #0x44]
	str r3, [r12, #0x48]
	ldr r2, [r0, #0x8]
	str r2, [r12, #0x4c]
	ldr r2, [r0, #0xc]
	str r2, [r12, #0x50]
	str r3, [r12, #0x54]
	str r3, [r12, #0x58]
	str r3, [r12, #0x5c]
	str r1, [r12, #0x60]
	ldr r1, [r0, #0x10]
	str r1, [r12, #0x64]
	ldr r0, [r0, #0x14]
	str r0, [r12, #0x68]
	ldr r0, [r12, #0x34]
	str r0, [r12, #0x6c]
	bx lr
	.balign 4
_020B5028: .word UNK_021CED14
	arm_func_end FUN_020B4FC4

	arm_func_start FUN_020B502C
FUN_020B502C: ; 0x020B502C
	str r1, [r0, #0x4]
	bx lr
	arm_func_end FUN_020B502C

	arm_func_start FUN_020B5034
FUN_020B5034: ; 0x020B5034
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	arm_func_end FUN_020B5034

	arm_func_start FUN_020B5040
FUN_020B5040: ; 0x020B5040
	str r1, [r0, #0x8]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end FUN_020B5040

	arm_func_start FUN_020B504C
FUN_020B504C: ; 0x020B504C
	stmdb sp!, {r4,lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0x0
	mov r2, #0x70
	bl MIi_CpuClear16
	mov r1, #0x0
	str r1, [r4, #0x0]
	mov r0, #0x2
	str r0, [r4, #0x4]
	str r1, [r4, #0x8]
	str r1, [r4, #0xc]
	str r1, [r4, #0x24]
	mov r0, #0x1
	str r0, [r4, #0x30]
	str r1, [r4, #0x28]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B504C

	arm_func_start FUN_020B5090
FUN_020B5090: ; 0x020B5090
	stmdb sp!, {r4-r10,lr}
	ldr r5, _020B5158 ; =UNK_021CED14
	mov r9, r1
	ldrh r1, [r9, #0x0]
	ldr r2, [r5, #0x0]
	mov r10, r0
	add r7, r2, #0x38
	mov r8, #0x0
	cmp r1, #0x0
	ldmlsia sp!, {r4-r10,pc}
	mov r6, #0x1
	mov r4, #0x6
_020B50C0:
	mul r1, r8, r4
	ldr r0, [r5, #0x0]
	str r6, [r0, #0x30]
	ldr r2, [r9, #0x4]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	strh r0, [r7, #0x0]
	ldrh r0, [r1, #0x2]
	strh r0, [r7, #0x2]
	ldrh r0, [r1, #0x4]
	strh r0, [r7, #0x4]
	ldr r3, [r10, #0x20]
	cmp r3, #0x0
	beq _020B5108
	ldr r0, [r5, #0x0]
	mov r1, r9
	mov r2, r8
	blx r3
_020B5108:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0x30]
	cmp r0, #0x0
	beq _020B5120
	mov r0, r7
	bl FUN_020B515C
_020B5120:
	ldr r3, [r10, #0x24]
	cmp r3, #0x0
	beq _020B513C
	ldr r0, [r5, #0x0]
	mov r1, r9
	mov r2, r8
	blx r3
_020B513C:
	add r0, r8, #0x1
	mov r0, r0, lsl #0x10
	ldrh r1, [r9, #0x0]
	mov r8, r0, lsr #0x10
	cmp r8, r1
	blo _020B50C0
	ldmia sp!, {r4-r10,pc}
	.balign 4
_020B5158: .word UNK_021CED14
	arm_func_end FUN_020B5090

	arm_func_start FUN_020B515C
FUN_020B515C: ; 0x020B515C
	stmdb sp!, {r4-r8,lr}
	sub sp, sp, #0x10
	ldr r1, _020B53A4 ; =UNK_021CED14
	mov r7, r0
	ldr r0, [r1, #0x0]
	add r0, r0, #0x40
	bl G3_LoadMtx43
	ldr r0, _020B53A4 ; =UNK_021CED14
	ldr r0, [r0, #0x0]
	ldr r1, [r0, #0x24]
	cmp r1, #0x0
	beq _020B533C
	ldr r2, [r7, #0x0]
	ldr r1, _020B53A8 ; =0xC000C000
	and r4, r2, r1
	bl FUN_020B4F88
	cmp r0, #0x0
	beq _020B51F4
	ldr r0, [r7, #0x0]
	and r2, r4, #0xc000
	mov r0, r0, lsl #0x7
	mov r3, r0, lsr #0x17
	and r1, r4, #0xc0000000
	mov r1, r1, lsr #0x1e
	ldr r0, _020B53AC ; =UNK_020FF8AC
	mov r2, r2, asr #0xe
	mov r1, r1, lsl #0x1
	add r0, r0, r2, lsl #0x3
	cmp r3, #0xff
	ldrh r1, [r1, r0]
	orrgt r0, r3, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r3, r0, asr #0x10
	add r0, r3, r1
	rsb r0, r0, #0x0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	b _020B5218
_020B51F4:
	ldr r0, [r7, #0x0]
	mov r0, r0, lsl #0x7
	mov r0, r0, lsr #0x17
	cmp r0, #0xff
	orrgt r0, r0, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
_020B5218:
	ldr r0, _020B53A4 ; =UNK_021CED14
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0x0]
	mov r6, r1, asr #0x10
	bl FUN_020B4F74
	cmp r0, #0x0
	beq _020B527C
	and r1, r4, #0xc000
	and r0, r4, #0xc0000000
	ldrb r4, [r7, #0x0]
	ldr r2, _020B53B0 ; =UNK_020FF894
	mov r0, r0, lsr #0x1e
	mov r3, r1, asr #0xe
	mov r1, r0, lsl #0x1
	add r0, r2, r3, lsl #0x3
	cmp r4, #0x7f
	ldrh r1, [r1, r0]
	orrgt r0, r4, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r4, r0, asr #0x10
	add r0, r4, r1
	rsb r0, r0, #0x0
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	b _020B5298
_020B527C:
	ldrb r0, [r7, #0x0]
	cmp r0, #0x7f
	orrgt r0, r0, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
_020B5298:
	ldr r0, _020B53A4 ; =UNK_021CED14
	ldr r1, [r7, #0x0]
	ldr r0, [r0, #0x0]
	mov r5, r1, lsl #0x3
	bl FUN_020B4F88
	ldr r2, [r7, #0x0]
	ldr r1, _020B53A4 ; =UNK_021CED14
	eor r5, r0, r5, lsr #0x1f
	ldr r0, [r1, #0x0]
	mov r8, r2, lsl #0x2
	bl FUN_020B4F74
	ldr r2, [r7, #0x0]
	eor r1, r0, r8, lsr #0x1f
	bic r0, r2, #0x10000000
	str r0, [r7, #0x0]
	ldr r2, [r7, #0x0]
	ldr r3, _020B53A4 ; =UNK_021CED14
	orr r2, r2, r5, lsl #0x1c
	str r2, [r7, #0x0]
	ldr r2, [r7, #0x0]
	mov r0, r6
	bic r2, r2, #0x20000000
	str r2, [r7, #0x0]
	ldr r5, [r7, #0x0]
	mov r2, r4, lsl #0x10
	orr r1, r5, r1, lsl #0x1d
	str r1, [r7, #0x0]
	ldr r5, [r3, #0x0]
	mov r1, r2, asr #0x10
	ldr r4, [r5, #0x8]
	mov r3, r7
	add r2, r4, #0xc
	str r2, [sp, #0x0]
	ldr r4, [r5, #0x14]
	mvn r2, #0x0
	str r4, [sp, #0x4]
	ldr r4, [r5, #0x18]
	str r4, [sp, #0x8]
	bl FUN_020B46B4
	add sp, sp, #0x10
	ldmia sp!, {r4-r8,pc}
_020B533C:
	ldr r2, _020B53A4 ; =UNK_021CED14
	ldr r0, [r7, #0x0]
	ldr r5, [r2, #0x0]
	mov r0, r0, lsl #0x7
	ldr r4, [r5, #0x8]
	mov r0, r0, lsr #0x17
	cmp r0, #0xff
	orrgt r0, r0, #0xff00
	movgt r0, r0, lsl #0x10
	ldrb r1, [r7, #0x0]
	add r4, r4, #0xc
	movgt r0, r0, asr #0x10
	str r4, [sp, #0x0]
	ldr r4, [r5, #0x14]
	cmp r1, #0x7f
	orrgt r1, r1, #0xff00
	movgt r1, r1, lsl #0x10
	str r4, [sp, #0x4]
	ldr r4, [r5, #0x18]
	movgt r1, r1, asr #0x10
	mov r3, r7
	mvn r2, #0x0
	str r4, [sp, #0x8]
	bl FUN_020B46B4
	add sp, sp, #0x10
	ldmia sp!, {r4-r8,pc}
	.balign 4
_020B53A4: .word UNK_021CED14
_020B53A8: .word 0xC000C000
_020B53AC: .word UNK_020FF8AC
_020B53B0: .word UNK_020FF894
	arm_func_end FUN_020B515C

	arm_func_start FUN_020B53B4
FUN_020B53B4: ; 0x020B53B4
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x44
	ldr r2, _020B57B0 ; =UNK_021CED14
	mov r10, r0
	ldr r0, [r2, #0x0]
	mov r11, r1
	ldr r9, [r0, #0x2c]
	ldr r1, _020B57B0 ; =UNK_021CED14
	cmp r9, #0x0
	ldreq sb, _020B57B4 ; =UNK_020FF958
	ldr r3, [r1, #0x0]
	ldr r4, [r9, #0x10]
	str r4, [sp, #0x18]
	ldr r2, [r9, #0x14]
	str r2, [sp, #0x1c]
	ldr r1, [r10, #0x0]
	sub r1, r4, r1
	str r1, [sp, #0x18]
	ldr r1, [r10, #0x4]
	sub r1, r2, r1
	str r1, [sp, #0x1c]
	ldr r2, [r3, #0x24]
	ldr r1, [r3, #0x10]
	cmp r2, #0x0
	str r1, [sp, #0x4]
	bne _020B5430
	ldr r1, [r3, #0x28]
	cmp r1, #0x0
	movne r1, #0x1
	strne r1, [sp, #0x0]
	bne _020B5438
_020B5430:
	mov r1, #0x0
	str r1, [sp, #0x0]
_020B5438:
	ldrh r1, [r11, #0x0]
	add r7, r0, #0x38
	mov r8, #0x0
	cmp r1, #0x0
	addls sp, sp, #0x44
	ldmlsia sp!, {r4-r11,pc}
	mov r0, #0x1
	ldr r4, _020B57B0 ; =UNK_021CED14
	str r8, [sp, #0x14]
	str r0, [sp, #0xc]
_020B5460:
	ldr r2, [r4, #0x0]
	ldr r0, [sp, #0xc]
	mov r1, #0x6
	str r0, [r2, #0x30]
	mul r0, r8, r1
	ldr r1, [r11, #0x4]
	add r2, r1, r0
	ldrh r0, [r1, r0]
	strh r0, [r7, #0x0]
	ldrh r0, [r2, #0x2]
	strh r0, [r7, #0x2]
	ldrh r0, [r2, #0x4]
	strh r0, [r7, #0x4]
	ldr r3, [r10, #0x20]
	cmp r3, #0x0
	beq _020B54B0
	ldr r0, [r4, #0x0]
	mov r1, r11
	mov r2, r8
	blx r3
_020B54B0:
	ldr r0, [r4, #0x0]
	ldr r0, [r0, #0x30]
	cmp r0, #0x0
	beq _020B5790
	ldr r0, [sp, #0x0]
	ldr r1, [r7, #0x4]
	cmp r0, #0x0
	mov r0, #0x400
	rsb r0, r0, #0x0
	and r2, r1, r0
	ldr r0, [sp, #0x4]
	mov r1, r1, lsl #0x16
	add r1, r0, r1, lsr #0x16
	ldr r0, _020B57B8 ; =0x000003FF
	and r0, r1, r0
	orr r0, r2, r0
	str r0, [r7, #0x4]
	beq _020B5600
	ldr r0, [r10, #0x14]
	ldr lr, [r4, #0x0]
	sub r1, r0, #0x1
	ldr r0, [r7, #0x0]
	ldr r6, [lr, #0x28]
	mov r2, r0, lsl #0x2
	mov r2, r2, lsr #0x1f
	mov r2, r2, lsl #0x1
	mov r0, r0, lsl #0x3
	orr r5, r2, r0, lsr #0x1f
	add r0, r6, r5, lsl #0x2
	add r0, r0, r1, lsl #0x1
	ldrh r1, [r0, #0x10]
	ldr r0, _020B57BC ; =0x0000FFFF
	str r1, [sp, #0x8]
	cmp r1, r0
	bne _020B55CC
	cmp r5, #0x0
	bne _020B5558
	ldr r1, [lr, #0x20]
	mov r0, r6
	blx r1
	str r0, [sp, #0x8]
	b _020B55B4
_020B5558:
	ands r0, r5, #0x1
	add r12, sp, #0x30
	ldmia r6, {r0-r3}
	stmia r12, {r0-r3}
	beq _020B5584
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	rsb r1, r1, #0x0
	str r1, [sp, #0x30]
	rsb r0, r0, #0x0
	str r0, [sp, #0x34]
_020B5584:
	ands r0, r5, #0x2
	beq _020B55A4
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	rsb r1, r1, #0x0
	str r1, [sp, #0x38]
	rsb r0, r0, #0x0
	str r0, [sp, #0x3c]
_020B55A4:
	ldr r1, [lr, #0x20]
	add r0, sp, #0x30
	blx r1
	str r0, [sp, #0x8]
_020B55B4:
	ldr r1, [r10, #0x14]
	add r0, r6, r5, lsl #0x2
	sub r1, r1, #0x1
	add r1, r0, r1, lsl #0x1
	ldr r0, [sp, #0x8]
	strh r0, [r1, #0x10]
_020B55CC:
	ldr r1, [r9, #0x0]
	add r0, sp, #0x20
	str r1, [sp, #0x20]
	ldr r2, [r9, #0x4]
	mov r1, r7
	str r2, [sp, #0x24]
	ldr r3, [r9, #0x8]
	add r2, sp, #0x18
	str r3, [sp, #0x28]
	ldr r3, [r9, #0xc]
	str r3, [sp, #0x2c]
	bl FUN_020B57D8
	b _020B5750
_020B5600:
	ldr r0, _020B57C0 ; =0x0000FFFE
	str r0, [sp, #0x8]
	ldr r0, [r4, #0x0]
	ldr r1, [r0, #0x24]
	cmp r1, #0x0
	beq _020B5714
	ldr r2, [r7, #0x0]
	ldr r1, _020B57C4 ; =0xC000C000
	mov r6, r2, lsl #0x3
	and r5, r2, r1
	bl FUN_020B4F88
	ldr r1, [r7, #0x0]
	eor r6, r0, r6, lsr #0x1f
	mov r1, r1, lsl #0x2
	ldr r0, [r4, #0x0]
	str r1, [sp, #0x10]
	bl FUN_020B4F74
	ldr r1, [sp, #0x10]
	eor r0, r0, r1, lsr #0x1f
	ldr r1, [r7, #0x0]
	bic r1, r1, #0x10000000
	str r1, [r7, #0x0]
	ldr r1, [r7, #0x0]
	orr r1, r1, r6, lsl #0x1c
	str r1, [r7, #0x0]
	ldr r1, [r7, #0x0]
	bic r1, r1, #0x20000000
	str r1, [r7, #0x0]
	ldr r1, [r7, #0x0]
	orr r0, r1, r0, lsl #0x1d
	str r0, [r7, #0x0]
	ldr r0, [r4, #0x0]
	bl FUN_020B4F88
	cmp r0, #0x0
	beq _020B56D4
	and r1, r5, #0xc000
	mov r2, r1, asr #0xe
	ldr r1, _020B57C8 ; =UNK_020FF8AC
	and r3, r5, #0xc0000000
	mov r3, r3, lsr #0x1e
	add r2, r1, r2, lsl #0x3
	mov r3, r3, lsl #0x1
	ldr r0, [r7, #0x0]
	ldr r1, _020B57CC ; =0xFE00FFFF
	ldrh r2, [r3, r2]
	and r1, r0, r1
	mov r0, r0, lsl #0x7
	add r0, r2, r0, lsr #0x17
	rsb r2, r0, #0x0
	ldr r0, _020B57D0 ; =0x000001FF
	and r0, r2, r0
	orr r0, r1, r0, lsl #0x10
	str r0, [r7, #0x0]
_020B56D4:
	ldr r0, [r4, #0x0]
	bl FUN_020B4F74
	cmp r0, #0x0
	beq _020B5714
	and r1, r5, #0xc000
	mov r3, r1, asr #0xe
	and r1, r5, #0xc0000000
	mov r1, r1, lsr #0x1e
	mov r2, r1, lsl #0x1
	ldr r1, _020B57D4 ; =UNK_020FF894
	ldrb r0, [r7, #0x0]
	add r1, r1, r3, lsl #0x3
	ldrh r1, [r2, r1]
	add r0, r0, r1
	rsb r0, r0, #0x0
	strb r0, [r7, #0x0]
_020B5714:
	ldr r2, [r7, #0x0]
	ldr r0, _020B57CC ; =0xFE00FFFF
	ldr r1, [sp, #0x18]
	and r0, r2, r0
	mov r2, r2, lsl #0x7
	mov r2, r2, lsr #0x17
	add r2, r2, r1, asr #0xc
	ldr r1, _020B57D0 ; =0x000001FF
	and r1, r2, r1
	orr r0, r0, r1, lsl #0x10
	str r0, [r7, #0x0]
	ldrb r1, [r7, #0x0]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0, asr #0xc
	strb r0, [r7, #0x0]
_020B5750:
	ldr r3, [r4, #0x0]
	ldr r1, [sp, #0x8]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0x1c]
	mov r0, r7
	blx r3
	cmp r0, #0x1
	addne sp, sp, #0x44
	ldmneia sp!, {r4-r11,pc}
	ldr r3, [r10, #0x24]
	cmp r3, #0x0
	beq _020B5790
	ldr r0, [r4, #0x0]
	mov r1, r11
	mov r2, r8
	blx r3
_020B5790:
	add r0, r8, #0x1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	ldrh r0, [r11, #0x0]
	cmp r8, r0
	blo _020B5460
	add sp, sp, #0x44
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B57B0: .word UNK_021CED14
_020B57B4: .word UNK_020FF958
_020B57B8: .word 0x000003FF
_020B57BC: .word 0x0000FFFF
_020B57C0: .word 0x0000FFFE
_020B57C4: .word 0xC000C000
_020B57C8: .word UNK_020FF8AC
_020B57CC: .word 0xFE00FFFF
_020B57D0: .word 0x000001FF
_020B57D4: .word UNK_020FF894
	arm_func_end FUN_020B53B4

	arm_func_start FUN_020B57D8
FUN_020B57D8: ; 0x020B57D8
	stmdb sp!, {r4-r8,lr}
	sub sp, sp, #0x10
	ldr r4, [r1, #0x0]
	ldr r3, _020B5A9C ; =0x01FF0000
	and r3, r4, r3
	mov r3, r3, lsr #0x10
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	cmp r3, #0xff
	orrgt r3, r3, #0xff00
	movgt r3, r3, lsl #0x10
	movgt r3, r3, asr #0x10
	mov r3, r3, lsl #0xc
	str r3, [sp, #0x0]
	ldr r3, [r1, #0x0]
	and r3, r3, #0xff
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	cmp r3, #0x7f
	orrgt r3, r3, #0xff00
	movgt r3, r3, lsl #0x10
	movgt r3, r3, asr #0x10
	mov r3, r3, lsl #0xc
	str r3, [sp, #0x4]
	ldr r5, [r1, #0x0]
	and r4, r5, #0x300
	cmp r4, #0x100
	beq _020B5858
	cmp r4, #0x300
	beq _020B5858
	and r3, r5, #0x30000000
	orr r4, r4, r3
_020B5858:
	cmp r4, #0x300
	bne _020B58AC
	ldr r3, _020B5AA0 ; =0xC000C000
	ldr r4, _020B5AA4 ; =UNK_020FF8AC
	and r3, r5, r3
	and r5, r3, #0xc0000000
	and r3, r3, #0xc000
	mov r6, r5, lsr #0x1e
	mov r5, r3, asr #0xe
	ldr r3, _020B5AA8 ; =UNK_020FF894
	mov r6, r6, lsl #0x1
	add r4, r4, r5, lsl #0x3
	add r3, r3, r5, lsl #0x3
	ldrh r5, [r6, r4]
	ldr r7, [sp, #0x0]
	ldrh r3, [r6, r3]
	ldr r4, [sp, #0x4]
	add r5, r7, r5, lsl #0xb
	add r3, r4, r3, lsl #0xb
	str r5, [sp, #0x0]
	str r3, [sp, #0x4]
_020B58AC:
	ldr r5, [r0, #0x8]
	ldr r4, [sp, #0x4]
	add r3, sp, #0x0
	smull r8, r7, r5, r4
	cmp r3, r3
	ldr r6, [r0, #0x0]
	mov r4, #0x1000
	addeq r3, sp, #0x8
	adds r8, r8, r4
	ldr r5, [sp, #0x0]
	adc r7, r7, #0x0
	smlal r8, r7, r6, r5
	mov r5, r8, lsr #0xc
	orr r5, r5, r7, lsl #0x14
	str r5, [r3, #0x0]
	ldr r7, [r0, #0xc]
	ldr r6, [sp, #0x4]
	ldr r5, [r0, #0x4]
	smull r8, r6, r7, r6
	adds r7, r8, r4
	ldr r4, [sp, #0x0]
	adc r6, r6, #0x0
	smlal r7, r6, r5, r4
	mov r5, r7, lsr #0xc
	add r4, sp, #0x8
	orr r5, r5, r6, lsl #0x14
	str r5, [r3, #0x4]
	cmp r3, r4
	ldreq r3, [sp, #0xc]
	ldreq r4, [sp, #0x8]
	streq r3, [sp, #0x4]
	ldr r3, _020B5AAC ; =UNK_021CED14
	streq r4, [sp, #0x0]
	ldr r3, [r3, #0x0]
	ldr r3, [r3, #0x4]
	cmp r3, #0x0
	beq _020B597C
	cmp r3, #0x2
	moveq r5, #0x300
	movne r5, #0x100
	cmp r5, #0x100
	ldreq r4, [r1, #0x0]
	ldreq r3, _020B5AB0 ; =0xC1FFFCFF
	andeq r3, r4, r3
	orreq r3, r3, r5
	streq r3, [r1, #0x0]
	beq _020B597C
	ldr r4, [r1, #0x0]
	ldr r3, _020B5AB0 ; =0xC1FFFCFF
	and r3, r4, r3
	orr r3, r3, r5
	str r3, [r1, #0x0]
_020B597C:
	ldr r6, [r1, #0x0]
	and r5, r6, #0x300
	cmp r5, #0x100
	beq _020B599C
	cmp r5, #0x300
	beq _020B599C
	and r3, r6, #0x30000000
	orr r5, r5, r3
_020B599C:
	ldr r3, _020B5AA0 ; =0xC000C000
	ldr r4, _020B5AA4 ; =UNK_020FF8AC
	and r3, r6, r3
	and r6, r3, #0xc0000000
	and r3, r3, #0xc000
	mov lr, r3, asr #0xe
	mov r6, r6, lsr #0x1e
	mov r3, r6, lsl #0x1
	add r4, r4, lr, lsl #0x3
	ldrh r4, [r3, r4]
	ldr r6, [r0, #0x0]
	ldr r8, _020B5AA8 ; =UNK_020FF894
	mov r12, r4, asr #0x1
	mov r4, r12, lsl #0xc
	rsb r7, r4, #0x0
	mla r7, r6, r12, r7
	add lr, r8, lr, lsl #0x3
	ldrh r3, [r3, lr]
	ldr r6, [r0, #0x8]
	ldr lr, [sp, #0x0]
	mov r3, r3, asr #0x1
	mla r7, r6, r3, r7
	add r6, lr, r7
	str r6, [sp, #0x0]
	mov lr, r3, lsl #0xc
	ldr r6, [r0, #0x4]
	rsb r7, lr, #0x0
	mla r7, r6, r12, r7
	ldr r0, [r0, #0xc]
	ldr r6, [sp, #0x4]
	mla r3, r0, r3, r7
	add r0, r6, r3
	str r0, [sp, #0x4]
	cmp r5, #0x300
	moveq r0, #0x1
	movne r0, #0x0
	cmp r0, #0x0
	beq _020B5A4C
	ldr r3, [sp, #0x0]
	ldr r0, [sp, #0x4]
	sub r3, r3, r4
	sub r0, r0, lr
	str r3, [sp, #0x0]
	str r0, [sp, #0x4]
_020B5A4C:
	ldr r4, [sp, #0x0]
	ldr r0, [r2, #0x0]
	ldr r3, [sp, #0x4]
	add r5, r4, r0
	str r5, [sp, #0x0]
	ldr r2, [r2, #0x4]
	ldr r0, _020B5AB4 ; =0x000001FF
	add r2, r3, r2
	str r2, [sp, #0x4]
	mov r3, r2, asr #0xc
	ldr r4, [r1, #0x0]
	ldr r2, _020B5AB8 ; =0xFE00FF00
	and r3, r3, #0xff
	and r2, r4, r2
	and r4, r0, r5, asr #0xc
	orr r0, r2, r3
	orr r0, r0, r4, lsl #0x10
	str r0, [r1, #0x0]
	add sp, sp, #0x10
	ldmia sp!, {r4-r8,pc}
	.balign 4
_020B5A9C: .word 0x01FF0000
_020B5AA0: .word 0xC000C000
_020B5AA4: .word UNK_020FF8AC
_020B5AA8: .word UNK_020FF894
_020B5AAC: .word UNK_021CED14
_020B5AB0: .word 0xC1FFFCFF
_020B5AB4: .word 0x000001FF
_020B5AB8: .word 0xFE00FF00
	arm_func_end FUN_020B57D8

	arm_func_start FUN_020B5ABC
FUN_020B5ABC: ; 0x020B5ABC
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0xc
	add r5, sp, #0x0
	mov r4, #0x0
	str r4, [r5, #0x0]
	str r4, [r5, #0x4]
	mov r8, r2
	ldr r2, [sp, #0x28]
	mov r5, r0
	mov r9, r1
	mov r4, r3
	cmp r2, #0x0
	mov r7, #0x1
	beq _020B5B24
	add r6, sp, #0x28
_020B5AF8:
	mov r0, r9
	mov r1, r8
	mov r3, r6
	bl FUN_020B5BC8
	ldr r1, [sp, #0x0]
	ldr r2, [sp, #0x28]
	cmp r0, r1
	strgt r0, [sp, #0x0]
	add r7, r7, #0x1
	cmp r2, #0x0
	bne _020B5AF8
_020B5B24:
	ldr r0, [r9, #0x0]
	sub r2, r7, #0x1
	ldrsb r1, [r0, #0x1]
	ldr r0, [sp, #0x0]
	add r1, r4, r1
	mul r1, r2, r1
	sub r1, r1, r4
	str r1, [sp, #0x4]
	str r0, [r5, #0x0]
	str r1, [r5, #0x4]
	add sp, sp, #0xc
	ldmia sp!, {r4-r9,pc}
	arm_func_end FUN_020B5ABC

	arm_func_start FUN_020B5B54
FUN_020B5B54: ; 0x020B5B54
	stmdb sp!, {r4-r8,lr}
	sub sp, sp, #0x10
	str r2, [sp, #0x0]
	add r3, sp, #0x4
	mov r2, #0x0
	str r2, [r3, #0x0]
	mov r8, r0
	str r2, [r3, #0x4]
	ldr r7, [r8, #0x4]
	add r0, sp, #0x0
	mov r5, r1
	mov r4, #0x1
	blx r7
	cmp r0, #0x0
	beq _020B5BAC
	add r6, sp, #0x0
_020B5B94:
	cmp r0, #0xa
	mov r0, r6
	addeq r4, r4, #0x1
	blx r7
	cmp r0, #0x0
	bne _020B5B94
_020B5BAC:
	ldr r0, [r8, #0x0]
	ldrsb r0, [r0, #0x1]
	add r0, r5, r0
	mul r0, r4, r0
	sub r0, r0, r5
	add sp, sp, #0x10
	ldmia sp!, {r4-r8,pc}
	arm_func_end FUN_020B5B54

	arm_func_start FUN_020B5BC8
FUN_020B5BC8:
	stmdb sp!, {r4-r10,lr}
	sub sp, sp, #0x8
	mov r8, r0
	str r2, [sp, #0x0]
	ldr r4, [r8, #0x4]
	add r0, sp, #0x0
	mov r7, r1
	mov r6, r3
	mov r5, #0x0
	blx r4
	movs r1, r0
	beq _020B5C58
	ldr sb, _020B5C84 ; =0x0000FFFF
	add r10, sp, #0x0
_020B5C00:
	cmp r1, #0xa
	beq _020B5C58
	mov r0, r8
	bl FUN_020B5CE4
	mov r1, r0
	cmp r1, r9
	ldreq r0, [r8, #0x0]
	ldreqh r1, [r0, #0x2]
	mov r0, r8
	bl FUN_020B5C88
	ldrh r1, [r8, #0x8]
	cmp r1, #0x0
	ldrnesb r1, [r0, #0x0]
	ldrneb r0, [r0, #0x1]
	addne r0, r1, r0
	ldreqsb r0, [r0, #0x2]
	add r1, r7, r0
	mov r0, r10
	add r5, r5, r1
	blx r4
	movs r1, r0
	bne _020B5C00
_020B5C58:
	cmp r6, #0x0
	beq _020B5C70
	cmp r1, #0xa
	ldreq r0, [sp, #0x0]
	movne r0, #0x0
	str r0, [r6, #0x0]
_020B5C70:
	cmp r5, #0x0
	subgt r5, r5, r7
	mov r0, r5
	add sp, sp, #0x8
	ldmia sp!, {r4-r10,pc}
	.balign 4
_020B5C84: .word 0x0000FFFF
	arm_func_end FUN_020B5BC8

	arm_func_start FUN_020B5C88
FUN_020B5C88: ; 0x020B5C88
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r3, [r0, #0x0]
	ldr lr, [r3, #0xc]
	cmp lr, #0x0
	beq _020B5CD8
_020B5CA0:
	ldrh r12, [lr, #0x0]
	cmp r12, r1
	bhi _020B5CCC
	ldrh r2, [lr, #0x2]
	cmp r1, r2
	ldrlsh r2, [r0, #0xa]
	addls r3, lr, #0x8
	subls r0, r1, r12
	mlals r0, r2, r0, r3
	addls sp, sp, #0x4
	ldmlsia sp!, {pc}
_020B5CCC:
	ldr lr, [lr, #0x4]
	cmp lr, #0x0
	bne _020B5CA0
_020B5CD8:
	add r0, r3, #0x4
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020B5C88

	arm_func_start FUN_020B5CE4
FUN_020B5CE4: ; 0x020B5CE4
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x10]
	cmp r0, #0x0
	beq _020B5D2C
_020B5CFC:
	ldrh r2, [r0, #0x0]
	cmp r2, r1
	bhi _020B5D20
	ldrh r2, [r0, #0x2]
	cmp r1, r2
	bhi _020B5D20
	bl FUN_020B5D7C
	add sp, sp, #0x4
	ldmia sp!, {pc}
_020B5D20:
	ldr r0, [r0, #0x8]
	cmp r0, #0x0
	bne _020B5CFC
_020B5D2C:
	ldr r0, _020B5D38 ; =0x0000FFFF
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B5D38: .word 0x0000FFFF
	arm_func_end FUN_020B5CE4

	arm_func_start FUN_020B5D3C
FUN_020B5D3C: ; 0x020B5D3C
	stmdb sp!, {r4,lr}
	mov r4, r0
	mov r0, r1
	mov r1, r4
	bl FUN_020B7558
	sub r0, r0, #0x1
	strh r0, [r4, #0x8]
	ldrh r0, [r4, #0x8]
	cmp r0, #0x0
	movne r1, #0x2
	moveq r1, #0x3
	ldr r0, _020B5D78 ; =FUN_020B7718
	strh r1, [r4, #0xa]
	str r0, [r4, #0x4]
	ldmia sp!, {r4,pc}
	.balign 4
_020B5D78: .word FUN_020B7718
	arm_func_end FUN_020B5D3C

	arm_func_start FUN_020B5D7C
FUN_020B5D7C: ; 0x020B5D7C
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldrh r3, [r0, #0x4]
	ldr r2, _020B5E4C ; =0x0000FFFF
	cmp r3, #0x0
	beq _020B5DA8
	cmp r3, #0x1
	beq _020B5DC4
	cmp r3, #0x2
	beq _020B5DD8
	b _020B5E40
_020B5DA8:
	ldrh r2, [r0, #0x0]
	ldrh r3, [r0, #0xc]
	sub r0, r1, r2
	add r0, r3, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	b _020B5E40
_020B5DC4:
	ldrh r2, [r0, #0x0]
	sub r1, r1, r2
	add r0, r0, r1, lsl #0x1
	ldrh r2, [r0, #0xc]
	b _020B5E40
_020B5DD8:
	ldrh r3, [r0, #0xc]
	add r0, r0, #0xc
	add r0, r0, #0x2
	sub r3, r3, #0x1
	add lr, r0, r3, lsl #0x2
	cmp r0, lr
	bhi _020B5E40
_020B5DF4:
	sub r12, lr, r0
	mov r3, r12, asr #0x1
	add r3, r12, r3, lsr #0x1e
	mov r3, r3, asr #0x2
	add r3, r3, r3, lsr #0x1f
	mov r12, r3, asr #0x1
	mov r3, r12, lsl #0x2
	ldrh r3, [r0, r3]
	add r12, r0, r12, lsl #0x2
	cmp r3, r1
	addcc r0, r12, #0x4
	blo _020B5E38
	cmp r1, r3
	subcc lr, r12, #0x4
	blo _020B5E38
	ldrh r2, [r12, #0x2]
	b _020B5E40
_020B5E38:
	cmp r0, lr
	bls _020B5DF4
_020B5E40:
	mov r0, r2
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B5E4C: .word 0x0000FFFF
	arm_func_end FUN_020B5D7C

	arm_func_start FUN_020B5E50
FUN_020B5E50: ; 0x020B5E50
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x3c
	mov r7, r0
	mov r0, r1
	cmp r0, #0x8
	ldr r0, [sp, #0x60]
	str r1, [sp, #0x10]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0x6c]
	str r2, [sp, #0x14]
	str r0, [sp, #0x6c]
	ldrlt r0, [sp, #0x10]
	mov r11, r3
	ldr r6, [sp, #0x64]
	ldr r5, [sp, #0x68]
	movge r2, #0x3
	clzlt r0, r0
	rsblt r2, r0, #0x1f
	ldr r0, [sp, #0x14]
	cmp r0, #0x8
	ldrlt r0, [sp, #0x14]
	movge r1, #0x3
	clzlt r0, r0
	rsblt r1, r0, #0x1f
	ldr r0, _020B6170 ; =UNK_020FF970
	mvn r3, #0x0
	add r1, r0, r1, lsl #0x3
	add r0, r1, r2, lsl #0x1
	ldrb r4, [r1, r2, lsl #0x1]
	ldrb r1, [r0, #0x1]
	ldr r2, [sp, #0x14]
	cmp r6, #0x0
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x10]
	and r1, r1, r3, lsl r4
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	and r1, r2, r3, lsl r1
	str r1, [sp, #0x20]
	moveq r1, #0x1
	streq r1, [sp, #0x24]
	movne r1, #0x2
	strne r1, [sp, #0x24]
	mov r1, #0x0
	str r1, [sp, #0x28]
	bl FUN_020B704C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r10, r1, asr r4
	ldr r1, [sp, #0x18]
	mov r1, r2, asr r1
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x24]
	mov r2, r1, lsl r4
	ldr r1, [sp, #0x18]
	mov r2, r2, lsl r1
	ldr r1, [sp, #0x6c]
	mov r9, r2, asr r1
	mov r1, #0x0
	str r1, [sp, #0x30]
	str r1, [sp, #0x34]
	b _020B5FE8
_020B5F48:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x18]
	ldr r8, [sp, #0x34]
	mov r2, r2, lsl r1
	ldr r1, [sp, #0x60]
	add lr, r1, r2, lsl #0x3
	b _020B5FD4
_020B5F64:
	mov r1, r8, lsl r4
	add r2, r11, r1, lsl #0x3
	ldr r1, _020B6174 ; =0x000001FF
	ldr r3, [r7, #0x0]
	and r12, r2, r1
	ldr r1, _020B6178 ; =0xFE00FF00
	and r2, lr, #0xff
	and r1, r3, r1
	orr r1, r1, r2
	orr r1, r1, r12, lsl #0x10
	str r1, [r7, #0x0]
	ldr r3, [r7, #0x0]
	ldr r1, _020B617C ; =0x3FFF3FFF
	mov r2, #0x400
	and r1, r3, r1
	orr r1, r1, r0
	str r1, [r7, #0x0]
	rsb r1, r2, #0x0
	ldrh r2, [r7, #0x4]
	add r8, r8, #0x1
	and r1, r2, r1
	orr r1, r1, r5
	strh r1, [r7, #0x4]
	ldr r1, [r7, #0x0]
	add r5, r5, r9
	bic r1, r1, #0x2000
	orr r1, r1, r6, lsl #0xd
	str r1, [r7], #0x8
_020B5FD4:
	cmp r8, r10
	blt _020B5F64
	ldr r1, [sp, #0x30]
	add r1, r1, #0x1
	str r1, [sp, #0x30]
_020B5FE8:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	cmp r2, r1
	blt _020B5F48
	ldr r0, [sp, #0x28]
	mla r0, r10, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bhs _020B6078
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x1c]
	str r6, [sp, #0x4]
	sub r4, r1, r0
	ldr r1, [sp, #0x6c]
	str r5, [sp, #0x8]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	add r3, r11, r1, lsl #0x3
	mov r0, r7
	mov r1, r4
	bl FUN_020B5E50
	ldr r1, [sp, #0x24]
	add r7, r7, r0, lsl #0x3
	mul r2, r1, r4
	ldr r1, [sp, #0x20]
	mul r2, r1, r2
	ldr r1, [sp, #0x6c]
	add r5, r5, r2, lsr r1
	ldr r1, [sp, #0x28]
	add r0, r1, r0
	str r0, [sp, #0x28]
_020B6078:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _020B60F0
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x20]
	mov r3, r11
	add r0, r1, r0, lsl #0x3
	str r0, [sp, #0x0]
	str r6, [sp, #0x4]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x20]
	str r5, [sp, #0x8]
	sub r4, r1, r0
	ldr r1, [sp, #0x6c]
	mov r0, r7
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	mov r2, r4
	bl FUN_020B5E50
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	add r7, r7, r0, lsl #0x3
	mul r1, r2, r1
	mul r2, r4, r1
	ldr r1, [sp, #0x6c]
	add r5, r5, r2, lsr r1
	ldr r1, [sp, #0x28]
	add r0, r1, r0
	str r0, [sp, #0x28]
_020B60F0:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bhs _020B6164
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bhs _020B6164
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x10]
	add r0, r1, r0, lsl #0x3
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	str r0, [sp, #0x0]
	sub r1, r2, r1
	ldr r2, [sp, #0x20]
	str r6, [sp, #0x4]
	sub r2, r3, r2
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x6c]
	str r5, [sp, #0x8]
	mov r0, r7
	add r3, r11, r3, lsl #0x3
	str r4, [sp, #0xc]
	bl FUN_020B5E50
	ldr r1, [sp, #0x28]
	add r0, r1, r0
	str r0, [sp, #0x28]
_020B6164:
	ldr r0, [sp, #0x28]
	add sp, sp, #0x3c
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B6170: .word UNK_020FF970
_020B6174: .word 0x000001FF
_020B6178: .word 0xFE00FF00
_020B617C: .word 0x3FFF3FFF
	arm_func_end FUN_020B5E50

	arm_func_start FUN_020B6180
FUN_020B6180: ; 0x020B6180
	stmdb sp!, {r4-r6,lr}
	mov r3, r0, lsr #0x3
	mov r6, r1, lsr #0x3
	mul r12, r3, r6
	and r2, r0, #0x4
	and lr, r0, #0x2
	and r0, r0, #0x1
	add r4, r0, lr, lsr #0x1
	mov r5, r2, lsr #0x2
	and r0, r1, #0x4
	add lr, r12, #0x0
	add r12, r5, r4, lsl #0x1
	mla r12, r6, r12, lr
	and lr, r1, #0x2
	and r1, r1, #0x1
	add lr, r1, lr, lsr #0x1
	mov r1, r0, lsr #0x2
	add r1, r1, lr, lsl #0x1
	mla r12, r3, r1, r12
	add r1, r4, r2, lsr #0x2
	add r0, lr, r0, lsr #0x2
	mla r0, r1, r0, r12
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020B6180

	arm_func_start FUN_020B61DC
FUN_020B61DC: ; 0x020B61DC
	stmdb sp!, {r4-r8,lr}
	ldr r12, [sp, #0x1c]
	ldr r8, [sp, #0x18]
	mov r12, r12, lsl #0x1c
	mov r4, r12, lsr #0x10
	mov r6, #0x0
	cmp r2, #0x0
	ldmleia sp!, {r4-r8,pc}
	mov lr, r3, lsl #0x1
	mov r12, r6
_020B6204:
	mov r5, r0
	mov r7, r12
	cmp r1, #0x0
	ble _020B622C
_020B6214:
	orr r3, r4, r8
	add r7, r7, #0x1
	cmp r7, r1
	add r8, r8, #0x1
	strh r3, [r5], #0x2
	blt _020B6214
_020B622C:
	add r6, r6, #0x1
	cmp r6, r2
	add r0, r0, lr
	blt _020B6204
	ldmia sp!, {r4-r8,pc}
	arm_func_end FUN_020B61DC

	arm_func_start FUN_020B6240
FUN_020B6240: ; 0x020B6240
	stmdb sp!, {r4-r8,lr}
	sub sp, sp, #0x8
	ldr r5, [sp, #0x24]
	ldr lr, [sp, #0x20]
	cmp r5, #0x20
	ldr r12, [sp, #0x28]
	bgt _020B6280
	mla r4, r5, lr, r3
	ldr lr, [sp, #0x2c]
	str r12, [sp, #0x0]
	mov r3, r5
	add r0, r0, r4, lsl #0x1
	str lr, [sp, #0x4]
	bl FUN_020B61DC
	add sp, sp, #0x8
	ldmia sp!, {r4-r8,pc}
_020B6280:
	ldr r4, [sp, #0x2c]
	add r7, lr, r2
	mov r2, r4, lsl #0x1c
	cmp lr, r7
	add r8, r3, r1
	mov r4, r2, lsr #0x10
	addge sp, sp, #0x8
	ldmgeia sp!, {r4-r8,pc}
_020B62A0:
	cmp lr, #0x20
	movlt r1, lr
	addge r1, lr, #0x20
	mov r6, r3
	cmp r3, r8
	add r5, r0, r1, lsl #0x6
	bge _020B62E4
_020B62BC:
	cmp r6, #0x20
	movlt r1, r6
	addge r1, r6, #0x3e0
	orr r2, r4, r12
	mov r1, r1, lsl #0x1
	add r6, r6, #0x1
	strh r2, [r5, r1]
	cmp r6, r8
	add r12, r12, #0x1
	blt _020B62BC
_020B62E4:
	add lr, lr, #0x1
	cmp lr, r7
	blt _020B62A0
	add sp, sp, #0x8
	ldmia sp!, {r4-r8,pc}
	arm_func_end FUN_020B6240

	arm_func_start FUN_020B62F8
FUN_020B62F8: ; 0x020B62F8
	stmdb sp!, {r4-r6,lr}
	sub sp, sp, #0x18
	cmp r2, #0x8
	movlt r4, r2
	movge r12, #0x3
	clzlt r4, r4
	rsblt r12, r4, #0x1f
	cmp r3, #0x8
	movlt r4, r3
	movge r6, #0x3
	clzlt r4, r4
	rsblt r6, r4, #0x1f
	ldr r4, _020B6378 ; =UNK_020FF970
	ldr r5, [sp, #0x28]
	add r4, r4, r6, lsl #0x3
	ldrb r6, [r4, r12, lsl #0x1]
	add r12, r4, r12, lsl #0x1
	ldr r4, _020B637C ; =FUN_020B6908
	strb r6, [sp, #0x14]
	ldrb r6, [r12, #0x1]
	ldr lr, _020B6380 ; =FUN_020B68AC
	ldr ip, _020B6384 ; =FUN_020B64C0
	strb r6, [sp, #0x15]
	str r5, [sp, #0x0]
	str r4, [sp, #0x4]
	str lr, [sp, #0x8]
	str r12, [sp, #0xc]
	ldr r12, [sp, #0x14]
	str r12, [sp, #0x10]
	bl FUN_020B6488
	add sp, sp, #0x18
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B6378: .word UNK_020FF970
_020B637C: .word FUN_020B6908
_020B6380: .word FUN_020B68AC
_020B6384: .word FUN_020B64C0
	arm_func_end FUN_020B62F8

	arm_func_start FUN_020B6388
FUN_020B6388: ; 0x020B6388
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr lr, [sp, #0x18]
	ldr ip, _020B63C0 ; =FUN_020B6B10
	str lr, [sp, #0x0]
	ldr lr, _020B63C4 ; =FUN_020B68AC
	str r12, [sp, #0x4]
	ldr ip, _020B63C8 ; =FUN_020B66D4
	str lr, [sp, #0x8]
	str r12, [sp, #0xc]
	str r2, [sp, #0x10]
	bl FUN_020B6488
	add sp, sp, #0x14
	ldmia sp!, {pc}
	.balign 4
_020B63C0: .word FUN_020B6B10
_020B63C4: .word FUN_020B68AC
_020B63C8: .word FUN_020B66D4
	arm_func_end FUN_020B6388

	arm_func_start FUN_020B63CC
FUN_020B63CC: ; 0x020B63CC
	stmdb sp!, {r4-r8,lr}
	sub sp, sp, #0x10
	mov r7, r1
	ldrh r1, [sp, #0x2c]
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl FUN_020B5CE4
	ldr r1, _020B6484 ; =0x0000FFFF
	mov r4, r0
	cmp r4, r1
	ldreq r0, [r7, #0x0]
	ldreqh r4, [r0, #0x2]
	mov r0, r7
	mov r1, r4
	bl FUN_020B5C88
	str r0, [sp, #0x8]
	ldr r0, [r7, #0x0]
	ldr r2, [sp, #0x28]
	ldr r0, [r0, #0x8]
	add r1, sp, #0x8
	ldrh r3, [r0, #0x2]
	add r12, r0, #0x8
	mov r0, r8
	mla r3, r4, r3, r12
	str r3, [sp, #0xc]
	str r2, [sp, #0x0]
	str r1, [sp, #0x4]
	ldr r1, [sp, #0x8]
	ldr r4, [r8, #0x14]
	ldrsb r2, [r1, #0x0]
	mov r1, r7
	mov r3, r5
	add r2, r6, r2
	blx r4
	ldrh r0, [r7, #0x8]
	cmp r0, #0x0
	ldrne r0, [sp, #0x8]
	ldrnesb r1, [r0, #0x0]
	ldrneb r0, [r0, #0x1]
	addne r0, r1, r0
	ldreq r0, [sp, #0x8]
	ldreqsb r0, [r0, #0x2]
	add sp, sp, #0x10
	ldmia sp!, {r4-r8,pc}
	.balign 4
_020B6484: .word 0x0000FFFF
	arm_func_end FUN_020B63CC

	arm_func_start FUN_020B6488
FUN_020B6488: ; 0x020B6488
	str r2, [r0, #0x4]
	ldr r2, [sp, #0x0]
	str r3, [r0, #0x8]
	strb r2, [r0, #0xc]
	ldr r2, [sp, #0x4]
	str r1, [r0, #0x0]
	ldr r1, [sp, #0x8]
	str r2, [r0, #0x14]
	ldr r2, [sp, #0xc]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r2, [r0, #0x1c]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_020B6488

	arm_func_start FUN_020B64C0
FUN_020B64C0: ; 0x020B64C0
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x54
	ldrb r4, [r0, #0xc]
	mov r10, r2
	str r1, [sp, #0xc]
	str r4, [sp, #0x44]
	ldr r1, [sp, #0x44]
	ldr r4, [sp, #0x78]
	cmp r1, #0x4
	add r1, r10, r4
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x7c]
	mov r1, r3
	add r1, r1, r2
	str r1, [sp, #0x20]
	ldrne r1, [sp, #0xc]
	str r3, [sp, #0x10]
	orrne r1, r1, r1, lsl #0x8
	orrne r1, r1, r1, lsl #0x10
	strne r1, [sp, #0xc]
	bne _020B6528
	ldr r1, [sp, #0xc]
	orr r1, r1, r1, lsl #0x4
	orr r1, r1, r1, lsl #0x8
	orr r1, r1, r1, lsl #0x10
	str r1, [sp, #0xc]
_020B6528:
	bic r1, r10, #0x7
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x10]
	ldr r2, [r0, #0x10]
	bic r1, r1, #0x7
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x44]
	str r2, [sp, #0x4c]
	mov r3, r1, lsl #0x6
	mov r2, r3, asr #0x2
	ldr r1, [sp, #0x20]
	add r3, r3, r2, lsr #0x1d
	ldr r2, [sp, #0x1c]
	add r6, r1, #0x7
	add r2, r2, #0x7
	bic r5, r2, #0x7
	bic r2, r6, #0x7
	ldr r1, [sp, #0x30]
	str r2, [sp, #0x24]
	mov r2, r3, asr #0x3
	str r2, [sp, #0x48]
	mov r4, r1, asr #0x2
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x14]
	add r2, r2, r4, lsr #0x1d
	mov r2, r2, asr #0x3
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x14]
	mov r1, r1, asr #0x2
	add r1, r2, r1, lsr #0x1d
	mov r6, r1, asr #0x3
	ldr r1, [sp, #0x24]
	cmp r2, r1
	ldr r1, [r0, #0x4]
	str r1, [sp, #0x40]
	ldr r1, [r0, #0x8]
	ldr r0, [r0, #0x0]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x28]
	ldrb r0, [sp, #0x4c]
	str r0, [sp, #0x38]
	ldrb r0, [sp, #0x4d]
	str r0, [sp, #0x34]
	addge sp, sp, #0x54
	ldmgeia sp!, {r4-r11,pc}
	mov r4, #0x0
	mov r11, #0x8
_020B65E4:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x2c]
	cmp r1, r0
	movlt r1, r0
	ldrlt r0, [sp, #0x14]
	sublt r9, r1, r0
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x14]
	movge r9, r4
	sub r0, r1, r0
	cmp r0, #0x8
	movgt r0, r11
	sub r0, r0, r9
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x30]
	cmp r0, r5
	mov r8, r0
	bge _020B66B0
_020B6630:
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x40]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x3c]
	str r0, [sp, #0x4]
	mov r0, r7
	mov r1, r6
	bl FUN_020B7068
	ldr r2, [sp, #0x1c]
	cmp r8, r10
	sublt r1, r10, r8
	sub r2, r2, r8
	movge r1, r4
	cmp r2, #0x8
	movgt r2, r11
	sub r3, r2, r1
	ldr r2, [sp, #0x18]
	ldr r12, [sp, #0x48]
	str r2, [sp, #0x0]
	ldr r2, [sp, #0xc]
	str r2, [sp, #0x4]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0x8]
	ldr r2, [sp, #0x28]
	mla r0, r12, r0, r2
	mov r2, r9
	bl FUN_020B6F18
	add r8, r8, #0x8
	add r7, r7, #0x1
	cmp r8, r5
	blt _020B6630
_020B66B0:
	ldr r0, [sp, #0x14]
	add r6, r6, #0x1
	add r1, r0, #0x8
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _020B65E4
	add sp, sp, #0x54
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B64C0

	arm_func_start FUN_020B66D4
FUN_020B66D4: ; 0x020B66D4
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x3c
	ldrb r4, [r0, #0xc]
	mov r10, r2
	str r1, [sp, #0xc]
	str r4, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	ldr r4, [sp, #0x60]
	cmp r1, #0x4
	add r1, r10, r4
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x64]
	mov r1, r3
	add r1, r1, r2
	str r1, [sp, #0x1c]
	ldrne r1, [sp, #0xc]
	str r3, [sp, #0x10]
	orrne r1, r1, r1, lsl #0x8
	orrne r1, r1, r1, lsl #0x10
	strne r1, [sp, #0xc]
	bne _020B673C
	ldr r1, [sp, #0xc]
	orr r1, r1, r1, lsl #0x4
	orr r1, r1, r1, lsl #0x8
	orr r1, r1, r1, lsl #0x10
	str r1, [sp, #0xc]
_020B673C:
	ldr r1, [sp, #0x10]
	bic r1, r1, #0x7
	mov r2, r1, asr #0x2
	str r1, [sp, #0x14]
	add r1, r1, r2, lsr #0x1d
	ldr r2, [r0, #0x10]
	mov r3, r1, asr #0x3
	mul r1, r3, r2
	bic r3, r10, #0x7
	str r3, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	mov r6, r3, lsl #0x6
	ldr r3, [sp, #0x28]
	mov r4, r6, asr #0x2
	mov r5, r3, asr #0x2
	add r5, r3, r5, lsr #0x1d
	add r4, r6, r4, lsr #0x1d
	mov r3, r4, asr #0x3
	str r3, [sp, #0x30]
	ldr r3, [sp, #0x1c]
	add r1, r1, r5, asr #0x3
	add r4, r3, #0x7
	ldr r3, [r0, #0x0]
	ldr r0, [sp, #0x18]
	add r5, r0, #0x7
	ldr r0, [sp, #0x30]
	bic r7, r5, #0x7
	mla r1, r0, r1, r3
	bic r0, r4, #0x7
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x24]
	mul r0, r2, r0
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	addge sp, sp, #0x3c
	ldmgeia sp!, {r4-r11,pc}
	mov r5, #0x0
	mov r4, #0x8
_020B67E0:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r6, [sp, #0x24]
	cmp r1, r0
	movlt r1, r0
	ldrlt r0, [sp, #0x14]
	sublt r9, r1, r0
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	movge r9, r5
	sub r0, r1, r0
	cmp r0, #0x8
	movgt r0, r4
	sub r11, r0, r9
	ldr r0, [sp, #0x28]
	cmp r0, r7
	mov r8, r0
	bge _020B687C
_020B6828:
	ldr r0, [sp, #0x18]
	cmp r8, r10
	sublt r1, r10, r8
	sub r0, r0, r8
	movge r1, r5
	cmp r0, #0x8
	movgt r0, r4
	sub r3, r0, r1
	ldr r0, [sp, #0xc]
	str r11, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x2c]
	mov r2, r9
	str r0, [sp, #0x8]
	mov r0, r6
	bl FUN_020B6F18
	ldr r0, [sp, #0x30]
	add r8, r8, #0x8
	add r6, r6, r0
	cmp r8, r7
	blt _020B6828
_020B687C:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r1, r0, #0x8
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _020B67E0
	add sp, sp, #0x3c
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B66D4

	arm_func_start FUN_020B68AC
FUN_020B68AC: ; 0x020B68AC
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov r3, r0
	ldrb r2, [r3, #0xc]
	ldr r12, [r3, #0x4]
	cmp r2, #0x4
	orreq r0, r1, r1, lsl #0x4
	orreq r0, r0, r0, lsl #0x8
	orreq r1, r0, r0, lsl #0x10
	orrne r0, r1, r1, lsl #0x8
	orrne r1, r0, r0, lsl #0x10
	ldr r0, [r3, #0x8]
	mov r2, r2, lsl #0x6
	mul lr, r12, r0
	mov r0, r2, asr #0x2
	add r0, r2, r0, lsr #0x1d
	mov r2, r0, asr #0x3
	mov r0, r1
	mul r2, lr, r2
	ldr r1, [r3, #0x0]
	bl MIi_CpuClearFast
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020B68AC

	arm_func_start FUN_020B6908
FUN_020B6908: ; 0x020B6908
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4c
	ldr r7, [sp, #0x74]
	ldrb r5, [r0, #0xc]
	ldr r6, [r1, #0x0]
	ldr r4, [r7, #0x0]
	ldr r9, [r6, #0x8]
	mov r8, r5, lsl #0x6
	ldrb r4, [r4, #0x1]
	mov r5, r8, asr #0x2
	add r5, r8, r5, lsr #0x1d
	ldrb r9, [r9, #0x1]
	ldr r8, [r0, #0x4]
	ldr r6, [r0, #0x8]
	str r2, [sp, #0x8]
	str r3, [sp, #0xc]
	cmp r4, #0x0
	mov r5, r5, asr #0x3
	addeq sp, sp, #0x4c
	ldmeqia sp!, {r4-r11,pc}
	adds r3, r2, r4
	addmi sp, sp, #0x4c
	ldmmiia sp!, {r4-r11,pc}
	ldr r2, [sp, #0xc]
	adds r2, r2, r9
	addmi sp, sp, #0x4c
	ldmmiia sp!, {r4-r11,pc}
	ldr r10, [sp, #0x8]
	add r3, r3, #0x7
	cmp r10, #0x0
	movle r10, #0x0
	strle r10, [sp, #0x10]
	movgt r10, r10, lsr #0x3
	strgt r10, [sp, #0x10]
	ldr r10, [sp, #0xc]
	add r2, r2, #0x7
	cmp r10, #0x0
	movle r10, #0x0
	mov r11, r2, lsr #0x3
	mov r3, r3, lsr #0x3
	movgt r10, r10, lsr #0x3
	cmp r3, r8
	movcs r3, r8
	cmp r11, r6
	ldr r2, [sp, #0x10]
	movcs r11, r6
	subs r8, r3, r2
	addmi sp, sp, #0x4c
	sub r3, r11, r10
	ldmmiia sp!, {r4-r11,pc}
	cmp r3, #0x0
	addlt sp, sp, #0x4c
	ldmltia sp!, {r4-r11,pc}
	ldr r2, [sp, #0x8]
	ldr r6, [r0, #0x0]
	cmp r2, #0x0
	andge r2, r2, #0x7
	strge r2, [sp, #0x8]
	ldr r2, [sp, #0xc]
	ldr r11, [sp, #0x8]
	cmp r2, #0x0
	andge r2, r2, #0x7
	strge r2, [sp, #0xc]
	sub r8, r11, r8, lsl #0x3
	ldr r11, [sp, #0xc]
	ldr r2, [sp, #0x70]
	sub r3, r11, r3, lsl #0x3
	str r3, [sp, #0x14]
	ldr r3, [r7, #0x4]
	sub r2, r2, #0x1
	str r3, [sp, #0x28]
	str r2, [sp, #0x48]
	str r9, [sp, #0x38]
	str r4, [sp, #0x34]
	ldr r4, [r1, #0x0]
	ldr r2, [sp, #0x14]
	mov r3, r11
	cmp r3, r2
	ldr r2, [r4, #0x8]
	ldrb r3, [r2, #0x6]
	str r3, [sp, #0x40]
	ldrb r2, [r0, #0xc]
	str r2, [sp, #0x44]
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x8]
	ldrb r1, [r1, #0x0]
	mul r1, r3, r1
	str r1, [sp, #0x3c]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0x4]
	ldr r0, [r0, #0x8]
	ldrb r11, [sp, #0x20]
	ldrb r4, [sp, #0x21]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x18]
	addle sp, sp, #0x4c
	ldmleia sp!, {r4-r11,pc}
_020B6A90:
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x8]
	cmp r0, r8
	mov r9, r0
	ble _020B6AEC
_020B6AAC:
	ldr r2, [sp, #0x1c]
	str r11, [sp, #0x0]
	ldr r3, [sp, #0x18]
	mov r0, r7
	mov r1, r10
	str r4, [sp, #0x4]
	bl FUN_020B7068
	mla r1, r0, r5, r6
	add r0, sp, #0x24
	str r9, [sp, #0x2c]
	str r1, [sp, #0x24]
	bl FUN_020B6CAC
	sub r9, r9, #0x8
	add r7, r7, #0x1
	cmp r9, r8
	bgt _020B6AAC
_020B6AEC:
	ldr r0, [sp, #0xc]
	add r10, r10, #0x1
	sub r1, r0, #0x8
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r1, r0
	bgt _020B6A90
	add sp, sp, #0x4c
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B6908

	arm_func_start FUN_020B6B10
FUN_020B6B10: ; 0x020B6B10
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x2c
	ldr r4, [sp, #0x54]
	ldrb r5, [r0, #0xc]
	str r4, [sp, #0x54]
	ldr r4, [r4, #0x0]
	ldr r6, [r1, #0x0]
	mov r7, r5, lsl #0x6
	ldrb r4, [r4, #0x1]
	mov r5, r7, asr #0x2
	add r5, r7, r5, lsr #0x1d
	cmp r4, #0x0
	ldr r6, [r6, #0x8]
	mov r9, r3
	ldr r8, [r0, #0x4]
	ldr r7, [r0, #0x8]
	mov r10, r2
	mov r5, r5, asr #0x3
	addeq sp, sp, #0x2c
	ldr lr, [r0, #0x0]
	ldrb r3, [r6, #0x1]
	ldmeqia sp!, {r4-r11,pc}
	adds r6, r10, r4
	addmi sp, sp, #0x2c
	ldmmiia sp!, {r4-r11,pc}
	adds r2, r9, r3
	addmi sp, sp, #0x2c
	ldmmiia sp!, {r4-r11,pc}
	cmp r10, #0x0
	movle r11, #0x0
	add r6, r6, #0x7
	movgt r11, r10, lsr #0x3
	cmp r9, #0x0
	movle r12, #0x0
	add r2, r2, #0x7
	mov r6, r6, lsr #0x3
	movgt r12, r9, lsr #0x3
	cmp r6, r8
	movcs r6, r8
	mov r2, r2, lsr #0x3
	cmp r2, r7
	movcs r2, r7
	subs r7, r6, r11
	addmi sp, sp, #0x2c
	sub r2, r2, r12
	ldmmiia sp!, {r4-r11,pc}
	cmp r2, #0x0
	addlt sp, sp, #0x2c
	ldmltia sp!, {r4-r11,pc}
	ldr r6, [r0, #0x10]
	cmp r10, #0x0
	sub r8, r6, r7
	mul r8, r5, r8
	mla r11, r6, r12, r11
	andge r10, r10, #0x7
	str r8, [sp, #0x0]
	ldr r8, [sp, #0x54]
	mla r6, r5, r11, lr
	ldr r12, [r8, #0x4]
	ldr r11, [sp, #0x50]
	cmp r9, #0x0
	sub r8, r11, #0x1
	andge r9, r9, #0x7
	sub r11, r9, r2, lsl #0x3
	str r12, [sp, #0x8]
	str r4, [sp, #0x14]
	str r8, [sp, #0x28]
	str r3, [sp, #0x18]
	ldr r3, [r1, #0x0]
	cmp r9, r11
	ldr r2, [r3, #0x8]
	sub r7, r10, r7, lsl #0x3
	ldrb r2, [r2, #0x6]
	str r2, [sp, #0x20]
	ldrb r0, [r0, #0xc]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0x0]
	ldr r0, [r0, #0x8]
	ldrb r0, [r0, #0x0]
	mul r0, r2, r0
	str r0, [sp, #0x1c]
	addle sp, sp, #0x2c
	ldmleia sp!, {r4-r11,pc}
	add r4, sp, #0x4
_020B6C60:
	mov r8, r10
	str r9, [sp, #0x10]
	cmp r10, r7
	ble _020B6C90
_020B6C70:
	mov r0, r4
	str r6, [sp, #0x4]
	str r8, [sp, #0xc]
	bl FUN_020B6CAC
	sub r8, r8, #0x8
	cmp r8, r7
	add r6, r6, r5
	bgt _020B6C70
_020B6C90:
	ldr r0, [sp, #0x0]
	sub r9, r9, #0x8
	cmp r9, r11
	add r6, r6, r0
	bgt _020B6C60
	add sp, sp, #0x2c
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B6B10

	arm_func_start FUN_020B6CAC
FUN_020B6CAC: ; 0x020B6CAC
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x34
	ldr r5, [r0, #0x8]
	ldr r4, [r0, #0xc]
	cmp r5, #0x0
	strge r5, [sp, #0x0]
	movlt r1, #0x0
	strlt r1, [sp, #0x0]
	ldr r1, [r0, #0x10]
	cmp r4, #0x0
	add r10, r5, r1
	ldr r1, [r0, #0x14]
	movge r2, r4
	movlt r2, #0x0
	cmp r10, #0x8
	add r3, r4, r1
	movge r10, #0x8
	cmp r3, #0x8
	movge r3, #0x8
	cmp r4, #0x0
	movgt r4, #0x0
	cmp r5, #0x0
	ldr r8, [r0, #0x20]
	movgt r5, #0x0
	rsb r1, r4, #0x0
	mul r7, r10, r8
	ldr r6, [r0, #0x1c]
	rsb r4, r5, #0x0
	mul r9, r6, r4
	ldr r4, [r0, #0x18]
	mov r10, r7
	str r4, [sp, #0x8]
	ldr r4, [sp, #0x0]
	cmp r8, #0x4
	mul r5, r4, r8
	ldr r4, [sp, #0x8]
	str r5, [sp, #0x0]
	mla r11, r1, r4, r9
	ldr r1, [r0, #0x4]
	str r1, [sp, #0x4]
	bne _020B6E24
	ldr r1, [r0, #0x0]
	ldr r7, [r0, #0x24]
	add r0, r1, r2, lsl #0x2
	str r0, [sp, #0xc]
	add r0, r1, r3, lsl #0x2
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x10]
	cmp r1, r0
	addcs sp, sp, #0x34
	ldmcsia sp!, {r4-r11,pc}
	mov r0, #0x0
	add r9, sp, #0x24
	mov r4, #0xf
	str r0, [sp, #0x1c]
_020B6D88:
	ldr r0, [sp, #0xc]
	mov r1, r11, lsr #0x1f
	ldr r5, [r0, #0x0]
	ldr r0, [sp, #0x4]
	rsb r2, r1, r11, lsl #0x1d
	add r0, r0, r11, lsr #0x3
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	add r1, r1, r2, ror #0x1d
	strb r0, [sp, #0x28]
	strb r0, [sp, #0x29]
	mov r0, r9
	bl FUN_020B76B0
	ldr r8, [sp, #0x0]
	mov r0, r8
	cmp r0, r10
	bhs _020B6DF8
_020B6DCC:
	mov r0, r9
	mov r1, r6
	bl FUN_020B76B0
	cmp r0, #0x0
	mvnne r1, r4, lsl r8
	addne r0, r7, r0
	andne r1, r5, r1
	orrne r5, r1, r0, lsl r8
	add r8, r8, #0x4
	cmp r8, r10
	blo _020B6DCC
_020B6DF8:
	ldr r0, [sp, #0xc]
	add r1, r0, #0x4
	str r5, [r0, #0x0]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	ldr r0, [sp, #0x8]
	add r11, r11, r0
	blo _020B6D88
	add sp, sp, #0x34
	ldmia sp!, {r4-r11,pc}
_020B6E24:
	ldr r1, [r0, #0x0]
	ldr r9, [r0, #0x24]
	add r0, r1, r2, lsl #0x3
	str r0, [sp, #0x14]
	add r0, r1, r3, lsl #0x3
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r1, r0
	addcs sp, sp, #0x34
	ldmcsia sp!, {r4-r11,pc}
	mov r0, #0x0
	mov r4, #0xff
	str r0, [sp, #0x20]
_020B6E58:
	mov r1, r11, lsr #0x1f
	rsb r0, r1, r11, lsl #0x1d
	add r1, r1, r0, ror #0x1d
	ldr r0, [sp, #0x14]
	ldr r8, [r0, #0x0]
	ldr r7, [r0, #0x4]
	ldr r0, [sp, #0x4]
	add r0, r0, r11, lsr #0x3
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	strb r0, [sp, #0x30]
	strb r0, [sp, #0x31]
	add r0, sp, #0x2c
	bl FUN_020B76B0
	ldr r0, [sp, #0x0]
	cmp r0, r10
	mov r5, r0
	bhs _020B6EE8
_020B6EA0:
	add r0, sp, #0x2c
	mov r1, r6
	bl FUN_020B76B0
	cmp r0, #0x0
	beq _020B6EDC
	cmp r5, #0x20
	mvncc r1, r4, lsl r5
	addcc r0, r9, r0
	andcc r1, r8, r1
	orrcc r8, r1, r0, lsl r5
	subcs r2, r5, #0x20
	mvncs r1, r4, lsl r2
	addcs r0, r9, r0
	andcs r1, r7, r1
	orrcs r7, r1, r0, lsl r2
_020B6EDC:
	add r5, r5, #0x8
	cmp r5, r10
	blo _020B6EA0
_020B6EE8:
	ldr r0, [sp, #0x14]
	str r8, [r0, #0x0]
	add r1, r0, #0x8
	str r7, [r0, #0x4]
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x14]
	cmp r1, r0
	ldr r0, [sp, #0x8]
	add r11, r11, r0
	blo _020B6E58
	add sp, sp, #0x34
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B6CAC

	arm_func_start FUN_020B6F18
FUN_020B6F18: ; 0x020B6F18
	stmdb sp!, {r4-r6,lr}
	mov lr, r0
	cmp r3, #0x8
	ldr r0, [sp, #0x14]
	bne _020B6F4C
	ldr r4, [sp, #0x10]
	cmp r4, #0x8
	bne _020B6F4C
	ldr r2, [sp, #0x18]
	mov r1, lr
	mov r2, r2, lsl #0x3
	bl MIi_CpuClearFast
	ldmia sp!, {r4-r6,pc}
_020B6F4C:
	ldr r4, [sp, #0x18]
	cmp r4, #0x4
	bne _020B6FAC
	mov r5, r1, lsl #0x2
	add r4, r5, r3, lsl #0x2
	mvn r3, #0x0
	rsb r4, r4, #0x20
	mov r3, r3, lsr r5
	add r1, r4, r1, lsl #0x2
	mov r3, r3, lsl r1
	ldr r1, [sp, #0x10]
	add r5, lr, r2, lsl #0x2
	add r2, r5, r1, lsl #0x2
	and r6, r0, r3, lsr r4
	cmp r5, r2
	mvn r1, r3, lsr r4
	ldmcsia sp!, {r4-r6,pc}
_020B6F90:
	ldr r0, [r5, #0x0]
	and r0, r0, r1
	orr r0, r6, r0
	str r0, [r5], #0x4
	cmp r5, r2
	blo _020B6F90
	ldmia sp!, {r4-r6,pc}
_020B6FAC:
	mov r12, r1, lsl #0x3
	add r1, r12, r3, lsl #0x3
	rsb r1, r1, #0x40
	mvn r3, #0x0
	cmp r1, #0x20
	mov r5, r3, lsr r12
	subcs r4, r1, #0x20
	addcs r3, r12, r4
	movcs r3, r5, lsl r3
	movcs r3, r3, lsr r4
	movcc r3, r5, lsl r12
	mvn r4, #0x0
	add r5, lr, r2, lsl #0x3
	cmp r12, #0x20
	mov r4, r4, lsl r1
	subcs r12, r12, #0x20
	addcs r1, r12, r1
	movcs r1, r4, lsr r1
	movcs r6, r1, lsl r12
	movcc r6, r4, lsr r1
	ldr r1, [sp, #0x10]
	and lr, r0, r3
	add r4, r5, r1, lsl #0x3
	cmp r5, r4
	and r12, r0, r6
	mvn r2, r3
	mvn r1, r6
	ldmcsia sp!, {r4-r6,pc}
_020B701C:
	ldr r0, [r5, #0x0]
	and r0, r0, r2
	orr r0, lr, r0
	str r0, [r5, #0x0]
	ldr r0, [r5, #0x4]
	and r0, r0, r1
	orr r0, r12, r0
	str r0, [r5, #0x4]
	add r5, r5, #0x8
	cmp r5, r4
	blo _020B701C
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020B6F18

	arm_func_start FUN_020B704C
FUN_020B704C: ; 0x020B704C
	ldrb r3, [r0, #0x1]
	ldr r2, _020B7064 ; =UNK_020FF990
	ldrb r1, [r0, #0x0]
	add r0, r2, r3, lsl #0x4
	ldr r0, [r0, r1, lsl #0x2]
	bx lr
	.balign 4
_020B7064: .word UNK_020FF990
	arm_func_end FUN_020B704C

	arm_func_start FUN_020B7068
FUN_020B7068: ; 0x020B7068
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	ldr fp, _020B7164 ; =UNK_020FF970
	mov r9, #0x0
	mov r10, #0x3
	mvn r7, #0x0
_020B7080:
	ldr r4, [sp, #0x2c]
	ldr r6, [sp, #0x28]
	and r12, r3, r7, lsl r4
	cmp r12, r1
	mov r8, r7, lsl r6
	mov r5, r7, lsl r4
	and lr, r2, r7, lsl r6
	bhi _020B70D0
	mla r9, r2, r12, r9
	cmp lr, r0
	movhi r2, lr
	subhi r1, r1, r12
	subhi r3, r3, r12
	bhi _020B7118
	sub r3, r3, r12
	mla r9, lr, r3, r9
	sub r0, r0, lr
	sub r1, r1, r12
	sub r2, r2, lr
	b _020B7118
_020B70D0:
	cmp lr, r0
	mlals r9, lr, r12, r9
	mvn r3, r5
	movls r3, r12
	subls r0, r0, lr
	subls r2, r2, lr
	bls _020B7118
	and r2, r1, r5
	mla r5, lr, r2, r9
	and r2, r0, r8
	and r1, r1, r3
	add r2, r5, r2, lsl r4
	mvn r3, r8
	add r1, r2, r1, lsl r6
	and r0, r0, r3
	add sp, sp, #0x4
	add r0, r1, r0
	ldmia sp!, {r4-r11,pc}
_020B7118:
	cmp r2, #0x8
	movlt r4, r2
	movge r5, r10
	clzlt r4, r4
	rsblt r5, r4, #0x1f
	cmp r3, #0x8
	movge r4, r10
	movlt r4, r3
	clzlt r4, r4
	rsblt r4, r4, #0x1f
	add r4, r11, r4, lsl #0x3
	add r6, r4, r5, lsl #0x1
	ldrb r5, [r4, r5, lsl #0x1]
	ldrb r4, [r6, #0x1]
	str r5, [sp, #0x28]
	str r4, [sp, #0x2c]
	b _020B7080
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B7164: .word UNK_020FF970
	arm_func_end FUN_020B7068

	arm_func_start FUN_020B7168
FUN_020B7168: ; 0x020B7168
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0xc
	ldr r12, [sp, #0x28]
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	ands r0, r12, #0x100
	beq _020B71AC
	ldr r0, [r7, #0x4]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0x2c]
	bl FUN_020B5B54
	ldr r1, [sp, #0x20]
	sub r0, r1, r0
	add r5, r5, r0
	b _020B71E4
_020B71AC:
	ands r0, r12, #0x80
	beq _020B71E4
	ldr r0, [r7, #0x4]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0x2c]
	bl FUN_020B5B54
	ldr r2, [sp, #0x20]
	add r1, r0, #0x1
	add r0, r2, #0x1
	add r0, r0, r0, lsr #0x1f
	mov r2, r0, asr #0x1
	add r0, r1, r1, lsr #0x1f
	sub r0, r2, r0, asr #0x1
	add r5, r5, r0
_020B71E4:
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x0]
	ldr r12, [sp, #0x2c]
	str r0, [sp, #0x4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #0x8]
	bl FUN_020B72C4
	add sp, sp, #0xc
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020B7168

	arm_func_start FUN_020B7218
FUN_020B7218: ; 0x020B7218
	stmdb sp!, {r4-r8,lr}
	sub sp, sp, #0x18
	ldr r4, [sp, #0x34]
	mov r8, r0
	str r4, [sp, #0x0]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x30]
	ldr r1, [r8, #0x4]
	ldr r2, [r8, #0x8]
	ldr r3, [r8, #0xc]
	add r0, sp, #0xc
	bl FUN_020B5ABC
	ands r0, r4, #0x10
	ldrne r0, [sp, #0xc]
	addne r0, r0, #0x1
	addne r0, r0, r0, lsr #0x1f
	subne r7, r7, r0, asr #0x1
	bne _020B7274
	ands r0, r4, #0x20
	ldrne r0, [sp, #0xc]
	subne r7, r7, r0
_020B7274:
	ands r0, r4, #0x2
	ldrne r0, [sp, #0x10]
	addne r0, r0, #0x1
	addne r0, r0, r0, lsr #0x1f
	subne r6, r6, r0, asr #0x1
	bne _020B7298
	ands r0, r4, #0x4
	ldrne r0, [sp, #0x10]
	subne r6, r6, r0
_020B7298:
	str r5, [sp, #0x0]
	ldr r0, [sp, #0x34]
	str r4, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0xc]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_020B72C4
	add sp, sp, #0x18
	ldmia sp!, {r4-r8,pc}
	arm_func_end FUN_020B7218

	arm_func_start FUN_020B72C4
FUN_020B72C4: ; 0x020B72C4
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r4, [r10, #0x4]
	ldr r0, [sp, #0x40]
	ldr r4, [r4, #0x0]
	ldr r5, [r10, #0xc]
	ldrsb r4, [r4, #0x1]
	cmp r0, #0x0
	mov r9, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	mov r8, r2
	str r0, [sp, #0x38]
	mov r7, r3
	add r6, r5, r4
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4-r11,pc}
	add r0, r7, #0x1
	ldr r1, [sp, #0x3c]
	add r0, r0, r0, lsr #0x1f
	mov r0, r0, asr #0x1
	and r5, r1, #0x800
	and r11, r1, #0x400
	str r0, [sp, #0x8]
	mov r4, #0x0
_020B732C:
	mov r1, r9
	cmp r5, #0x0
	beq _020B7358
	ldr r0, [r10, #0x4]
	ldr r1, [r10, #0x8]
	ldr r2, [sp, #0xc]
	mov r3, r4
	bl FUN_020B5BC8
	sub r0, r7, r0
	add r1, r9, r0
	b _020B7388
_020B7358:
	cmp r11, #0x0
	beq _020B7388
	ldr r0, [r10, #0x4]
	ldr r1, [r10, #0x8]
	ldr r2, [sp, #0xc]
	mov r3, r4
	bl FUN_020B5BC8
	add r0, r0, #0x1
	add r1, r0, r0, lsr #0x1f
	ldr r0, [sp, #0x8]
	sub r0, r0, r1, asr #0x1
	add r1, r9, r0
_020B7388:
	ldr r2, [sp, #0xc]
	add r3, sp, #0xc
	str r2, [sp, #0x0]
	str r3, [sp, #0x4]
	ldr r3, [sp, #0x38]
	mov r0, r10
	mov r2, r8
	bl FUN_020B73C0
	ldr r0, [sp, #0xc]
	add r8, r8, r6
	cmp r0, #0x0
	bne _020B732C
	add sp, sp, #0x14
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B72C4

	arm_func_start FUN_020B73C0
FUN_020B73C0: ; 0x020B73C0
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r6, [r10, #0x8]
	ldr r5, [r10, #0x4]
	ldr r4, [sp, #0x30]
	add r0, sp, #0x8
	str r4, [sp, #0x8]
	ldr r4, [r5, #0x4]
	mov r9, r1
	mov r8, r2
	mov r7, r3
	blx r4
	cmp r0, #0x0
	beq _020B743C
	add r11, sp, #0x8
_020B7400:
	cmp r0, #0xa
	beq _020B743C
	str r7, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [r10, #0x0]
	mov r1, r5
	mov r2, r9
	mov r3, r8
	bl FUN_020B63CC
	add r1, r9, r0
	mov r0, r11
	add r9, r1, r6
	blx r4
	cmp r0, #0x0
	bne _020B7400
_020B743C:
	ldr r1, [sp, #0x34]
	cmp r1, #0x0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4-r11,pc}
	cmp r0, #0xa
	ldreq r1, [sp, #0x8]
	ldr r0, [sp, #0x34]
	movne r1, #0x0
	str r1, [r0, #0x0]
	add sp, sp, #0xc
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B73C0

	arm_func_start FUN_020B7468
FUN_020B7468: ; 0x020B7468
	stmdb sp!, {r4-r6,lr}
	ldrh r2, [r0, #0xc]
	ldrh r3, [r0, #0xe]
	mov r1, #0x0
	add r2, r0, r2
	cmp r3, #0x0
	ldmleia sp!, {r4-r6,pc}
	ldr r3, _020B7548 ; =0x46494E46
	ldr ip, _020B754C ; =0x43574448
	ldr r4, _020B7550 ; =0x434D4150
	ldr lr, _020B7554 ; =0x43474C50
_020B7494:
	ldr r5, [r2, #0x0]
	cmp r5, r4
	bhi _020B74B0
	cmp r5, r4
	bhs _020B7518
	cmp r5, lr
	b _020B752C
_020B74B0:
	cmp r5, r12
	bhi _020B74C4
	cmp r5, r12
	beq _020B7500
	b _020B752C
_020B74C4:
	cmp r5, r3
	bne _020B752C
	add r6, r2, #0x8
	ldr r5, [r6, #0x8]
	add r5, r5, r0
	str r5, [r6, #0x8]
	ldr r5, [r6, #0xc]
	cmp r5, #0x0
	addne r5, r5, r0
	strne r5, [r6, #0xc]
	ldr r5, [r6, #0x10]
	cmp r5, #0x0
	addne r5, r5, r0
	strne r5, [r6, #0x10]
	b _020B752C
_020B7500:
	add r6, r2, #0x8
	ldr r5, [r6, #0x4]
	cmp r5, #0x0
	addne r5, r5, r0
	strne r5, [r6, #0x4]
	b _020B752C
_020B7518:
	add r6, r2, #0x8
	ldr r5, [r6, #0x8]
	cmp r5, #0x0
	addne r5, r5, r0
	strne r5, [r6, #0x8]
_020B752C:
	ldrh r5, [r0, #0xe]
	ldr r6, [r2, #0x4]
	add r1, r1, #0x1
	cmp r1, r5
	add r2, r2, r6
	blt _020B7494
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B7548: .word 0x46494E46
_020B754C: .word 0x43574448
_020B7550: .word 0x434D4150
_020B7554: .word 0x43474C50
	arm_func_end FUN_020B7468

	arm_func_start FUN_020B7558
FUN_020B7558: ; 0x020B7558
	stmdb sp!, {r4-r6,lr}
	movs r6, r0
	mov r5, r1
	beq _020B75C8
	cmp r6, #0x0
	beq _020B7584
	ldr r1, [r6, #0x0]
	ldr r0, _020B76A8 ; =0x4E465452
	cmp r1, r0
	moveq r0, #0x1
	beq _020B7588
_020B7584:
	mov r0, #0x0
_020B7588:
	cmp r0, #0x0
	movne r0, #0x1
	moveq r0, #0x0
	cmp r0, #0x0
	beq _020B75CC
	cmp r6, #0x0
	beq _020B75B4
	ldrh r0, [r6, #0x6]
	cmp r0, #0x100
	movcs r0, #0x1
	bhs _020B75B8
_020B75B4:
	mov r0, #0x0
_020B75B8:
	cmp r0, #0x0
	movne r0, #0x1
	moveq r0, #0x0
	b _020B75CC
_020B75C8:
	mov r0, #0x0
_020B75CC:
	cmp r0, #0x0
	movne r4, #0x0
	bne _020B7654
	cmp r6, #0x0
	beq _020B7640
	cmp r6, #0x0
	beq _020B75FC
	ldr r1, [r6, #0x0]
	ldr r0, _020B76A8 ; =0x4E465452
	cmp r1, r0
	moveq r0, #0x1
	beq _020B7600
_020B75FC:
	mov r0, #0x0
_020B7600:
	cmp r0, #0x0
	movne r0, #0x1
	moveq r0, #0x0
	cmp r0, #0x0
	beq _020B7644
	cmp r6, #0x0
	beq _020B762C
	ldrh r0, [r6, #0x6]
	cmp r0, #0x1
	movcs r0, #0x1
	bhs _020B7630
_020B762C:
	mov r0, #0x0
_020B7630:
	cmp r0, #0x0
	movne r0, #0x1
	moveq r0, #0x0
	b _020B7644
_020B7640:
	mov r0, #0x0
_020B7644:
	cmp r0, #0x0
	movne r4, #0x1
	bne _020B7654
	bl OS_Terminate
_020B7654:
	mov r0, r6
	bl FUN_020B7468
	ldr r1, _020B76AC ; =0x46494E46
	mov r0, r6
	bl FUN_020B01F8
	cmp r0, #0x0
	moveq r0, #0x0
	streq r0, [r5, #0x0]
	ldmeqia sp!, {r4-r6,pc}
	add r0, r0, #0x8
	str r0, [r5, #0x0]
	cmp r4, #0x0
	beq _020B76A0
	ldr r2, [r5, #0x0]
	mov r1, #0x0
	ldrsb r0, [r2, #0x6]
	strb r0, [r2, #0x7]
	ldr r0, [r5, #0x0]
	strb r1, [r0, #0x6]
_020B76A0:
	add r0, r4, #0x1
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B76A8: .word 0x4E465452
_020B76AC: .word 0x46494E46
	arm_func_end FUN_020B7558

	arm_func_start FUN_020B76B0
FUN_020B76B0:
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldrsb r2, [r0, #0x4]
	ldrb r12, [r0, #0x5]
	mov r4, r1
	cmp r2, r4
	subge r1, r2, r4
	movge r5, r12, lsr r1
	strgeb r1, [r0, #0x4]
	bge _020B7704
	ldr r3, [r0, #0x0]
	sub r1, r4, r2
	add r2, r3, #0x1
	str r2, [r0, #0x0]
	ldrb r2, [r3, #0x0]
	mov r5, r12, lsl r1
	strb r2, [r0, #0x5]
	mov r2, #0x8
	strb r2, [r0, #0x4]
	bl FUN_020B76B0
	orr r5, r0, r5
_020B7704:
	rsb r0, r4, #0x8
	mov r1, #0xff
	and r0, r5, r1, asr r0
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020B76B0

	arm_func_start FUN_020B7718
FUN_020B7718: ; 0x020B7718
	ldr r1, [r0, #0x0]
	ldrh r2, [r1], #0x2
	str r1, [r0, #0x0]
	mov r0, r2
	bx lr
	arm_func_end FUN_020B7718

	arm_func_start FUN_020B772C
FUN_020B772C: ; 0x020B772C
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r6, r0
	ldrb r0, [r6, #0x9]
	mov r5, #0x0
	cmp r0, #0x0
	addls sp, sp, #0x4
	ldmlsia sp!, {r4-r7,pc}
	add r4, r6, #0x8
_020B7750:
	ldrh r0, [r6, #0xe]
	ldrh r1, [r4, r0]
	add r0, r4, r0
	mla r0, r1, r5, r0
	ldr r0, [r0, #0x4]
	add r7, r6, r0
	mov r0, r7
	bl FUN_020B79A4
	mov r0, r7
	bl FUN_020B780C
	ldrb r0, [r6, #0x9]
	add r5, r5, #0x1
	cmp r5, r0
	blo _020B7750
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020B772C

	arm_func_start FUN_020B7790
FUN_020B7790: ; 0x020B7790
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	mov r8, r0
	ldrb r0, [r8, #0x9]
	mov r7, r1
	mov r5, #0x1
	cmp r0, #0x0
	mov r6, #0x0
	bls _020B7800
	add r4, r8, #0x8
_020B77B8:
	ldrh r0, [r8, #0xe]
	mov r1, r7
	ldrh r2, [r4, r0]
	add r0, r4, r0
	mla r0, r2, r6, r0
	ldr r0, [r0, #0x4]
	add r9, r8, r0
	mov r0, r9
	bl FUN_020B7A04
	and r5, r5, r0
	mov r0, r9
	mov r1, r7
	bl FUN_020B7864
	ldrb r1, [r8, #0x9]
	add r6, r6, #0x1
	and r5, r5, r0
	cmp r6, r1
	blo _020B77B8
_020B7800:
	mov r0, r5
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	arm_func_end FUN_020B7790

	arm_func_start FUN_020B780C
FUN_020B780C: ; 0x020B780C
	ldr r2, [r0, #0x8]
	mov r1, #0x0
	add r2, r0, r2
	ldrh r0, [r2, #0x2]
	add r12, r2, r0
	ldrb r0, [r12, #0x1]
	cmp r0, #0x0
	bxls lr
_020B782C:
	ldrh r2, [r12, #0x6]
	ldrh r0, [r12, r2]
	add r2, r12, r2
	add r2, r2, #0x4
	mla r3, r0, r1, r2
	ldrb r0, [r3, #0x3]
	add r1, r1, #0x1
	ands r2, r0, #0x1
	bicne r0, r0, #0x1
	strneb r0, [r3, #0x3]
	ldrb r0, [r12, #0x1]
	cmp r1, r0
	blo _020B782C
	bx lr
	arm_func_end FUN_020B780C

	arm_func_start FUN_020B7864
FUN_020B7864: ; 0x020B7864
	stmdb sp!, {r4-r10,lr}
	ldr r2, [r0, #0x8]
	mov r10, r1
	add r9, r0, r2
	ldrh r0, [r9, #0x2]
	mov r6, #0x1
	mov r7, #0x0
	add r8, r9, r0
	ldrb r0, [r8, #0x1]
	cmp r0, #0x0
	bls _020B7908
	mov r5, r7
	mov r4, r7
_020B7898:
	ldrh r1, [r8, #0x6]
	ldrh r0, [r10, #0x34]
	add r2, r8, r1
	ldrh r1, [r2, #0x2]
	add r0, r10, r0
	add r1, r2, r1
	add r1, r1, r5
	bl FUN_020BC2A0
	movs r3, r0
	beq _020B78F0
	ldrh r1, [r8, #0x6]
	ldrh r0, [r8, r1]
	add r1, r8, r1
	add r1, r1, #0x4
	mla r1, r0, r7, r1
	ldrb r0, [r1, #0x3]
	ands r0, r0, #0x1
	bne _020B78F4
	mov r0, r9
	mov r2, r10
	bl FUN_020B7910
	b _020B78F4
_020B78F0:
	mov r6, r4
_020B78F4:
	ldrb r0, [r8, #0x1]
	add r7, r7, #0x1
	add r5, r5, #0x10
	cmp r7, r0
	blo _020B7898
_020B7908:
	mov r0, r6
	ldmia sp!, {r4-r10,pc}
	arm_func_end FUN_020B7864

	arm_func_start FUN_020B7910
FUN_020B7910:
	stmdb sp!, {r4-r6,lr}
	ldrh r5, [r1, #0x0]
	ldr r2, [r2, #0x2c]
	ldrh r4, [r3, #0x2]
	mov r2, r2, lsl #0x10
	add r12, r0, r5
	mov r5, r2, lsr #0x10
	ands r2, r4, #0x1
	ldrh r4, [r3, #0x0]
	moveq r3, r5, lsl #0xf
	moveq r5, r3, lsr #0x10
	moveq r2, r4, lsl #0xf
	moveq r4, r2, lsr #0x10
	ldrb r3, [r1, #0x2]
	mov r2, #0x0
	cmp r3, #0x0
	bls _020B7994
	add r3, r4, r5
	mov r3, r3, lsl #0x10
	add r6, r0, #0x4
	mov r4, r3, lsr #0x10
_020B7964:
	ldrh r5, [r0, #0xa]
	ldrb r3, [r12, r2]
	add r2, r2, #0x1
	ldrh lr, [r6, r5]
	add r5, r6, r5
	mla r3, lr, r3, r5
	ldr r3, [r3, #0x4]
	add r3, r0, r3
	strh r4, [r3, #0x1c]
	ldrb r3, [r1, #0x2]
	cmp r2, r3
	blo _020B7964
_020B7994:
	ldrb r0, [r1, #0x3]
	orr r0, r0, #0x1
	strb r0, [r1, #0x3]
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020B7910

	arm_func_start FUN_020B79A4
FUN_020B79A4: ; 0x020B79A4
	stmdb sp!, {r4-r6,lr}
	ldr r2, [r0, #0x8]
	mov r4, #0x0
	ldrh r1, [r0, r2]
	add r6, r0, r2
	add r5, r6, r1
	ldrb r0, [r5, #0x1]
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020B79C8:
	ldrh r1, [r5, #0x6]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #0x4
	mla r1, r0, r4, r1
	ldrb r0, [r1, #0x3]
	ands r0, r0, #0x1
	beq _020B79F0
	mov r0, r6
	bl FUN_020B7AB8
_020B79F0:
	ldrb r0, [r5, #0x1]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020B79C8
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020B79A4

	arm_func_start FUN_020B7A04
FUN_020B7A04: ; 0x020B7A04
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	ldr r2, [r0, #0x8]
	mov r10, r1
	ldrh r1, [r0, r2]
	add r9, r0, r2
	mov r11, #0x1
	add r8, r9, r1
	ldrb r0, [r8, #0x1]
	mov r7, #0x0
	cmp r0, #0x0
	bls _020B7AAC
	mov r6, r7
	mov r4, r7
	add r5, r10, #0x3c
_020B7A40:
	ldrh r1, [r8, #0x6]
	mov r0, r5
	add r2, r8, r1
	ldrh r1, [r2, #0x2]
	add r1, r2, r1
	add r1, r1, r6
	bl FUN_020BC2A0
	movs r3, r0
	beq _020B7A94
	ldrh r1, [r8, #0x6]
	ldrh r0, [r8, r1]
	add r1, r8, r1
	add r1, r1, #0x4
	mla r1, r0, r7, r1
	ldrb r0, [r1, #0x3]
	ands r0, r0, #0x1
	bne _020B7A98
	mov r0, r9
	mov r2, r10
	bl FUN_020B7B40
	b _020B7A98
_020B7A94:
	mov r11, r4
_020B7A98:
	ldrb r0, [r8, #0x1]
	add r7, r7, #0x1
	add r6, r6, #0x10
	cmp r7, r0
	blo _020B7A40
_020B7AAC:
	mov r0, r11
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B7A04

	arm_func_start FUN_020B7AB8
FUN_020B7AB8: ; 0x020B7AB8
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldrh r4, [r1, #0x0]
	ldrb r2, [r1, #0x2]
	mov r3, #0x0
	add r12, r0, r4
	cmp r2, #0x0
	bls _020B7B28
	add r2, r0, #0x4
	mov r5, #0x1000
	ldr lr, _020B7B3C ; =0xC00F0000
_020B7AE4:
	ldrh r7, [r0, #0xa]
	ldrb r4, [r12, r3]
	add r3, r3, #0x1
	ldrh r6, [r2, r7]
	add r7, r2, r7
	mla r4, r6, r4, r7
	ldr r4, [r4, #0x4]
	add r6, r0, r4
	ldr r4, [r6, #0x14]
	and r4, r4, lr
	str r4, [r6, #0x14]
	str r5, [r6, #0x24]
	ldr r4, [r6, #0x24]
	str r4, [r6, #0x28]
	ldrb r4, [r1, #0x2]
	cmp r3, r4
	blo _020B7AE4
_020B7B28:
	ldrb r0, [r1, #0x3]
	bic r0, r0, #0x1
	strb r0, [r1, #0x3]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B7B3C: .word 0xC00F0000
	arm_func_end FUN_020B7AB8

	arm_func_start FUN_020B7B40
FUN_020B7B40:
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0xc
	mov r11, r1
	mov r9, r3
	ldr r1, [r9, #0x0]
	mov r10, r0
	and r0, r1, #0x1c000000
	cmp r0, #0x14000000
	ldrh r3, [r11, #0x0]
	ldrne r1, [r2, #0x8]
	mov r8, #0x0
	add r0, r10, r3
	str r0, [sp, #0x4]
	ldrne r0, _020B7C50 ; =0x0000FFFF
	andne r0, r1, r0
	strne r0, [sp, #0x0]
	ldreq r1, [r2, #0x18]
	ldreq r0, _020B7C50 ; =0x0000FFFF
	andeq r0, r1, r0
	streq r0, [sp, #0x0]
	ldrb r0, [r11, #0x2]
	cmp r0, #0x0
	bls _020B7C3C
	mov r4, #0x1000
	add r5, r10, #0x4
_020B7BA4:
	ldrh r6, [r10, #0xa]
	ldr r0, [sp, #0x4]
	ldr r1, [r9, #0x0]
	ldrb r2, [r0, r8]
	ldrh r3, [r5, r6]
	ldr r0, [sp, #0x0]
	add r6, r5, r6
	add r0, r1, r0
	mla r1, r3, r2, r6
	ldr r1, [r1, #0x4]
	add r6, r10, r1
	ldr r1, [r6, #0x14]
	orr r0, r1, r0
	str r0, [r6, #0x14]
	ldr r3, [r9, #0x4]
	ldr r0, _020B7C54 ; =0x000007FF
	ldrh r1, [r6, #0x20]
	and r2, r3, r0
	and r7, r0, r3, lsr #0xb
	cmp r2, r1
	moveq r0, r4
	beq _020B7C08
	mov r0, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_020B7C08:
	str r0, [r6, #0x24]
	ldrh r1, [r6, #0x22]
	cmp r7, r1
	moveq r0, r4
	beq _020B7C28
	mov r0, r7, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_020B7C28:
	str r0, [r6, #0x28]
	ldrb r0, [r11, #0x2]
	add r8, r8, #0x1
	cmp r8, r0
	blo _020B7BA4
_020B7C3C:
	ldrb r0, [r11, #0x3]
	orr r0, r0, #0x1
	strb r0, [r11, #0x3]
	add sp, sp, #0xc
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B7C50: .word 0x0000FFFF
_020B7C54: .word 0x000007FF
	arm_func_end FUN_020B7B40

	arm_func_start FUN_020B7C58
FUN_020B7C58: ; 0x020B7C58
	ldrh r2, [r0, #0x32]
	mov r1, #0x0
	bic r2, r2, #0x1
	strh r2, [r0, #0x32]
	ldr r2, [r0, #0x2c]
	str r1, [r0, #0x2c]
	mov r0, r2
	bx lr
	arm_func_end FUN_020B7C58

	arm_func_start FUN_020B7C78
FUN_020B7C78: ; 0x020B7C78
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	movs r4, r1
	mov r5, r0
	beq _020B7C90
	bl GX_BeginLoadTexPltt
_020B7C90:
	ldrh r2, [r5, #0x30]
	ldr r0, [r5, #0x38]
	ldr r3, [r5, #0x2c]
	ldr r1, _020B7CD8 ; =0x0000FFFF
	add r0, r5, r0
	and r1, r3, r1
	mov r1, r1, lsl #0x3
	mov r2, r2, lsl #0x3
	bl GX_LoadTexPltt
	ldrh r0, [r5, #0x32]
	cmp r4, #0x0
	addeq sp, sp, #0x4
	orr r0, r0, #0x1
	strh r0, [r5, #0x32]
	ldmeqia sp!, {r4-r5,pc}
	bl GX_EndLoadTexPltt
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B7CD8: .word 0x0000FFFF
	arm_func_end FUN_020B7C78

	arm_func_start FUN_020B7CDC
FUN_020B7CDC: ; 0x020B7CDC
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end FUN_020B7CDC

	arm_func_start FUN_020B7CE4
FUN_020B7CE4: ; 0x020B7CE4
	ldrh r0, [r0, #0x30]
	mov r0, r0, lsl #0x3
	bx lr
	arm_func_end FUN_020B7CE4

	arm_func_start FUN_020B7CF0
FUN_020B7CF0: ; 0x020B7CF0
	ldrh r12, [r0, #0x10]
	mov r3, #0x0
	bic r12, r12, #0x1
	strh r12, [r0, #0x10]
	ldrh r12, [r0, #0x20]
	bic r12, r12, #0x1
	strh r12, [r0, #0x20]
	ldr r12, [r0, #0x8]
	str r12, [r1, #0x0]
	str r3, [r0, #0x8]
	ldr r1, [r0, #0x18]
	str r1, [r2, #0x0]
	str r3, [r0, #0x18]
	bx lr
	arm_func_end FUN_020B7CF0

	arm_func_start FUN_020B7D28
FUN_020B7D28: ; 0x020B7D28
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	movs r8, r1
	mov r9, r0
	beq _020B7D40
	bl GX_BeginLoadTex
_020B7D40:
	ldrh r0, [r9, #0xc]
	movs r2, r0, lsl #0x3
	beq _020B7D74
	ldr r1, [r9, #0x8]
	ldr r0, _020B7DF4 ; =0x0000FFFF
	ldr r3, [r9, #0x14]
	and r1, r1, r0
	add r0, r9, r3
	mov r1, r1, lsl #0x3
	bl GX_LoadTex
	ldrh r0, [r9, #0x10]
	orr r0, r0, #0x1
	strh r0, [r9, #0x10]
_020B7D74:
	ldrh r0, [r9, #0x1c]
	movs r7, r0, lsl #0x3
	beq _020B7DDC
	ldr r1, [r9, #0x18]
	ldr r0, _020B7DF4 ; =0x0000FFFF
	ldr r3, [r9, #0x24]
	and r4, r1, r0
	mov r5, r4, lsl #0x3
	ldr r6, [r9, #0x28]
	mov r1, r5
	mov r2, r7
	add r0, r9, r3
	add r6, r9, r6
	bl GX_LoadTex
	ldr r0, _020B7DF8 ; =0x0001FFFF
	and r1, r5, #0x40000
	and r0, r0, r4, lsl #0x3
	mov r0, r0, lsr #0x1
	add r2, r0, #0x20000
	mov r0, r6
	add r1, r2, r1, lsr #0x2
	mov r2, r7, lsr #0x1
	bl GX_LoadTex
	ldrh r0, [r9, #0x20]
	orr r0, r0, #0x1
	strh r0, [r9, #0x20]
_020B7DDC:
	cmp r8, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r9,pc}
	bl GX_EndLoadTex
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	.balign 4
_020B7DF4: .word 0x0000FFFF
_020B7DF8: .word 0x0001FFFF
	arm_func_end FUN_020B7D28

	arm_func_start FUN_020B7DFC
FUN_020B7DFC: ; 0x020B7DFC
	cmp r1, #0x0
	strne r1, [r0, #0x8]
	cmp r2, #0x0
	strne r2, [r0, #0x18]
	bx lr
	arm_func_end FUN_020B7DFC

	arm_func_start FUN_020B7E10
FUN_020B7E10: ; 0x020B7E10
	ldrh r0, [r0, #0x1c]
	mov r0, r0, lsl #0x3
	bx lr
	arm_func_end FUN_020B7E10

	arm_func_start FUN_020B7E1C
FUN_020B7E1C: ; 0x020B7E1C
	ldrh r0, [r0, #0xc]
	mov r0, r0, lsl #0x3
	bx lr
	arm_func_end FUN_020B7E1C

	arm_func_start FUN_020B7E28
FUN_020B7E28: ; 0x020B7E28
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	add r0, r5, #0x8
	mov r4, r1
	bl FUN_020B7E88
	cmp r0, #0x0
	bne _020B7E74
	mov r1, r4
	add r0, r5, #0x10
	bl FUN_020B7E88
	cmp r0, #0x0
	bne _020B7E74
	mov r1, r4
	add r0, r5, #0x18
	bl FUN_020B7E88
	cmp r0, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r5,pc}
_020B7E74:
	ldr r0, [r5, #0x0]
	orr r0, r0, #0x10
	str r0, [r5, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020B7E28

	arm_func_start FUN_020B7E88
FUN_020B7E88:
	ldr r2, [r0, #0x0]
	cmp r2, #0x0
	moveq r0, #0x0
	bxeq lr
	cmp r2, r1
	bne _020B7EB8
	ldr r3, [r2, #0x10]
	mov r2, #0x0
	str r3, [r0, #0x0]
	str r2, [r1, #0x10]
	mov r0, #0x1
	bx lr
_020B7EB8:
	ldr r3, [r2, #0x10]
	cmp r3, #0x0
	beq _020B7EF4
_020B7EC4:
	cmp r3, r1
	bne _020B7EE4
	ldr r1, [r3, #0x10]
	mov r0, #0x0
	str r1, [r2, #0x10]
	str r0, [r3, #0x10]
	mov r0, #0x1
	bx lr
_020B7EE4:
	mov r2, r3
	ldr r3, [r3, #0x10]
	cmp r3, #0x0
	bne _020B7EC4
_020B7EF4:
	mov r0, #0x0
	bx lr
	arm_func_end FUN_020B7E88

	arm_func_start FUN_020B7EFC
FUN_020B7EFC: ; 0x020B7EFC
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r4, r1
	ldr r2, [r4, #0x8]
	mov r5, r0
	ldrb r0, [r2, #0x0]
	cmp r0, #0x4a
	beq _020B7F50
	cmp r0, #0x4d
	beq _020B7F34
	cmp r0, #0x56
	beq _020B7F6C
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
_020B7F34:
	add r0, r5, #0x3c
	bl FUN_020B7F88
	mov r1, r4
	add r0, r5, #0x8
	bl FUN_020B7FF8
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
_020B7F50:
	add r0, r5, #0x44
	bl FUN_020B7F88
	mov r1, r4
	add r0, r5, #0x10
	bl FUN_020B7FF8
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
_020B7F6C:
	add r0, r5, #0x4c
	bl FUN_020B7F88
	mov r1, r4
	add r0, r5, #0x18
	bl FUN_020B7FF8
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020B7EFC

	arm_func_start FUN_020B7F88
FUN_020B7F88: ; 0x020B7F88
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	cmp r1, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r5,pc}
	mov r3, #0x1
	mov r4, #0x0
_020B7FA4:
	ldrb r2, [r1, #0x19]
	mov r5, r4
	cmp r2, #0x0
	ble _020B7FE4
_020B7FB4:
	add r2, r1, r5, lsl #0x1
	ldrh r2, [r2, #0x1a]
	ands r2, r2, #0x100
	movne lr, r5, asr #0x5
	andne r2, r5, #0x1f
	ldrne r12, [r0, lr, lsl #0x2]
	add r5, r5, #0x1
	orrne r2, r12, r3, lsl r2
	strne r2, [r0, lr, lsl #0x2]
	ldrb r2, [r1, #0x19]
	cmp r5, r2
	blt _020B7FB4
_020B7FE4:
	ldr r1, [r1, #0x10]
	cmp r1, #0x0
	bne _020B7FA4
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020B7F88

	arm_func_start FUN_020B7FF8
FUN_020B7FF8: ; 0x020B7FF8
	ldr r12, [r0, #0x0]
	cmp r12, #0x0
	streq r1, [r0, #0x0]
	bxeq lr
	ldr r3, [r12, #0x10]
	cmp r3, #0x0
	bne _020B8058
	ldrb r3, [r12, #0x18]
	ldrb r2, [r1, #0x18]
	cmp r3, r2
	bls _020B8050
	ldr r2, [r1, #0x10]
	mov r3, r1
	cmp r2, #0x0
	beq _020B8044
_020B8034:
	ldr r3, [r3, #0x10]
	ldr r2, [r3, #0x10]
	cmp r2, #0x0
	bne _020B8034
_020B8044:
	str r12, [r3, #0x10]
	str r1, [r0, #0x0]
	bx lr
_020B8050:
	str r1, [r12, #0x10]
	bx lr
_020B8058:
	cmp r3, #0x0
	beq _020B80AC
	ldrb r2, [r1, #0x18]
_020B8064:
	ldrb r0, [r3, #0x18]
	cmp r0, r2
	blo _020B809C
	ldr r0, [r1, #0x10]
	mov r2, r1
	cmp r0, #0x0
	beq _020B8090
_020B8080:
	ldr r2, [r2, #0x10]
	ldr r0, [r2, #0x10]
	cmp r0, #0x0
	bne _020B8080
_020B8090:
	str r1, [r12, #0x10]
	str r3, [r2, #0x10]
	bx lr
_020B809C:
	mov r12, r3
	ldr r3, [r3, #0x10]
	cmp r3, #0x0
	bne _020B8064
_020B80AC:
	str r1, [r12, #0x10]
	bx lr
	arm_func_end FUN_020B7FF8

	arm_func_start FUN_020B80B4
FUN_020B80B4: ; 0x020B80B4
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	mov r4, r1
	mov r1, r5
	mov r0, #0x0
	mov r2, #0x54
	bl MIi_CpuClear32
	ldr r0, _020B8104 ; =UNK_021065B4
	ldr r1, _020B8108 ; =UNK_021065B0
	ldr r2, [r0, #0x0]
	ldr r0, _020B810C ; =UNK_021065AC
	str r2, [r5, #0xc]
	ldr r1, [r1, #0x0]
	str r1, [r5, #0x14]
	ldr r0, [r0, #0x0]
	str r0, [r5, #0x1c]
	str r4, [r5, #0x4]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020B8104: .word UNK_021065B4
_020B8108: .word UNK_021065B0
_020B810C: .word UNK_021065AC
	arm_func_end FUN_020B80B4

	arm_func_start FUN_020B8110
FUN_020B8110: ; 0x020B8110
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r12, #0x0
	str r12, [r0, #0x0]
	str r1, [r0, #0x8]
	str r12, [r0, #0x10]
	mov r4, #0x7f
	strb r4, [r0, #0x18]
	mov r4, #0x1000
	str r4, [r0, #0x4]
	ldr lr, _020B81A4 ; =UNK_02106594
	str r3, [r0, #0x14]
	ldr r6, [lr, #0x0]
	cmp r6, #0x0
	addls sp, sp, #0x4
	ldmlsia sp!, {r4-r7,pc}
	ldrb r7, [r1, #0x0]
	ldr r4, _020B81A8 ; =UNK_021065B8
_020B8158:
	ldrb r3, [r4, r12, lsl #0x3]
	mov r5, r12, lsl #0x3
	cmp r7, r3
	bne _020B8190
	add r3, r4, r5
	ldrh lr, [r1, #0x2]
	ldrh r3, [r3, #0x2]
	cmp lr, r3
	bne _020B8190
	ldr r3, _020B81AC ; =UNK_021065BC
	ldr r3, [r3, r5]
	blx r3
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
_020B8190:
	add r12, r12, #0x1
	cmp r12, r6
	blo _020B8158
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B81A4: .word UNK_02106594
_020B81A8: .word UNK_021065B8
_020B81AC: .word UNK_021065BC
	arm_func_end FUN_020B8110

	arm_func_start FUN_020B81B0
FUN_020B81B0: ; 0x020B81B0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x4a
	beq _020B81E4
	cmp r0, #0x4d
	beq _020B81D0
	cmp r0, #0x56
	beq _020B81E4
	b _020B81F8
_020B81D0:
	ldrb r0, [r1, #0x18]
	mov r0, r0, lsl #0x1
	add r0, r0, #0x1c
	bic r0, r0, #0x3
	bx lr
_020B81E4:
	ldrb r0, [r1, #0x17]
	mov r0, r0, lsl #0x1
	add r0, r0, #0x1c
	bic r0, r0, #0x3
	bx lr
_020B81F8:
	mov r0, #0x0
	bx lr
	arm_func_end FUN_020B81B0

	arm_func_start FUN_020B8200
FUN_020B8200: ; 0x020B8200
	cmp r0, #0x0
	ldrne ip, _020B8260 ; =UNK_021CED18
	ldrne r12, [r12, #0xa0]
	andne r12, r12, #0xff
	strne r12, [r0, #0x0]
	cmp r1, #0x0
	ldrne r0, _020B8260 ; =UNK_021CED18
	ldrne r0, [r0, #0xa0]
	movne r0, r0, lsr #0x8
	andne r0, r0, #0xff
	strne r0, [r1, #0x0]
	cmp r2, #0x0
	ldrne r0, _020B8260 ; =UNK_021CED18
	ldrne r0, [r0, #0xa0]
	movne r0, r0, lsr #0x10
	andne r0, r0, #0xff
	strne r0, [r2, #0x0]
	cmp r3, #0x0
	ldrne r0, _020B8260 ; =UNK_021CED18
	ldrne r0, [r0, #0xa0]
	movne r0, r0, lsr #0x18
	andne r0, r0, #0xff
	strne r0, [r3, #0x0]
	bx lr
	.balign 4
_020B8260: .word UNK_021CED18
	arm_func_end FUN_020B8200

	arm_func_start FUN_020B8264
FUN_020B8264: ; 0x020B8264
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r0, _020B829C ; =UNK_021CED18
	ldr r0, [r0, #0xfc]
	ands r0, r0, #0x80
	bne _020B8290
	bl FUN_020B82E4
	ldr r0, _020B829C ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	orr r1, r1, #0x80
	str r1, [r0, #0xfc]
_020B8290:
	ldr r0, _020B82A0 ; =UNK_021CEE78
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B829C: .word UNK_021CED18
_020B82A0: .word UNK_021CEE78
	arm_func_end FUN_020B8264

	arm_func_start FUN_020B82A4
FUN_020B82A4: ; 0x020B82A4
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r0, _020B82DC ; =UNK_021CED18
	ldr r0, [r0, #0xfc]
	ands r0, r0, #0x80
	bne _020B82D0
	bl FUN_020B82E4
	ldr r0, _020B82DC ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	orr r1, r1, #0x80
	str r1, [r0, #0xfc]
_020B82D0:
	ldr r0, _020B82E0 ; =UNK_021CEE48
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B82DC: .word UNK_021CED18
_020B82E0: .word UNK_021CEE48
	arm_func_end FUN_020B82A4

	arm_func_start FUN_020B82E4
FUN_020B82E4: ; 0x020B82E4
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r0, _020B8330 ; =UNK_021CEDD4
	ldr r1, _020B8334 ; =UNK_021CED64
	ldr r2, _020B8338 ; =UNK_021CEE48
	bl MTX_Concat43
	ldr r3, _020B833C ; =UNK_021CED18
	ldr r0, _020B8338 ; =UNK_021CEE48
	ldr r2, [r3, #0xf4]
	mov r1, r0
	str r2, [sp, #0x0]
	ldr r2, [r3, #0xec]
	ldr r3, [r3, #0xf0]
	bl MTX_ScaleApply43
	ldr r0, _020B8338 ; =UNK_021CEE48
	ldr r1, _020B8340 ; =UNK_021CEE78
	bl MTX_Inverse43
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B8330: .word UNK_021CEDD4
_020B8334: .word UNK_021CED64
_020B8338: .word UNK_021CEE48
_020B833C: .word UNK_021CED18
_020B8340: .word UNK_021CEE78
	arm_func_end FUN_020B82E4

	arm_func_start FUN_020B8344
FUN_020B8344: ; 0x020B8344
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r0, _020B8384 ; =UNK_021CED18
	ldr r0, [r0, #0xfc]
	ands r0, r0, #0x8
	bne _020B8378
	ldr r0, _020B8388 ; =UNK_021CED64
	ldr r1, _020B838C ; =UNK_021CEE18
	bl MTX_Inverse43
	ldr r0, _020B8384 ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	orr r1, r1, #0x8
	str r1, [r0, #0xfc]
_020B8378:
	ldr r0, _020B838C ; =UNK_021CEE18
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B8384: .word UNK_021CED18
_020B8388: .word UNK_021CED64
_020B838C: .word UNK_021CEE18
	arm_func_end FUN_020B8344

	arm_func_start FUN_020B8390
FUN_020B8390: ; 0x020B8390
	orr r0, r0, r1, lsl #0x4
	ldr r1, [sp, #0x4]
	orr r0, r0, r2, lsl #0x6
	orr r0, r1, r0
	ldr r2, [sp, #0x0]
	orr r1, r0, r3, lsl #0x18
	ldr r0, _020B83B8 ; =UNK_021CED18
	orr r1, r1, r2, lsl #0x10
	str r1, [r0, #0x9c]
	bx lr
	.balign 4
_020B83B8: .word UNK_021CED18
	arm_func_end FUN_020B8390

	arm_func_start FUN_020B83BC
FUN_020B83BC: ; 0x020B83BC
	cmp r2, #0x0
	movne r2, #0x1
	orr r1, r0, r1, lsl #0x10
	moveq r2, #0x0
	ldr r0, _020B83DC ; =UNK_021CED18
	orr r1, r1, r2, lsl #0xf
	str r1, [r0, #0x98]
	bx lr
	.balign 4
_020B83DC: .word UNK_021CED18
	arm_func_end FUN_020B83BC

	arm_func_start FUN_020B83E0
FUN_020B83E0: ; 0x020B83E0
	cmp r2, #0x0
	movne r2, #0x1
	orr r1, r0, r1, lsl #0x10
	moveq r2, #0x0
	ldr r0, _020B8400 ; =UNK_021CED18
	orr r1, r1, r2, lsl #0xf
	str r1, [r0, #0x94]
	bx lr
	.balign 4
_020B8400: .word UNK_021CED18
	arm_func_end FUN_020B83E0

	arm_func_start FUN_020B8404
FUN_020B8404: ; 0x020B8404
	ldr r2, _020B8414 ; =UNK_021CEDC0
	orr r1, r1, r0, lsl #0x1e
	str r1, [r2, r0, lsl #0x2]
	bx lr
	.balign 4
_020B8414: .word UNK_021CEDC0
	arm_func_end FUN_020B8404

	arm_func_start FUN_020B8418
FUN_020B8418: ; 0x020B8418
	stmdb sp!, {r4,lr}
	ldr ip, _020B8444 ; =0x000003FF
	ldr lr, _020B8448 ; =UNK_021CED98
	and r4, r12, r1, asr #0x3
	and r1, r12, r2, asr #0x3
	and r2, r12, r3, asr #0x3
	orr r1, r4, r1, lsl #0xa
	orr r1, r1, r2, lsl #0x14
	orr r1, r1, r0, lsl #0x1e
	str r1, [lr, r0, lsl #0x2]
	ldmia sp!, {r4,pc}
	.balign 4
_020B8444: .word 0x000003FF
_020B8448: .word UNK_021CED98
	arm_func_end FUN_020B8418

	arm_func_start FUN_020B844C
FUN_020B844C: ; 0x020B844C
	ldr r3, _020B846C ; =UNK_021CEE04
	ldmia r0, {r0-r2}
	stmia r3, {r0-r2}
	ldr r0, _020B8470 ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	bic r1, r1, #0xa4
	str r1, [r0, #0xfc]
	bx lr
	.balign 4
_020B846C: .word UNK_021CEE04
_020B8470: .word UNK_021CED18
	arm_func_end FUN_020B844C

	arm_func_start FUN_020B8474
FUN_020B8474: ; 0x020B8474
	ldr r3, _020B8494 ; =UNK_021CEDF8
	ldmia r0, {r0-r2}
	stmia r3, {r0-r2}
	ldr r0, _020B8498 ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	bic r1, r1, #0xa4
	str r1, [r0, #0xfc]
	bx lr
	.balign 4
_020B8494: .word UNK_021CEDF8
_020B8498: .word UNK_021CED18
	arm_func_end FUN_020B8474

	arm_func_start FUN_020B849C
FUN_020B849C: ; 0x020B849C
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r1, _020B84D4 ; =UNK_021CED18
	mov r2, #0x3e
	ldr r0, [r1], #0x4
	bl FUN_020BB1C0
	ldr r0, _020B84D4 ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	bic r1, r1, #0x1
	str r1, [r0, #0xfc]
	bic r1, r1, #0x2
	str r1, [r0, #0xfc]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020B84D4: .word UNK_021CED18
	arm_func_end FUN_020B849C

	arm_func_start FUN_020B84D8
FUN_020B84D8: ; 0x020B84D8
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	ldr r8, _020B85F4 ; =0x17101610
	ldr r1, _020B85F8 ; =UNK_021CED18
	ldr r5, _020B85FC ; =0x32323232
	ldr r4, _020B8600 ; =0x60293130
	ldr r3, _020B8604 ; =0x33333333
	ldr r2, _020B8608 ; =0x002A1B19
	mov r7, #0x0
	mov r6, #0x2
	ldr r0, _020B860C ; =UNK_021CED64
	str r8, [r1, #0x0]
	str r7, [r1, #0x4]
	str r6, [r1, #0x48]
	str r5, [r1, #0x7c]
	str r4, [r1, #0x90]
	str r3, [r1, #0xa4]
	str r2, [r1, #0xb8]
	bl MTX_Identity43_
	ldr r0, _020B8610 ; =UNK_021CED20
	bl MTX_Identity44_
	mov r2, r7
	ldr r1, _020B85F8 ; =UNK_021CED18
	ldr r7, _020B8614 ; =0x4210C210
	ldr r0, _020B8618 ; =0x40000200
	ldr lr, _020B861C ; =0x2D8B62D8
	ldr sb, _020B8620 ; =0x800001FF
	ldr r8, _020B8624 ; =0xC0080000
	ldr r6, _020B8628 ; =0x001F008F
	ldr r5, _020B862C ; =0xBFFF0000
	ldr r4, _020B8630 ; =0x00007FFF
	ldr ip, _020B8634 ; =0x800003E0
	ldr r3, _020B8638 ; =0xC0007C00
	str r0, [r1, #0x84]
	str lr, [r1, #0x80]
	mov lr, #0x4000001f
	ldr r0, _020B863C ; =UNK_021CEDD4
	str r9, [r1, #0x88]
	str r8, [r1, #0x8c]
	str r7, [r1, #0x94]
	str r7, [r1, #0x98]
	str r6, [r1, #0x9c]
	str r5, [r1, #0xa0]
	str r4, [r1, #0xa8]
	str lr, [r1, #0xac]
	str r12, [r1, #0xb0]
	str r3, [r1, #0xb4]
	str r2, [r1, #0xe0]
	str r2, [r1, #0xe4]
	str r2, [r1, #0xe8]
	bl MTX_Identity33_
	mov r3, #0x1000
	ldr r0, _020B85F8 ; =UNK_021CED18
	mov r2, #0x0
	rsb r1, r3, #0x0
	str r3, [r0, #0xec]
	str r3, [r0, #0xf0]
	str r3, [r0, #0xf4]
	str r2, [r0, #0xf8]
	str r2, [r0, #0xfc]
	str r2, [r0, #0x248]
	str r2, [r0, #0x244]
	str r2, [r0, #0x240]
	str r2, [r0, #0x254]
	str r2, [r0, #0x24c]
	str r3, [r0, #0x250]
	str r2, [r0, #0x25c]
	str r2, [r0, #0x258]
	str r1, [r0, #0x260]
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	.balign 4
_020B85F4: .word 0x17101610
_020B85F8: .word UNK_021CED18
_020B85FC: .word 0x32323232
_020B8600: .word 0x60293130
_020B8604: .word 0x33333333
_020B8608: .word 0x002A1B19
_020B860C: .word UNK_021CED64
_020B8610: .word UNK_021CED20
_020B8614: .word 0x4210C210
_020B8618: .word 0x40000200
_020B861C: .word 0x2D8B62D8
_020B8620: .word 0x800001FF
_020B8624: .word 0xC0080000
_020B8628: .word 0x001F008F
_020B862C: .word 0xBFFF0000
_020B8630: .word 0x00007FFF
_020B8634: .word 0x800003E0
_020B8638: .word 0xC0007C00
_020B863C: .word UNK_021CEDD4
	arm_func_end FUN_020B84D8

	arm_func_start FUN_020B8640
FUN_020B8640: ; 0x020B8640
	stmdb sp!, {r4-r8,lr}
	sub sp, sp, #0x8
	mov r7, r0
	mov r0, #0x0
	mov r6, r1
	str r0, [r7, #0x0]
	add r4, sp, #0x0
	mov r5, r2, lsl #0x1
	mov r8, #0x1
_020B8664:
	add r1, r5, r6
	ldrh r2, [r1, #0x1a]
	ands r1, r2, #0x100
	beq _020B869C
	ldr r3, [r6, #0xc]
	mov r0, r4
	mov r1, r6
	and r2, r2, #0xff
	blx r3
	ldr r2, [r7, #0x0]
	ldr r1, [sp, #0x0]
	mov r0, r8
	orr r1, r2, r1
	str r1, [r7, #0x0]
_020B869C:
	ldr r6, [r6, #0x10]
	cmp r6, #0x0
	bne _020B8664
	add sp, sp, #0x8
	ldmia sp!, {r4-r8,pc}
	arm_func_end FUN_020B8640

	arm_func_start FUN_020B86B0
FUN_020B86B0: ; 0x020B86B0
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x5c
	mov r9, r1
	ldr r3, [r9, #0x10]
	mov r10, r0
	mov r8, r2
	cmp r3, #0x0
	bne _020B8704
	add r2, r9, r8, lsl #0x1
	ldrh r4, [r2, #0x1a]
	and r2, r4, #0x300
	cmp r2, #0x100
	addne sp, sp, #0x5c
	movne r0, #0x0
	ldmneia sp!, {r4-r11,pc}
	ldr r3, [r9, #0xc]
	and r2, r4, #0xff
	blx r3
	add sp, sp, #0x5c
	mov r0, #0x1
	ldmia sp!, {r4-r11,pc}
_020B8704:
	mov r7, #0x0
	mov r3, r7
	mov r4, r9
	mov r2, r8, lsl #0x1
_020B8714:
	add r0, r2, r4
	ldrh r0, [r0, #0x1a]
	and r0, r0, #0x300
	cmp r0, #0x100
	ldreq r0, [r4, #0x4]
	moveq r1, r4
	ldr r4, [r4, #0x10]
	addeq r7, r7, r0
	addeq r3, r3, #0x1
	cmp r4, #0x0
	bne _020B8714
	cmp r7, #0x0
	addeq sp, sp, #0x5c
	moveq r0, #0x0
	ldmeqia sp!, {r4-r11,pc}
	cmp r3, #0x1
	bne _020B877C
	add r0, r1, r8, lsl #0x1
	ldrh r2, [r0, #0x1a]
	ldr r3, [r1, #0xc]
	mov r0, r10
	and r2, r2, #0xff
	blx r3
	add sp, sp, #0x5c
	mov r0, #0x1
	ldmia sp!, {r4-r11,pc}
_020B877C:
	mov r1, r10
	mov r0, #0x0
	mov r2, #0x58
	bl MIi_CpuClearFast
	mvn r0, #0x0
	str r0, [r10, #0x0]
	add r5, sp, #0x0
	add r4, sp, #0x4
	add r11, sp, #0x10
_020B87A0:
	add r0, r9, r8, lsl #0x1
	ldrh r2, [r0, #0x1a]
	and r0, r2, #0x300
	cmp r0, #0x100
	bne _020B8948
	ldr r0, [r9, #0x4]
	cmp r0, #0x0
	ble _020B8948
	ldr r3, [r9, #0xc]
	mov r0, r5
	mov r1, r9
	and r2, r2, #0xff
	blx r3
	cmp r7, #0x1000
	ldreq r6, [r9, #0x4]
	beq _020B87F0
	ldr r0, [r9, #0x4]
	mov r1, r7
	bl FX_Div
	mov r6, r0
_020B87F0:
	ldr r3, [sp, #0x0]
	mov r1, r4
	mov r2, r6
	add r0, r10, #0x4
	and r3, r3, #0x1
	bl FUN_020B8998
	ldr r1, [sp, #0x0]
	add r0, r10, #0x10
	and r3, r1, #0x8
	mov r1, r11
	mov r2, r6
	bl FUN_020B8998
	ldr r3, [sp, #0x0]
	add r0, r10, #0x1c
	add r1, sp, #0x1c
	mov r2, r6
	and r3, r3, #0x10
	bl FUN_020B8998
	ldr r0, [sp, #0x0]
	ands r0, r0, #0x4
	bne _020B8898
	ldr r0, [sp, #0x4c]
	ldr r2, [r10, #0x4c]
	smull r1, r0, r6, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	add r0, r2, r1
	str r0, [r10, #0x4c]
	ldr r0, [sp, #0x50]
	ldr r2, [r10, #0x50]
	smull r1, r0, r6, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	add r0, r2, r1
	str r0, [r10, #0x50]
	ldr r0, [sp, #0x54]
	ldr r2, [r10, #0x54]
	smull r1, r0, r6, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	add r0, r2, r1
	str r0, [r10, #0x54]
_020B8898:
	ldr r0, [sp, #0x0]
	ands r0, r0, #0x2
	bne _020B8920
	ldr r0, [sp, #0x28]
	ldr r1, [r10, #0x28]
	mul r0, r6, r0
	add r0, r1, r0, asr #0xc
	str r0, [r10, #0x28]
	ldr r0, [sp, #0x2c]
	ldr r1, [r10, #0x2c]
	mul r0, r6, r0
	add r0, r1, r0, asr #0xc
	str r0, [r10, #0x2c]
	ldr r0, [sp, #0x30]
	ldr r1, [r10, #0x30]
	mul r0, r6, r0
	add r0, r1, r0, asr #0xc
	str r0, [r10, #0x30]
	ldr r0, [sp, #0x34]
	ldr r1, [r10, #0x34]
	mul r0, r6, r0
	add r0, r1, r0, asr #0xc
	str r0, [r10, #0x34]
	ldr r0, [sp, #0x38]
	ldr r1, [r10, #0x38]
	mul r0, r6, r0
	add r0, r1, r0, asr #0xc
	str r0, [r10, #0x38]
	ldr r0, [sp, #0x3c]
	ldr r1, [r10, #0x3c]
	mul r0, r6, r0
	add r0, r1, r0, asr #0xc
	str r0, [r10, #0x3c]
	b _020B8938
_020B8920:
	ldr r0, [r10, #0x28]
	add r0, r0, r6
	str r0, [r10, #0x28]
	ldr r0, [r10, #0x38]
	add r0, r0, r6
	str r0, [r10, #0x38]
_020B8938:
	ldr r1, [r10, #0x0]
	ldr r0, [sp, #0x0]
	and r0, r1, r0
	str r0, [r10, #0x0]
_020B8948:
	ldr r9, [r9, #0x10]
	cmp r9, #0x0
	bne _020B87A0
	add r0, r10, #0x28
	add r1, r10, #0x34
	add r2, r10, #0x40
	bl VEC_CrossProduct
	add r0, r10, #0x28
	mov r1, r0
	bl VEC_Normalize
	add r0, r10, #0x40
	mov r1, r0
	bl VEC_Normalize
	add r0, r10, #0x40
	add r1, r10, #0x28
	add r2, r10, #0x34
	bl VEC_CrossProduct
	mov r0, #0x1
	add sp, sp, #0x5c
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020B86B0

	arm_func_start FUN_020B8998
FUN_020B8998:
	cmp r3, #0x0
	beq _020B89C8
	ldr r1, [r0, #0x0]
	add r1, r1, r2
	str r1, [r0, #0x0]
	ldr r1, [r0, #0x4]
	add r1, r1, r2
	str r1, [r0, #0x4]
	ldr r1, [r0, #0x8]
	add r1, r1, r2
	str r1, [r0, #0x8]
	bx lr
_020B89C8:
	ldr r3, [r1, #0x0]
	ldr r12, [r0, #0x0]
	mul r3, r2, r3
	add r3, r12, r3, asr #0xc
	str r3, [r0, #0x0]
	ldr r3, [r1, #0x4]
	ldr r12, [r0, #0x4]
	mul r3, r2, r3
	add r3, r12, r3, asr #0xc
	str r3, [r0, #0x4]
	ldr r1, [r1, #0x8]
	ldr r3, [r0, #0x8]
	mul r1, r2, r1
	add r1, r3, r1, asr #0xc
	str r1, [r0, #0x8]
	bx lr
	arm_func_end FUN_020B8998

	arm_func_start FUN_020B8A08
FUN_020B8A08: ; 0x020B8A08
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r6, r0
	mov r5, r1
	mov r0, #0x0
	mov r4, r2, lsl #0x1
	mov r7, #0x1
_020B8A24:
	add r1, r4, r5
	ldrh r2, [r1, #0x1a]
	ands r1, r2, #0x100
	beq _020B8A4C
	ldr r3, [r5, #0xc]
	mov r0, r6
	mov r1, r5
	and r2, r2, #0xff
	blx r3
	mov r0, r7
_020B8A4C:
	ldr r5, [r5, #0x10]
	cmp r5, #0x0
	bne _020B8A24
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020B8A08

	arm_func_start FUN_020B8A60
FUN_020B8A60: ; 0x020B8A60
	stmdb sp!, {r4-r6,lr}
	sub sp, sp, #0x80
	mov r5, r0
	ldr r1, [r5, #0x8]
	ands r0, r1, #0x200
	bne _020B8DB4
	ands r0, r1, #0x1
	beq _020B8DB4
	add r0, sp, #0x10
	mov r1, #0x0
	bl FUN_020BB824
	mov r0, #0x1e
	str r0, [sp, #0x0]
	add r1, sp, #0x0
	mov r0, #0x13
	mov r2, #0x1
	bl FUN_020BB1C0
	ldr r2, [r5, #0xb0]
	ldr r0, [r2, #0x10]
	and r1, r0, #0xc0000000
	cmp r1, #0xc0000000
	beq _020B8AF0
	bic r0, r0, #0xc0000000
	str r0, [r2, #0x10]
	ldr r2, [r5, #0xb0]
	ldr r3, _020B8DC8 ; =UNK_02106630
	ldr r0, [r2, #0x10]
	ldr r1, _020B8DCC ; =UNK_02106634
	orr r0, r0, #0xc0000000
	str r0, [r2, #0x10]
	ldr r2, [r5, #0xb0]
	ldr r0, [r3, #0x0]
	ldr r4, [r2, #0x10]
	mov r2, #0x1
	str r4, [r3, #0x4]
	bl FUN_020BB1C0
_020B8AF0:
	ldr r0, [r5, #0x40]
	cmp r0, #0x0
	ldrneb r4, [r5, #0x99]
	moveq r4, #0x0
	cmp r4, #0x1
	bne _020B8B3C
	ldr r1, [r5, #0x8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #0x8]
	ldr r1, [r5, #0x40]
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0x0
	ldrneb r4, [r5, #0x99]
	ldr r0, [r5, #0x8]
	moveq r4, #0x0
	and r0, r0, #0x40
	b _020B8B40
_020B8B3C:
	mov r0, #0x0
_020B8B40:
	cmp r0, #0x0
	bne _020B8B84
	ldr r0, [r5, #0xb0]
	ldr r1, _020B8DD0 ; =UNK_02106660
	ldrh r6, [r0, #0x2e]
	ldrh r3, [r0, #0x2c]
	mov r0, #0x16
	rsb r2, r6, #0x0
	mov lr, r3, lsl #0xf
	mov r12, r2, lsl #0xf
	mov r3, r6, lsl #0xf
	mov r2, #0x10
	str lr, [r1, #0x0]
	str r12, [r1, #0x14]
	str lr, [r1, #0x30]
	str r3, [r1, #0x34]
	bl FUN_020BB1C0
_020B8B84:
	cmp r4, #0x2
	bne _020B8BC0
	ldr r1, [r5, #0x8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #0x8]
	ldr r1, [r5, #0x40]
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0x0
	ldrneb r4, [r5, #0x99]
	ldr r0, [r5, #0x8]
	moveq r4, #0x0
	and r0, r0, #0x40
	b _020B8BC4
_020B8BC0:
	mov r0, #0x0
_020B8BC4:
	cmp r0, #0x0
	bne _020B8C28
	ldr r12, [r5, #0xd8]
	ldr r0, [r5, #0x0]
	ldrh r2, [r12, #0xa]
	add r3, r12, #0x4
	ldrb r0, [r0, #0x1]
	ldrh r1, [r3, r2]
	add r2, r3, r2
	mla r0, r1, r0, r2
	ldr r0, [r0, #0x4]
	add r1, r12, r0
	ldrh r2, [r1, #0x1e]
	ands r0, r2, #0x2000
	beq _020B8C28
	add r1, r1, #0x2c
	ands r0, r2, #0x2
	addeq r1, r1, #0x8
	ands r0, r2, #0x4
	addeq r1, r1, #0x4
	ands r0, r2, #0x8
	addeq r1, r1, #0x8
	mov r0, #0x18
	mov r2, #0x10
	bl FUN_020BB1C0
_020B8C28:
	cmp r4, #0x3
	movne r0, #0x0
	bne _020B8C54
	ldr r1, [r5, #0x8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #0x8]
	ldr r1, [r5, #0x40]
	blx r1
	ldr r0, [r5, #0x8]
	and r0, r0, #0x40
_020B8C54:
	cmp r0, #0x0
	bne _020B8D84
	ldr r0, _020B8DD4 ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	ands r0, r1, #0x1
	beq _020B8CA0
	ldr r1, _020B8DD8 ; =UNK_021CEDF8
	mov r0, #0x1c
	mov r2, #0x3
	bl FUN_020BB1C0
	ldr r1, _020B8DDC ; =UNK_021CEDD4
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
	add r1, sp, #0x10
	mov r0, #0x19
	mov r2, #0xc
	bl FUN_020BB1C0
	b _020B8CE0
_020B8CA0:
	ands r0, r1, #0x2
	beq _020B8CBC
	add r1, sp, #0x10
	mov r0, #0x19
	mov r2, #0xc
	bl FUN_020BB1C0
	b _020B8CE0
_020B8CBC:
	bl FUN_020B8344
	mov r1, r0
	mov r0, #0x19
	mov r2, #0xc
	bl FUN_020BB1C0
	add r1, sp, #0x10
	mov r0, #0x19
	mov r2, #0xc
	bl FUN_020BB1C0
_020B8CE0:
	bl FUN_020BB394
	ldr r0, _020B8DE0 ; =0x04000440
	mov r2, #0x0
	ldr r1, _020B8DE4 ; =0x04000444
	str r2, [r0, #0x0]
	ldr r0, _020B8DE8 ; =0x04000454
	str r2, [r1, #0x0]
	str r2, [r0, #0x0]
	add r4, sp, #0x40
_020B8D04:
	mov r0, r4
	bl G3X_GetClipMtx
	cmp r0, #0x0
	bne _020B8D04
	ldr r1, _020B8DEC ; =0x04000448
	mov r2, #0x1
	str r2, [r1, #0x0]
	ldr r0, _020B8DE0 ; =0x04000440
	mov r2, #0x3
	str r2, [r0, #0x0]
	add r1, sp, #0x40
	mov r0, #0x16
	mov r2, #0x10
	bl FUN_020BB1C0
	ldr r1, [sp, #0x70]
	ldr r0, [sp, #0x74]
	mov r2, r1, asr #0x4
	mov r1, r0, asr #0x4
	mov r0, r2, lsl #0x8
	mov r1, r1, lsl #0x8
	mov r0, r0, asr #0x10
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r3, r2, r0, lsl #0x10
	add r1, sp, #0x4
	mov r0, #0x22
	mov r2, #0x1
	str r3, [sp, #0x4]
	bl FUN_020BB1C0
_020B8D84:
	mov r3, #0x2
	add r1, sp, #0x8
	mov r0, #0x10
	mov r2, #0x1
	str r3, [sp, #0x8]
	bl FUN_020BB1C0
	mov r3, #0x1e
	add r1, sp, #0xc
	mov r0, #0x14
	mov r2, #0x1
	str r3, [sp, #0xc]
	bl FUN_020BB1C0
_020B8DB4:
	ldr r0, [r5, #0x0]
	add r0, r0, #0x3
	str r0, [r5, #0x0]
	add sp, sp, #0x80
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020B8DC8: .word UNK_02106630
_020B8DCC: .word UNK_02106634
_020B8DD0: .word UNK_02106660
_020B8DD4: .word UNK_021CED18
_020B8DD8: .word UNK_021CEDF8
_020B8DDC: .word UNK_021CEDD4
_020B8DE0: .word 0x04000440
_020B8DE4: .word 0x04000444
_020B8DE8: .word 0x04000454
_020B8DEC: .word 0x04000448
	arm_func_end FUN_020B8A60

	arm_func_start FUN_020B8DF0
FUN_020B8DF0: ; 0x020B8DF0
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x44
	mov r7, r0
	ldr r1, [r7, #0x8]
	ands r0, r1, #0x200
	bne _020B90E8
	ands r0, r1, #0x1
	beq _020B90E8
	ldr r2, [r7, #0xb0]
	ldr r0, [r2, #0x10]
	and r1, r0, #0xc0000000
	cmp r1, #0x80000000
	beq _020B8E5C
	bic r0, r0, #0xc0000000
	str r0, [r2, #0x10]
	ldr r2, [r7, #0xb0]
	ldr r3, _020B90FC ; =UNK_02106638
	ldr r0, [r2, #0x10]
	ldr r1, _020B9100 ; =UNK_0210663C
	orr r0, r0, #0x80000000
	str r0, [r2, #0x10]
	ldr r2, [r7, #0xb0]
	ldr r0, [r3, #0x0]
	ldr r4, [r2, #0x10]
	mov r2, #0x1
	str r4, [r3, #0x4]
	bl FUN_020BB1C0
_020B8E5C:
	mov r0, #0x3
	str r0, [sp, #0x0]
	add r1, sp, #0x0
	mov r0, #0x10
	mov r2, #0x1
	bl FUN_020BB1C0
	ldr r0, [r7, #0x3c]
	cmp r0, #0x0
	ldrneb r6, [r7, #0x98]
	moveq r6, #0x0
	cmp r6, #0x1
	bne _020B8EC0
	ldr r1, [r7, #0x8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #0x8]
	ldr r1, [r7, #0x3c]
	blx r1
	ldr r0, [r7, #0x3c]
	cmp r0, #0x0
	ldrneb r6, [r7, #0x98]
	ldr r0, [r7, #0x8]
	moveq r6, #0x0
	and r0, r0, #0x40
	b _020B8EC4
_020B8EC0:
	mov r0, #0x0
_020B8EC4:
	cmp r0, #0x0
	bne _020B8F3C
	ldr r0, [r7, #0xb0]
	add r1, sp, #0x38
	ldrh r4, [r0, #0x2e]
	ldrh r5, [r0, #0x2c]
	mov r3, #0x10000
	rsb r0, r4, #0x0
	mov r12, r0, lsl #0xf
	mov lr, r5, lsl #0xf
	mov r0, #0x1b
	mov r2, #0x3
	str lr, [sp, #0x38]
	str r12, [sp, #0x3c]
	str r3, [sp, #0x40]
	bl FUN_020BB1C0
	mov r0, r5, lsl #0x13
	mov r1, r4, lsl #0x13
	mov r0, r0, asr #0x10
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r3, r2, r0, lsl #0x10
	add r1, sp, #0x4
	mov r0, #0x22
	mov r2, #0x1
	str r3, [sp, #0x4]
	bl FUN_020BB1C0
_020B8F3C:
	cmp r6, #0x2
	bne _020B8F78
	ldr r1, [r7, #0x8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #0x8]
	ldr r1, [r7, #0x3c]
	blx r1
	ldr r0, [r7, #0x3c]
	cmp r0, #0x0
	ldrneb r6, [r7, #0x98]
	ldr r0, [r7, #0x8]
	moveq r6, #0x0
	and r0, r0, #0x40
	b _020B8F7C
_020B8F78:
	mov r0, #0x0
_020B8F7C:
	cmp r0, #0x0
	bne _020B8FE0
	ldr r4, [r7, #0xd8]
	ldr r0, [r7, #0x0]
	ldrh r2, [r4, #0xa]
	add r3, r4, #0x4
	ldrb r0, [r0, #0x1]
	ldrh r1, [r3, r2]
	add r2, r3, r2
	mla r0, r1, r0, r2
	ldr r0, [r0, #0x4]
	add r1, r4, r0
	ldrh r2, [r1, #0x1e]
	ands r0, r2, #0x2000
	beq _020B8FE0
	add r1, r1, #0x2c
	ands r0, r2, #0x2
	addeq r1, r1, #0x8
	ands r0, r2, #0x4
	addeq r1, r1, #0x4
	ands r0, r2, #0x8
	addeq r1, r1, #0x8
	mov r0, #0x18
	mov r2, #0x10
	bl FUN_020BB1C0
_020B8FE0:
	cmp r6, #0x3
	movne r0, #0x0
	bne _020B900C
	ldr r1, [r7, #0x8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #0x8]
	ldr r1, [r7, #0x3c]
	blx r1
	ldr r0, [r7, #0x8]
	and r0, r0, #0x40
_020B900C:
	cmp r0, #0x0
	bne _020B90D0
	mov r3, #0x2
	add r1, sp, #0x8
	mov r0, #0x10
	mov r2, #0x1
	str r3, [sp, #0x8]
	bl FUN_020BB1C0
	add r1, sp, #0x14
	mov r0, #0x0
	bl FUN_020BB824
	mov r3, #0x3
	add r1, sp, #0xc
	mov r0, #0x10
	mov r2, #0x1
	str r3, [sp, #0xc]
	bl FUN_020BB1C0
	ldr r0, _020B9104 ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	ands r0, r1, #0x1
	beq _020B9094
	ldr r1, _020B9108 ; =UNK_021CED64
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
	ldr r1, _020B910C ; =UNK_021CEDD4
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
	add r1, sp, #0x14
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
	b _020B90D0
_020B9094:
	ands r0, r1, #0x2
	beq _020B90C0
	ldr r1, _020B9108 ; =UNK_021CED64
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
	add r1, sp, #0x14
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
	b _020B90D0
_020B90C0:
	add r1, sp, #0x14
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
_020B90D0:
	mov r3, #0x2
	add r1, sp, #0x10
	mov r0, #0x10
	mov r2, #0x1
	str r3, [sp, #0x10]
	bl FUN_020BB1C0
_020B90E8:
	ldr r0, [r7, #0x0]
	add r0, r0, #0x3
	str r0, [r7, #0x0]
	add sp, sp, #0x44
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020B90FC: .word UNK_02106638
_020B9100: .word UNK_0210663C
_020B9104: .word UNK_021CED18
_020B9108: .word UNK_021CED64
_020B910C: .word UNK_021CEDD4
	arm_func_end FUN_020B8DF0

	arm_func_start FUN_020B9110
FUN_020B9110: ; 0x020B9110
	stmdb sp!, {r4,lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r2, [r4, #0x8]
	ands r0, r2, #0x100
	bne _020B9164
	ands r0, r2, #0x200
	bne _020B9164
	cmp r1, #0x0
	ldreq r0, [r4, #0xe0]
	add r1, sp, #0x0
	streq r0, [sp, #0x8]
	streq r0, [sp, #0x4]
	streq r0, [sp, #0x0]
	ldrne r0, [r4, #0xe4]
	mov r2, #0x3
	strne r0, [sp, #0x8]
	strne r0, [sp, #0x4]
	strne r0, [sp, #0x0]
	mov r0, #0x1b
	bl FUN_020BB1C0
_020B9164:
	ldr r0, [r4, #0x0]
	add r0, r0, #0x1
	str r0, [r4, #0x0]
	add sp, sp, #0x10
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020B9110

	arm_func_start FUN_020B9178
FUN_020B9178: ; 0x020B9178
	stmdb sp!, {r4-r6,lr}
	mov r5, r0
	ldr r0, [r5, #0x34]
	cmp r0, #0x0
	ldrneb r4, [r5, #0x96]
	moveq r4, #0x0
	cmp r4, #0x1
	bne _020B91CC
	ldr r1, [r5, #0x8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #0x8]
	ldr r1, [r5, #0x34]
	blx r1
	ldr r0, [r5, #0x34]
	cmp r0, #0x0
	ldrneb r4, [r5, #0x96]
	ldr r0, [r5, #0x8]
	moveq r4, #0x0
	and r1, r0, #0x40
	b _020B91D0
_020B91CC:
	mov r1, #0x0
_020B91D0:
	ldr r0, [r5, #0x8]
	ands r0, r0, #0x100
	bne _020B9228
	cmp r1, #0x0
	bne _020B9228
	ldr r0, [r5, #0x0]
	ldrb r12, [r0, #0x1]
	ldrb r3, [r0, #0x2]
	ldrb lr, [r0, #0x3]
	ldrb r2, [r0, #0x5]
	ldrb r1, [r0, #0x6]
	orr r3, r12, r3, lsl #0x8
	ldrb r6, [r0, #0x4]
	orr r12, r3, lr, lsl #0x10
	ldrb r3, [r0, #0x7]
	orr r1, r2, r1, lsl #0x8
	orr r6, r12, r6, lsl #0x18
	ldrb r2, [r0, #0x8]
	orr r1, r1, r3, lsl #0x10
	add r0, r0, r6
	orr r1, r1, r2, lsl #0x18
	bl FUN_020BB2B0
_020B9228:
	cmp r4, #0x3
	bne _020B9248
	ldr r1, [r5, #0x8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #0x8]
	ldr r1, [r5, #0x34]
	blx r1
_020B9248:
	ldr r0, [r5, #0x0]
	add r0, r0, #0x9
	str r0, [r5, #0x0]
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020B9178

	arm_func_start FUN_020B9258
FUN_020B9258: ; 0x020B9258
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x8c
	ldr r1, [r0, #0x4]
	ldr r4, [r0, #0x0]
	ldr r6, [r1, #0x4]
	ldrb r2, [r4, #0x2]
	ldr r3, [r6, #0x10]
	mov r10, #0x0
	str r0, [sp, #0x0]
	str r2, [sp, #0x8]
	add r3, r6, r3
	add r1, sp, #0x34
	mov r0, r10
	mov r2, #0x54
	mov r9, r10
	str r3, [sp, #0x4]
	add r8, r4, #0x3
	bl MIi_CpuClearFast
	bl FUN_020BB394
	ldr r0, _020B98AC ; =0x04000440
	mov r7, r10
	str r7, [r0, #0x0]
	mov r0, #0x1
	ldr r2, _020B98B0 ; =0x0400044C
	ldr r1, _020B98B4 ; =0x04000454
	str r0, [r2, #0x0]
	str r0, [sp, #0x10]
	str r7, [r1, #0x0]
	mov r1, #0x2
	ldr r0, _020B98AC ; =0x04000440
	str r1, [sp, #0x14]
	str r1, [r0, #0x0]
	ldr r0, [sp, #0x8]
	cmp r0, #0x0
	bls _020B96CC
_020B92E4:
	ldrb r4, [r8, #0x1]
	mov r0, #0x64
	ldr r3, _020B98B8 ; =UNK_021D0380
	mul r0, r4, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x0]
	mov r1, r4, lsr #0x5
	add r0, r0, r1, lsl #0x2
	ldr r1, [sp, #0x10]
	and r2, r4, #0x1f
	mov r1, r1, lsl r2
	ldr r11, [r0, #0xcc]
	ldr r2, [sp, #0xc]
	ands r11, r1, r11
	add r6, r3, r2
	bne _020B9358
	ldr r3, [r0, #0xcc]
	mov r2, #0x54
	orr r1, r3, r1
	str r1, [r0, #0xcc]
	ldr r0, [sp, #0x4]
	ldr r1, _020B98BC ; =0x04000450
	mla r0, r4, r2, r0
	ldrb r2, [r8, #0x0]
	str r2, [r1, #0x0]
	ldr r2, [sp, #0x10]
	ldr r1, _020B98AC ; =0x04000440
	str r2, [r1, #0x0]
	bl G3_MultMtx43
_020B9358:
	cmp r7, #0x0
	beq _020B9500
	ldr r2, [sp, #0x6c]
	ldr r1, [r5, #0x0]
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x70]
	mov r0, r1, asr #0x1f
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x74]
	ldr r12, [sp, #0x64]
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x78]
	ldr lr, [sp, #0x68]
	str r2, [sp, #0x24]
	ldr r2, [sp, #0x7c]
	str r2, [sp, #0x28]
	ldr r2, [sp, #0x80]
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x84]
	str r2, [sp, #0x30]
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #0x14
	adds r0, r12, r0
	str r0, [sp, #0x64]
	ldr r1, [r5, #0x4]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #0x14
	adds r0, lr, r0
	str r0, [sp, #0x68]
	ldr r1, [r5, #0x8]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x18]
	orr r1, r1, r2, lsl #0x14
	adds r0, r0, r1
	str r0, [sp, #0x6c]
	ldr r1, [r5, #0xc]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x1c]
	orr r1, r1, r2, lsl #0x14
	adds r0, r0, r1
	str r0, [sp, #0x70]
	ldr r1, [r5, #0x10]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x20]
	orr r1, r1, r2, lsl #0x14
	adds r0, r0, r1
	str r0, [sp, #0x74]
	ldr r1, [r5, #0x14]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x24]
	orr r1, r1, r2, lsl #0x14
	adds r0, r0, r1
	str r0, [sp, #0x78]
	ldr r1, [r5, #0x18]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x28]
	orr r1, r1, r2, lsl #0x14
	adds r0, r0, r1
	str r0, [sp, #0x7c]
	ldr r1, [r5, #0x1c]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x2c]
	orr r1, r1, r2, lsl #0x14
	adds r0, r0, r1
	str r0, [sp, #0x80]
	ldr r1, [r5, #0x20]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x30]
	orr r1, r1, r2, lsl #0x14
	adds r0, r0, r1
	str r0, [sp, #0x84]
_020B9500:
	cmp r11, #0x0
	bne _020B9538
_020B9508:
	mov r0, r6
	bl G3X_GetClipMtx
	cmp r0, #0x0
	bne _020B9508
	ldr r1, [sp, #0x14]
	ldr r0, _020B98AC ; =0x04000440
	str r1, [r0, #0x0]
	ldr r0, [sp, #0x4]
	mov r1, #0x54
	mla r0, r4, r1, r0
	add r0, r0, #0x30
	bl G3_MultMtx33
_020B9538:
	ldrb r1, [r8, #0x2]
	ldr r2, [sp, #0x34]
	ldr r0, [r6, #0x0]
	mov r10, r1, lsl #0x4
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r2, r1
	str r0, [sp, #0x34]
	mov r9, r10, asr #0x1f
	ldr r2, [sp, #0x38]
	ldr r0, [r6, #0x4]
	ldr r3, [sp, #0x3c]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r2, r1
	str r0, [sp, #0x38]
	ldr r0, [r6, #0x8]
	ldr r2, [sp, #0x40]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r3, r1
	str r0, [sp, #0x3c]
	ldr r0, [r6, #0x10]
	ldr r3, [sp, #0x44]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r2, r1
	str r0, [sp, #0x40]
	ldr r0, [r6, #0x14]
	ldr r2, [sp, #0x48]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r3, r1
	str r0, [sp, #0x44]
	ldr r0, [r6, #0x18]
	ldr r3, [sp, #0x4c]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r2, r1
	str r0, [sp, #0x48]
	ldr r0, [r6, #0x20]
	ldr r2, [sp, #0x50]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r3, r1
	str r0, [sp, #0x4c]
	ldr r0, [r6, #0x24]
	ldr r3, [sp, #0x54]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r2, r1
	str r0, [sp, #0x50]
	ldr r0, [r6, #0x28]
	ldr r2, [sp, #0x58]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r3, r1
	str r0, [sp, #0x54]
	ldr r0, [r6, #0x30]
	ldr r3, [sp, #0x5c]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r2, r1
	str r0, [sp, #0x58]
	ldr r0, [r6, #0x34]
	ldr r2, [sp, #0x60]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r3, r1
	str r0, [sp, #0x5c]
	ldr r0, [r6, #0x38]
	smull r1, r0, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	adds r0, r2, r1
	str r0, [sp, #0x60]
	cmp r11, #0x0
	ldr r1, _020B98C0 ; =UNK_021D03C0
	ldr r0, [sp, #0xc]
	add r5, r1, r0
	add r8, r8, #0x3
	bne _020B96BC
_020B96AC:
	mov r0, r5
	bl G3X_GetVectorMtx
	cmp r0, #0x0
	bne _020B96AC
_020B96BC:
	ldr r0, [sp, #0x8]
	add r7, r7, #0x1
	cmp r7, r0
	blo _020B92E4
_020B96CC:
	ldr r1, [r5, #0x0]
	ldr r4, [sp, #0x64]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #0x14
	adds r0, r4, r0
	str r0, [sp, #0x64]
	ldr r1, [r5, #0x4]
	ldr r4, [sp, #0x68]
	mov r0, r1, asr #0x1f
	umull r3, r2, r10, r1
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #0x14
	adds r0, r4, r0
	str r0, [sp, #0x68]
	ldr r1, [r5, #0x8]
	ldr r4, [sp, #0x6c]
	umull r0, r2, r10, r1
	mov r3, r0, lsr #0xc
	mov r0, r1, asr #0x1f
	mla r2, r10, r0, r2
	mla r2, r9, r1, r2
	orr r3, r3, r2, lsl #0x14
	adds r0, r4, r3
	str r0, [sp, #0x6c]
	ldr r7, [r5, #0xc]
	ldr r12, [sp, #0x70]
	mov r6, r7, asr #0x1f
	umull r11, r8, r10, r7
	mla r8, r10, r6, r8
	mla r8, r9, r7, r8
	mov r6, r11, lsr #0xc
	orr r6, r6, r8, lsl #0x14
	adds r6, r12, r6
	str r6, [sp, #0x70]
	ldr r7, [r5, #0x10]
	ldr r4, [sp, #0x74]
	mov r6, r7, asr #0x1f
	umull r11, r8, r10, r7
	mla r8, r10, r6, r8
	mla r8, r9, r7, r8
	mov r6, r11, lsr #0xc
	orr r6, r6, r8, lsl #0x14
	adds r4, r4, r6
	str r4, [sp, #0x74]
	ldr r6, [r5, #0x14]
	ldr r3, [sp, #0x78]
	mov r4, r6, asr #0x1f
	umull r8, r7, r10, r6
	mla r7, r10, r4, r7
	mla r7, r9, r6, r7
	mov r4, r8, lsr #0xc
	orr r4, r4, r7, lsl #0x14
	adds r3, r3, r4
	str r3, [sp, #0x78]
	ldr r4, [r5, #0x18]
	ldr r2, [sp, #0x7c]
	mov r3, r4, asr #0x1f
	umull r7, r6, r10, r4
	mla r6, r10, r3, r6
	mla r6, r9, r4, r6
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #0x14
	adds r2, r2, r3
	str r2, [sp, #0x7c]
	ldr r3, [r5, #0x1c]
	ldr r1, [sp, #0x80]
	mov r2, r3, asr #0x1f
	umull r6, r4, r10, r3
	mla r4, r10, r2, r4
	mla r4, r9, r3, r4
	mov r2, r6, lsr #0xc
	orr r2, r2, r4, lsl #0x14
	adds r1, r1, r2
	str r1, [sp, #0x80]
	ldr r2, [r5, #0x20]
	ldr lr, [sp, #0x84]
	mov r1, r2, asr #0x1f
	umull r4, r3, r10, r2
	mla r3, r10, r1, r3
	mla r3, r9, r2, r3
	mov r1, r4, lsr #0xc
	orr r1, r1, r3, lsl #0x14
	adds r1, lr, r1
	add r0, sp, #0x64
	str r1, [sp, #0x84]
	bl G3_LoadMtx43
	ldr r1, _020B98AC ; =0x04000440
	mov r2, #0x1
	add r0, sp, #0x34
	str r2, [r1, #0x0]
	bl G3_LoadMtx43
	ldr r3, _020B98AC ; =0x04000440
	mov r0, #0x0
	str r0, [r3, #0x0]
	ldr r1, _020B98BC ; =0x04000450
	mov r2, #0x1
	mov r0, #0x2
	str r2, [r1, #0x0]
	str r0, [r3, #0x0]
	ldr r0, [sp, #0x0]
	ldr r1, [r0, #0x0]
	ldr r0, _020B98B0 ; =0x0400044C
	ldrb r2, [r1, #0x1]
	mov r1, #0x3
	str r2, [r0, #0x0]
	ldr r0, [sp, #0x0]
	ldr r2, [r0, #0x0]
	ldrb r0, [r2, #0x2]
	add r0, r0, #0x1
	mla r1, r0, r1, r2
	ldr r0, [sp, #0x0]
	str r1, [r0, #0x0]
	add sp, sp, #0x8c
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B98AC: .word 0x04000440
_020B98B0: .word 0x0400044C
_020B98B4: .word 0x04000454
_020B98B8: .word UNK_021D0380
_020B98BC: .word 0x04000450
_020B98C0: .word UNK_021D03C0
	arm_func_end FUN_020B9258

	arm_func_start FUN_020B98C4
FUN_020B98C4: ; 0x020B98C4
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0xcc
	mov r10, r0
	ldr r2, [r10, #0x8]
	mov r9, r1
	ands r0, r2, #0x200
	mov r7, #0x2
	ldr r6, _020B9C28 ; =UNK_02106718
	ldr fp, _020B9C2C ; =UNK_02106724
	ldr r5, _020B9C30 ; =UNK_021066F4
	beq _020B992C
	cmp r9, #0x40
	beq _020B9900
	cmp r9, #0x60
	bne _020B9904
_020B9900:
	add r7, r7, #0x1
_020B9904:
	cmp r9, #0x20
	beq _020B9914
	cmp r9, #0x60
	bne _020B9918
_020B9914:
	add r7, r7, #0x1
_020B9918:
	ldr r0, [r10, #0x0]
	add sp, sp, #0xcc
	add r0, r0, r7
	str r0, [r10, #0x0]
	ldmia sp!, {r4-r11,pc}
_020B992C:
	cmp r9, #0x40
	beq _020B993C
	cmp r9, #0x60
	bne _020B9974
_020B993C:
	add r7, r7, #0x1
	ands r0, r2, #0x100
	bne _020B9974
	cmp r9, #0x40
	ldreq r0, [r10, #0x0]
	add r1, sp, #0x0
	ldreqb r0, [r0, #0x2]
	mov r2, #0x1
	streq r0, [sp, #0x0]
	ldrne r0, [r10, #0x0]
	ldrneb r0, [r0, #0x3]
	strne r0, [sp, #0x0]
	mov r0, #0x14
	bl FUN_020BB1C0
_020B9974:
	ldr r0, [r10, #0x2c]
	cmp r0, #0x0
	ldrneb r8, [r10, #0x94]
	moveq r8, #0x0
	cmp r8, #0x1
	bne _020B99C0
	ldr r1, [r10, #0x8]
	mov r0, r10
	bic r1, r1, #0x40
	str r1, [r10, #0x8]
	ldr r1, [r10, #0x2c]
	blx r1
	ldr r0, [r10, #0x2c]
	cmp r0, #0x0
	ldrneb r8, [r10, #0x94]
	ldr r0, [r10, #0x8]
	moveq r8, #0x0
	and r1, r0, #0x40
	b _020B99C4
_020B99C0:
	mov r1, #0x0
_020B99C4:
	ldr r0, [r10, #0x8]
	ands r0, r0, #0x100
	bne _020B9BA4
	cmp r1, #0x0
	bne _020B9BA4
	bl FUN_020BB394
	ldr r2, _020B9C34 ; =0x00151110
	ldr r1, _020B9C38 ; =0x04000400
	mov r0, #0x0
	str r2, [r1, #0x0]
	str r0, [r1, #0x0]
	str r0, [r1, #0x0]
	add r4, sp, #0x8
_020B99F8:
	mov r0, r4
	bl G3X_GetClipMtx
	cmp r0, #0x0
	bne _020B99F8
	ldr r0, _020B9C3C ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	ands r0, r1, #0x1
	beq _020B9A38
	bl FUN_020B82A4
	add r1, sp, #0x48
	bl MTX_Copy43To44_
	add r0, sp, #0x8
	add r1, sp, #0x48
	mov r2, r0
	bl MTX_Concat44
	b _020B9A5C
_020B9A38:
	ands r0, r1, #0x2
	beq _020B9A5C
	ldr r0, _020B9C40 ; =UNK_021CED64
	add r1, sp, #0x88
	bl MTX_Copy43To44_
	add r0, sp, #0x8
	add r1, sp, #0x88
	mov r2, r0
	bl MTX_Concat44
_020B9A5C:
	ldr r1, [sp, #0x38]
	add r0, sp, #0x8
	str r1, [r6, #0x0]
	ldr r1, [sp, #0x3c]
	str r1, [r6, #0x4]
	ldr r1, [sp, #0x40]
	str r1, [r6, #0x8]
	bl VEC_Mag
	str r0, [r11, #0x0]
	add r0, sp, #0x18
	bl VEC_Mag
	str r0, [r11, #0x4]
	add r0, sp, #0x28
	bl VEC_Mag
	str r0, [r11, #0x8]
	ldr r0, [sp, #0x1c]
	cmp r0, #0x0
	bne _020B9AB0
	ldr r0, [sp, #0x20]
	cmp r0, #0x0
	beq _020B9AD4
_020B9AB0:
	add r0, sp, #0x18
	add r1, r5, #0xc
	bl VEC_Normalize
	ldr r0, [r5, #0x14]
	rsb r0, r0, #0x0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x20]
	b _020B9AF4
_020B9AD4:
	add r0, sp, #0x28
	add r1, r5, #0x18
	bl VEC_Normalize
	ldr r0, [r5, #0x1c]
	rsb r0, r0, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x10]
_020B9AF4:
	ldr r0, _020B9C3C ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	ands r0, r1, #0x1
	beq _020B9B48
	ldr r3, _020B9C44 ; =0x00171012
	ldr r1, _020B9C38 ; =0x04000400
	ldr r0, _020B9C48 ; =UNK_021066EC
	mov r2, #0x8
	str r3, [r1, #0x0]
	bl MIi_CpuSend32
	bl FUN_020B8264
	ldr r1, _020B9C38 ; =0x04000400
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r2, _020B9C4C ; =0x00001B19
	ldr r1, _020B9C38 ; =0x04000400
	ldr r0, _020B9C30 ; =UNK_021066F4
	str r2, [r1, #0x0]
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _020B9BA4
_020B9B48:
	ands r0, r1, #0x2
	beq _020B9B94
	ldr r3, _020B9C44 ; =0x00171012
	ldr r1, _020B9C38 ; =0x04000400
	ldr r0, _020B9C48 ; =UNK_021066EC
	mov r2, #0x8
	str r3, [r1, #0x0]
	bl MIi_CpuSend32
	bl FUN_020B8344
	ldr r1, _020B9C38 ; =0x04000400
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r2, _020B9C4C ; =0x00001B19
	ldr r1, _020B9C38 ; =0x04000400
	ldr r0, _020B9C30 ; =UNK_021066F4
	str r2, [r1, #0x0]
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _020B9BA4
_020B9B94:
	ldr r0, _020B9C50 ; =UNK_021066E8
	ldr r1, _020B9C38 ; =0x04000400
	mov r2, #0x48
	bl MIi_CpuSend32
_020B9BA4:
	cmp r8, #0x3
	movne r0, #0x0
	bne _020B9BD0
	ldr r1, [r10, #0x8]
	mov r0, r10
	bic r1, r1, #0x40
	str r1, [r10, #0x8]
	ldr r1, [r10, #0x2c]
	blx r1
	ldr r0, [r10, #0x8]
	and r0, r0, #0x40
_020B9BD0:
	cmp r9, #0x20
	beq _020B9BE0
	cmp r9, #0x60
	bne _020B9C14
_020B9BE0:
	cmp r0, #0x0
	add r7, r7, #0x1
	bne _020B9C14
	ldr r0, [r10, #0x8]
	ands r0, r0, #0x100
	bne _020B9C14
	ldr r0, [r10, #0x0]
	add r1, sp, #0x4
	ldrb r3, [r0, #0x2]
	mov r0, #0x13
	mov r2, #0x1
	str r3, [sp, #0x4]
	bl FUN_020BB1C0
_020B9C14:
	ldr r0, [r10, #0x0]
	add r0, r0, r7
	str r0, [r10, #0x0]
	add sp, sp, #0xcc
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020B9C28: .word UNK_02106718
_020B9C2C: .word UNK_02106724
_020B9C30: .word UNK_021066F4
_020B9C34: .word 0x00151110
_020B9C38: .word 0x04000400
_020B9C3C: .word UNK_021CED18
_020B9C40: .word UNK_021CED64
_020B9C44: .word 0x00171012
_020B9C48: .word UNK_021066EC
_020B9C4C: .word 0x00001B19
_020B9C50: .word UNK_021066E8
	arm_func_end FUN_020B98C4

	arm_func_start FUN_020B9C54
FUN_020B9C54: ; 0x020B9C54
	stmdb sp!, {r4-r10,lr}
	sub sp, sp, #0xc8
	mov r9, r0
	ldr r2, [r9, #0x8]
	mov r8, r1
	ands r0, r2, #0x200
	mov r6, #0x2
	ldr r5, _020B9F58 ; =UNK_021066D0
	ldr r4, _020B9F5C ; =UNK_021066DC
	beq _020B9CB8
	cmp r8, #0x40
	beq _020B9C8C
	cmp r8, #0x60
	bne _020B9C90
_020B9C8C:
	add r6, r6, #0x1
_020B9C90:
	cmp r8, #0x20
	beq _020B9CA0
	cmp r8, #0x60
	bne _020B9CA4
_020B9CA0:
	add r6, r6, #0x1
_020B9CA4:
	ldr r0, [r9, #0x0]
	add sp, sp, #0xc8
	add r0, r0, r6
	str r0, [r9, #0x0]
	ldmia sp!, {r4-r10,pc}
_020B9CB8:
	cmp r8, #0x40
	beq _020B9CC8
	cmp r8, #0x60
	bne _020B9D00
_020B9CC8:
	add r6, r6, #0x1
	ands r0, r2, #0x100
	bne _020B9D00
	cmp r8, #0x40
	ldreq r0, [r9, #0x0]
	add r1, sp, #0x0
	ldreqb r0, [r0, #0x2]
	mov r2, #0x1
	streq r0, [sp, #0x0]
	ldrne r0, [r9, #0x0]
	ldrneb r0, [r0, #0x3]
	strne r0, [sp, #0x0]
	mov r0, #0x14
	bl FUN_020BB1C0
_020B9D00:
	ldr r0, [r9, #0x28]
	cmp r0, #0x0
	ldrneb r7, [r9, #0x93]
	moveq r7, #0x0
	cmp r7, #0x1
	bne _020B9D4C
	ldr r1, [r9, #0x8]
	mov r0, r9
	bic r1, r1, #0x40
	str r1, [r9, #0x8]
	ldr r1, [r9, #0x28]
	blx r1
	ldr r0, [r9, #0x28]
	cmp r0, #0x0
	ldrneb r7, [r9, #0x93]
	ldr r0, [r9, #0x8]
	moveq r7, #0x0
	and r1, r0, #0x40
	b _020B9D50
_020B9D4C:
	mov r1, #0x0
_020B9D50:
	ldr r0, [r9, #0x8]
	ands r0, r0, #0x100
	bne _020B9ED4
	cmp r1, #0x0
	bne _020B9ED4
	bl FUN_020BB394
	ldr r2, _020B9F60 ; =0x00151110
	ldr r1, _020B9F64 ; =0x04000400
	mov r0, #0x0
	str r2, [r1, #0x0]
	str r0, [r1, #0x0]
	str r0, [r1, #0x0]
	add r10, sp, #0x8
_020B9D84:
	mov r0, r10
	bl G3X_GetClipMtx
	cmp r0, #0x0
	bne _020B9D84
	ldr r0, _020B9F68 ; =UNK_021CED18
	ldr r1, [r0, #0xfc]
	ands r0, r1, #0x1
	beq _020B9DC4
	bl FUN_020B82A4
	add r1, sp, #0x48
	bl MTX_Copy43To44_
	add r0, sp, #0x8
	add r1, sp, #0x48
	mov r2, r0
	bl MTX_Concat44
	b _020B9DE8
_020B9DC4:
	ands r0, r1, #0x2
	beq _020B9DE8
	ldr r0, _020B9F6C ; =UNK_021CED64
	add r1, sp, #0x88
	bl MTX_Copy43To44_
	add r0, sp, #0x8
	add r1, sp, #0x88
	mov r2, r0
	bl MTX_Concat44
_020B9DE8:
	ldr r1, [sp, #0x38]
	add r0, sp, #0x8
	str r1, [r5, #0x0]
	ldr r1, [sp, #0x3c]
	str r1, [r5, #0x4]
	ldr r1, [sp, #0x40]
	str r1, [r5, #0x8]
	bl VEC_Mag
	str r0, [r4, #0x0]
	add r0, sp, #0x18
	bl VEC_Mag
	str r0, [r4, #0x4]
	add r0, sp, #0x28
	bl VEC_Mag
	ldr r1, _020B9F68 ; =UNK_021CED18
	str r0, [r4, #0x8]
	ldr r1, [r1, #0xfc]
	ands r0, r1, #0x1
	beq _020B9E78
	ldr r3, _020B9F70 ; =0x00171012
	ldr r1, _020B9F64 ; =0x04000400
	ldr r0, _020B9F74 ; =UNK_021066A4
	mov r2, #0x8
	str r3, [r1, #0x0]
	bl MIi_CpuSend32
	bl FUN_020B8264
	ldr r1, _020B9F64 ; =0x04000400
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r2, _020B9F78 ; =0x00001B19
	ldr r1, _020B9F64 ; =0x04000400
	ldr r0, _020B9F7C ; =UNK_021066AC
	str r2, [r1, #0x0]
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _020B9ED4
_020B9E78:
	ands r0, r1, #0x2
	beq _020B9EC4
	ldr r3, _020B9F70 ; =0x00171012
	ldr r1, _020B9F64 ; =0x04000400
	ldr r0, _020B9F74 ; =UNK_021066A4
	mov r2, #0x8
	str r3, [r1, #0x0]
	bl MIi_CpuSend32
	bl FUN_020B8344
	ldr r1, _020B9F64 ; =0x04000400
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r2, _020B9F78 ; =0x00001B19
	ldr r1, _020B9F64 ; =0x04000400
	ldr r0, _020B9F7C ; =UNK_021066AC
	str r2, [r1, #0x0]
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _020B9ED4
_020B9EC4:
	ldr r0, _020B9F80 ; =UNK_021066A0
	ldr r1, _020B9F64 ; =0x04000400
	mov r2, #0x48
	bl MIi_CpuSend32
_020B9ED4:
	cmp r7, #0x3
	movne r0, #0x0
	bne _020B9F00
	ldr r1, [r9, #0x8]
	mov r0, r9
	bic r1, r1, #0x40
	str r1, [r9, #0x8]
	ldr r1, [r9, #0x28]
	blx r1
	ldr r0, [r9, #0x8]
	and r0, r0, #0x40
_020B9F00:
	cmp r8, #0x20
	beq _020B9F10
	cmp r8, #0x60
	bne _020B9F44
_020B9F10:
	cmp r0, #0x0
	add r6, r6, #0x1
	bne _020B9F44
	ldr r0, [r9, #0x8]
	ands r0, r0, #0x100
	bne _020B9F44
	ldr r0, [r9, #0x0]
	add r1, sp, #0x4
	ldrb r3, [r0, #0x2]
	mov r0, #0x13
	mov r2, #0x1
	str r3, [sp, #0x4]
	bl FUN_020BB1C0
_020B9F44:
	ldr r0, [r9, #0x0]
	add r0, r0, r6
	str r0, [r9, #0x0]
	add sp, sp, #0xc8
	ldmia sp!, {r4-r10,pc}
	.balign 4
_020B9F58: .word UNK_021066D0
_020B9F5C: .word UNK_021066DC
_020B9F60: .word 0x00151110
_020B9F64: .word 0x04000400
_020B9F68: .word UNK_021CED18
_020B9F6C: .word UNK_021CED64
_020B9F70: .word 0x00171012
_020B9F74: .word UNK_021066A4
_020B9F78: .word 0x00001B19
_020B9F7C: .word UNK_021066AC
_020B9F80: .word UNK_021066A0
	arm_func_end FUN_020B9C54

	arm_func_start FUN_020B9F84
FUN_020B9F84: ; 0x020B9F84
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x14
	mov r10, r0
	ldr r0, [r10, #0x0]
	mov r9, r1
	ldrb r4, [r0, #0x1]
	mov r7, #0x4
	strb r4, [r10, #0xae]
	ldr r0, [r10, #0x8]
	orr r0, r0, #0x10
	str r0, [r10, #0x8]
	ldr r1, [r10, #0x8]
	ands r0, r1, #0x400
	beq _020BA01C
	cmp r9, #0x40
	beq _020B9FCC
	cmp r9, #0x60
	bne _020B9FD0
_020B9FCC:
	add r7, r7, #0x1
_020B9FD0:
	cmp r9, #0x20
	beq _020B9FE0
	cmp r9, #0x60
	bne _020BA008
_020B9FE0:
	add r7, r7, #0x1
	ands r0, r1, #0x100
	bne _020BA008
	ldr r0, [r10, #0x0]
	add r1, sp, #0x8
	ldrb r3, [r0, #0x4]
	mov r0, #0x14
	mov r2, #0x1
	str r3, [sp, #0x8]
	bl FUN_020BB1C0
_020BA008:
	ldr r0, [r10, #0x0]
	add sp, sp, #0x14
	add r0, r0, r7
	str r0, [r10, #0x0]
	ldmia sp!, {r4-r11,pc}
_020BA01C:
	cmp r9, #0x40
	beq _020BA02C
	cmp r9, #0x60
	bne _020BA068
_020BA02C:
	cmp r9, #0x40
	ldreq r0, [r10, #0x0]
	add r7, r7, #0x1
	ldreqb r0, [r0, #0x4]
	streq r0, [sp, #0xc]
	ldrne r0, [r10, #0x0]
	ldrneb r0, [r0, #0x5]
	strne r0, [sp, #0xc]
	ldr r0, [r10, #0x8]
	ands r0, r0, #0x100
	bne _020BA068
	add r1, sp, #0xc
	mov r0, #0x14
	mov r2, #0x1
	bl FUN_020BB1C0
_020BA068:
	add r0, r10, #0x12c
	str r0, [r10, #0xb4]
	ldr r0, [r10, #0x24]
	cmp r0, #0x0
	ldrneb r8, [r10, #0x92]
	moveq r8, #0x0
	cmp r8, #0x1
	bne _020BA0BC
	ldr r1, [r10, #0x8]
	mov r0, r10
	bic r1, r1, #0x40
	str r1, [r10, #0x8]
	ldr r1, [r10, #0x24]
	blx r1
	ldr r0, [r10, #0x24]
	cmp r0, #0x0
	ldrneb r8, [r10, #0x92]
	ldr r0, [r10, #0x8]
	moveq r8, #0x0
	and r0, r0, #0x40
	b _020BA0C0
_020BA0BC:
	mov r0, #0x0
_020BA0C0:
	cmp r0, #0x0
	bne _020BA2CC
	ldr r0, [r10, #0x4]
	ldr r1, [r0, #0x34]
	cmp r1, #0x0
	beq _020BA0F4
	mov r0, #0x58
	mla r6, r4, r0, r1
	ldr r0, [r10, #0x8]
	ands r0, r0, #0x80
	moveq r0, #0x1
	movne r0, #0x0
	b _020BA0FC
_020BA0F4:
	add r6, r10, #0x12c
	mov r0, #0x0
_020BA0FC:
	cmp r0, #0x0
	bne _020BA2C8
	mov r0, #0x0
	str r0, [r6, #0x0]
	ldr r0, [r10, #0x4]
	ldr r1, [r0, #0x10]
	cmp r1, #0x0
	beq _020BA134
	ldr r3, [r0, #0x14]
	mov r0, r6
	mov r2, r4
	blx r3
	cmp r0, #0x0
	bne _020BA2C8
_020BA134:
	ldr r2, [r10, #0xd4]
	ldrh r0, [r2, #0x6]
	ldrh r1, [r2, r0]
	add r0, r2, r0
	mla r0, r1, r4, r0
	ldr r1, [r0, #0x4]
	ldrh r0, [r2, r1]
	add r4, r2, r1
	add r5, r4, #0x4
	ands r0, r0, #0x1
	ldrne r0, [r6, #0x0]
	orrne r0, r0, #0x4
	strne r0, [r6, #0x0]
	bne _020BA188
	ldr r0, [r5, #0x0]
	str r0, [r6, #0x4c]
	ldr r0, [r5, #0x4]
	str r0, [r6, #0x50]
	ldr r0, [r5, #0x8]
	add r5, r5, #0xc
	str r0, [r6, #0x54]
_020BA188:
	ldrh r1, [r4, #0x0]
	ands r0, r1, #0x2
	ldrne r0, [r6, #0x0]
	orrne r0, r0, #0x2
	strne r0, [r6, #0x0]
	bne _020BA2B0
	ands r0, r1, #0x8
	beq _020BA264
	and r1, r1, #0xf0
	mov r11, r1, asr #0x4
	ldrsh r1, [r5, #0x0]
	add r0, r6, #0x28
	str r1, [sp, #0x0]
	ldrsh r1, [r5, #0x2]
	str r1, [sp, #0x4]
	bl MI_Zero36B
	ldrh r0, [r4, #0x0]
	add r1, r6, r11, lsl #0x2
	add r5, r5, #0x4
	ands r0, r0, #0x100
	movne r0, #0x1000
	rsbne r2, r0, #0x0
	moveq r2, #0x1000
	str r2, [r1, #0x28]
	ldr r0, _020BA3B4 ; =UNK_020FF9F0
	ldr r1, _020BA3B8 ; =UNK_020FF9F0 + 1
	ldrb r0, [r0, r11, lsl #0x2]
	add r2, r6, r0, lsl #0x2
	ldr r0, [sp, #0x0]
	str r0, [r2, #0x28]
	ldrb r0, [r1, r11, lsl #0x2]
	add r1, r6, r0, lsl #0x2
	ldr r0, [sp, #0x4]
	str r0, [r1, #0x28]
	ldrh r0, [r4, #0x0]
	ands r0, r0, #0x200
	ldrne r0, [sp, #0x4]
	rsbne r0, r0, #0x0
	strne r0, [sp, #0x4]
	ldr r0, _020BA3BC ; =UNK_020FF9F0 + 2
	ldrb r0, [r0, r11, lsl #0x2]
	add r1, r6, r0, lsl #0x2
	ldr r0, [sp, #0x4]
	str r0, [r1, #0x28]
	ldrh r0, [r4, #0x0]
	ands r0, r0, #0x400
	ldrne r0, [sp, #0x0]
	rsbne r0, r0, #0x0
	strne r0, [sp, #0x0]
	ldr r0, _020BA3C0 ; =UNK_020FF9F0 + 3
	ldrb r0, [r0, r11, lsl #0x2]
	add r1, r6, r0, lsl #0x2
	ldr r0, [sp, #0x0]
	str r0, [r1, #0x28]
	b _020BA2B0
_020BA264:
	ldrsh r0, [r4, #0x2]
	str r0, [r6, #0x28]
	ldrsh r0, [r5, #0x0]
	str r0, [r6, #0x2c]
	ldrsh r0, [r5, #0x2]
	str r0, [r6, #0x30]
	ldrsh r0, [r5, #0x4]
	str r0, [r6, #0x34]
	ldrsh r0, [r5, #0x6]
	str r0, [r6, #0x38]
	ldrsh r0, [r5, #0x8]
	str r0, [r6, #0x3c]
	ldrsh r0, [r5, #0xa]
	str r0, [r6, #0x40]
	ldrsh r0, [r5, #0xc]
	str r0, [r6, #0x44]
	ldrsh r0, [r5, #0xe]
	add r5, r5, #0x10
	str r0, [r6, #0x48]
_020BA2B0:
	ldrh r3, [r4, #0x0]
	ldr r2, [r10, #0x0]
	ldr r4, [r10, #0xe8]
	mov r0, r6
	mov r1, r5
	blx r4
_020BA2C8:
	str r6, [r10, #0xb4]
_020BA2CC:
	cmp r8, #0x2
	bne _020BA308
	ldr r1, [r10, #0x8]
	mov r0, r10
	bic r1, r1, #0x40
	str r1, [r10, #0x8]
	ldr r1, [r10, #0x24]
	blx r1
	ldr r0, [r10, #0x24]
	cmp r0, #0x0
	ldrneb r8, [r10, #0x92]
	ldr r0, [r10, #0x8]
	moveq r8, #0x0
	and r0, r0, #0x40
	b _020BA30C
_020BA308:
	mov r0, #0x0
_020BA30C:
	cmp r0, #0x0
	bne _020BA32C
	ldr r0, [r10, #0x8]
	ands r0, r0, #0x100
	bne _020BA32C
	ldr r0, [r10, #0xb4]
	ldr r1, [r10, #0xec]
	blx r1
_020BA32C:
	mov r0, #0x0
	str r0, [r10, #0xb4]
	cmp r8, #0x3
	bne _020BA35C
	ldr r1, [r10, #0x8]
	mov r0, r10
	bic r1, r1, #0x40
	str r1, [r10, #0x8]
	ldr r1, [r10, #0x24]
	blx r1
	ldr r0, [r10, #0x8]
	and r0, r0, #0x40
_020BA35C:
	cmp r9, #0x20
	beq _020BA36C
	cmp r9, #0x60
	bne _020BA3A0
_020BA36C:
	cmp r0, #0x0
	add r7, r7, #0x1
	bne _020BA3A0
	ldr r0, [r10, #0x8]
	ands r0, r0, #0x100
	bne _020BA3A0
	ldr r0, [r10, #0x0]
	add r1, sp, #0x10
	ldrb r3, [r0, #0x4]
	mov r0, #0x13
	mov r2, #0x1
	str r3, [sp, #0x10]
	bl FUN_020BB1C0
_020BA3A0:
	ldr r0, [r10, #0x0]
	add r0, r0, r7
	str r0, [r10, #0x0]
	add sp, sp, #0x14
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020BA3B4: .word UNK_020FF9F0
_020BA3B8: .word UNK_020FF9F0 + 1
_020BA3BC: .word UNK_020FF9F0 + 2
_020BA3C0: .word UNK_020FF9F0 + 3
	arm_func_end FUN_020B9F84

	arm_func_start FUN_020BA3C4
FUN_020BA3C4: ; 0x020BA3C4
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r4, r0
	ldr r3, [r4, #0x8]
	ands r2, r3, #0x200
	bne _020BA420
	ands r2, r3, #0x1
	beq _020BA420
	ands r2, r3, #0x2
	bne _020BA420
	ldr r5, [r4, #0xdc]
	ldr r3, [r4, #0x0]
	ldrh r2, [r5, #0x6]
	ldrb r3, [r3, #0x1]
	ldr ip, _020BA434 ; =UNK_02106650
	ldrh lr, [r5, r2]
	add r2, r5, r2
	mla r2, lr, r3, r2
	ldr r2, [r2, #0x4]
	ldrh lr, [r5, r2]
	add r2, r5, r2
	ldr r12, [r12, lr, lsl #0x2]
	blx r12
_020BA420:
	ldr r0, [r4, #0x0]
	add r0, r0, #0x2
	str r0, [r4, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020BA434: .word UNK_02106650
	arm_func_end FUN_020BA3C4

	arm_func_start FUN_020BA438
FUN_020BA438: ; 0x020BA438
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldr r0, [r6, #0x20]
	mov r5, r2
	cmp r0, #0x0
	ldrneb r4, [r6, #0x91]
	moveq r4, #0x0
	cmp r4, #0x1
	bne _020BA490
	ldr r1, [r6, #0x8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #0x8]
	ldr r1, [r6, #0x20]
	blx r1
	ldr r0, [r6, #0x20]
	cmp r0, #0x0
	ldrneb r4, [r6, #0x91]
	ldr r0, [r6, #0x8]
	moveq r4, #0x0
	and r0, r0, #0x40
	b _020BA494
_020BA490:
	mov r0, #0x0
_020BA494:
	cmp r0, #0x0
	bne _020BA4B8
	ldr r0, [r6, #0x8]
	ands r0, r0, #0x100
	bne _020BA4B8
	ldr r0, [r5, #0x8]
	ldr r1, [r5, #0xc]
	add r0, r5, r0
	bl FUN_020BB2B0
_020BA4B8:
	cmp r4, #0x2
	bne _020BA4E8
	ldr r1, [r6, #0x8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #0x8]
	ldr r1, [r6, #0x20]
	blx r1
	ldr r0, [r6, #0x20]
	cmp r0, #0x0
	ldrneb r4, [r6, #0x91]
	moveq r4, #0x0
_020BA4E8:
	cmp r4, #0x3
	ldmneia sp!, {r4-r6,pc}
	ldr r1, [r6, #0x8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #0x8]
	ldr r1, [r6, #0x20]
	blx r1
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BA438

	arm_func_start FUN_020BA50C
FUN_020BA50C: ; 0x020BA50C
	stmdb sp!, {r4-r6,lr}
	mov r4, r0
	ldr r5, [r4, #0x8]
	ands r0, r5, #0x200
	bne _020BA578
	ldr r2, [r4, #0x0]
	ands r0, r5, #0x1
	ldrb r3, [r2, #0x1]
	bne _020BA544
	ands r0, r5, #0x8
	beq _020BA544
	ldrb r0, [r4, #0xad]
	cmp r3, r0
	beq _020BA578
_020BA544:
	ldr r6, [r4, #0xd8]
	ldr ip, _020BA588 ; =UNK_02106640
	ldrh r2, [r6, #0xa]
	add r5, r6, #0x4
	mov r0, r4
	ldrh lr, [r5, r2]
	add r2, r5, r2
	mla r2, lr, r3, r2
	ldr r2, [r2, #0x4]
	ldrh lr, [r6, r2]
	add r2, r6, r2
	ldr r12, [r12, lr, lsl #0x2]
	blx r12
_020BA578:
	ldr r0, [r4, #0x0]
	add r0, r0, #0x2
	str r0, [r4, #0x0]
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020BA588: .word UNK_02106640
	arm_func_end FUN_020BA50C

	arm_func_start FUN_020BA58C
FUN_020BA58C: ; 0x020BA58C
	stmdb sp!, {r4-r8,lr}
	sub sp, sp, #0x20
	mov r8, r0
	mov r6, r3
	strb r6, [r8, #0xad]
	ldr r3, [r8, #0x8]
	add r0, r8, #0xf4
	orr r3, r3, #0x8
	str r3, [r8, #0x8]
	str r0, [r8, #0xb0]
	ldr r0, [r8, #0x1c]
	mov r4, r1
	cmp r0, #0x0
	ldrneb r5, [r8, #0x90]
	mov r7, r2
	moveq r5, #0x0
	cmp r5, #0x1
	bne _020BA608
	ldr r1, [r8, #0x8]
	mov r0, r8
	bic r1, r1, #0x40
	str r1, [r8, #0x8]
	ldr r1, [r8, #0x1c]
	blx r1
	ldr r0, [r8, #0x1c]
	cmp r0, #0x0
	ldrneb r5, [r8, #0x90]
	ldr r0, [r8, #0x8]
	moveq r5, #0x0
	and r0, r0, #0x40
	b _020BA60C
_020BA608:
	mov r0, #0x0
_020BA60C:
	cmp r0, #0x0
	bne _020BA8C0
	ldr r0, [r8, #0x4]
	ldr r0, [r0, #0x38]
	cmp r0, #0x0
	beq _020BA638
	ldr r1, [r8, #0x8]
	ands r1, r1, #0x80
	moveq r1, #0x38
	mlaeq r4, r6, r1, r0
	beq _020BA8BC
_020BA638:
	cmp r4, #0x20
	beq _020BA648
	cmp r4, #0x40
	bne _020BA684
_020BA648:
	mov r1, r6, lsr #0x5
	add r1, r8, r1, lsl #0x2
	and r2, r6, #0x1f
	mov r3, #0x1
	mov r2, r3, lsl r2
	ldr r1, [r1, #0xbc]
	ands r1, r2, r1
	beq _020BA684
	cmp r0, #0x0
	movne r1, #0x38
	mlane r4, r6, r1, r0
	ldreq r1, _020BA9D8 ; =UNK_021CEF80
	moveq r0, #0x38
	mlaeq r4, r6, r0, r1
	b _020BA8BC
_020BA684:
	cmp r0, #0x0
	beq _020BA6BC
	add r4, r8, #0xbc
	mov r3, r6, lsr #0x5
	ldr r2, [r4, r3, lsl #0x2]
	and r0, r6, #0x1f
	mov r1, #0x1
	orr r0, r2, r1, lsl r0
	str r0, [r4, r3, lsl #0x2]
	ldr r1, [r8, #0x4]
	mov r0, #0x38
	ldr r1, [r1, #0x38]
	mla r4, r6, r0, r1
	b _020BA6F0
_020BA6BC:
	cmp r4, #0x40
	addne r4, r8, #0xf4
	bne _020BA6F0
	add lr, r8, #0xbc
	mov r12, r6, lsr #0x5
	ldr r1, _020BA9D8 ; =UNK_021CEF80
	ldr r4, [lr, r12, lsl #0x2]
	mov r0, #0x38
	and r2, r6, #0x1f
	mov r3, #0x1
	orr r2, r4, r3, lsl r2
	mla r4, r6, r0, r1
	str r2, [lr, r12, lsl #0x2]
_020BA6F0:
	mov r0, #0x0
	str r0, [r4, #0x0]
	ldr r3, [r8, #0xd8]
	ldrh r0, [r3, #0xa]
	add r2, r3, #0x4
	ldrh r1, [r2, r0]
	add r0, r2, r0
	mla r0, r1, r6, r0
	ldr r0, [r0, #0x4]
	ldr r1, _020BA9DC ; =UNK_021CED18
	add r0, r3, r0
	ldrh r0, [r0, #0x1e]
	ands r0, r0, #0x20
	ldrne r0, [r4, #0x0]
	orrne r0, r0, #0x20
	strne r0, [r4, #0x0]
	ldrh r2, [r7, #0x1e]
	ldr r0, _020BA9E0 ; =UNK_020FF9D0
	ldr r12, [r1, #0x94]
	mov r2, r2, asr #0x6
	and r2, r2, #0x7
	ldr lr, [r0, r2, lsl #0x2]
	ldr r2, [r7, #0x4]
	mvn r3, lr
	and r3, r12, r3
	and r2, r2, lr
	orr r2, r3, r2
	str r2, [r4, #0x4]
	ldrh r12, [r7, #0x1e]
	ldr r3, [r1, #0x98]
	ldr r2, [r7, #0x8]
	mov r12, r12, asr #0x9
	and r12, r12, #0x7
	ldr r12, [r0, r12, lsl #0x2]
	mvn r0, r12
	and r3, r3, r0
	and r0, r2, r12
	orr r0, r3, r0
	str r0, [r4, #0x8]
	ldr r3, [r7, #0x10]
	ldr r0, [r7, #0xc]
	ldr r2, [r1, #0x9c]
	mvn r1, r3
	and r1, r2, r1
	and r0, r0, r3
	orr r0, r1, r0
	str r0, [r4, #0xc]
	ldr r0, [r7, #0x14]
	str r0, [r4, #0x10]
	ldrh r0, [r7, #0x1c]
	str r0, [r4, #0x14]
	ldrh r1, [r7, #0x1e]
	ands r0, r1, #0x1
	beq _020BA850
	ands r1, r1, #0x2
	ldrne r1, [r4, #0x0]
	add r0, r7, #0x2c
	orrne r1, r1, #0x1
	strne r1, [r4, #0x0]
	bne _020BA7F4
	ldr r1, [r0, #0x0]
	str r1, [r4, #0x18]
	ldr r1, [r0, #0x4]
	add r0, r0, #0x8
	str r1, [r4, #0x1c]
_020BA7F4:
	ldrh r1, [r7, #0x1e]
	ands r1, r1, #0x4
	ldrne r1, [r4, #0x0]
	orrne r1, r1, #0x2
	strne r1, [r4, #0x0]
	bne _020BA820
	ldrsh r1, [r0, #0x0]
	strh r1, [r4, #0x20]
	ldrsh r1, [r0, #0x2]
	add r0, r0, #0x4
	strh r1, [r4, #0x22]
_020BA820:
	ldrh r1, [r7, #0x1e]
	ands r1, r1, #0x8
	ldreq r1, [r0, #0x0]
	streq r1, [r4, #0x24]
	ldreq r0, [r0, #0x4]
	streq r0, [r4, #0x28]
	ldrne r0, [r4, #0x0]
	orrne r0, r0, #0x4
	strne r0, [r4, #0x0]
	ldr r0, [r4, #0x0]
	orr r0, r0, #0x8
	str r0, [r4, #0x0]
_020BA850:
	ldr r0, [r8, #0x4]
	ldr r1, [r0, #0x8]
	cmp r1, #0x0
	beq _020BA890
	mov r2, r6, lsr #0x5
	add r2, r0, r2, lsl #0x2
	and r3, r6, #0x1f
	mov r12, #0x1
	mov r3, r12, lsl r3
	ldr r2, [r2, #0x3c]
	ands r2, r3, r2
	beq _020BA890
	ldr r3, [r0, #0xc]
	mov r0, r4
	mov r2, r6
	blx r3
_020BA890:
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x18
	beq _020BA8BC
	ldrh r0, [r7, #0x20]
	strh r0, [r4, #0x2c]
	ldrh r0, [r7, #0x22]
	strh r0, [r4, #0x2e]
	ldr r0, [r7, #0x24]
	str r0, [r4, #0x30]
	ldr r0, [r7, #0x28]
	str r0, [r4, #0x34]
_020BA8BC:
	str r4, [r8, #0xb0]
_020BA8C0:
	cmp r5, #0x2
	bne _020BA8FC
	ldr r1, [r8, #0x8]
	mov r0, r8
	bic r1, r1, #0x40
	str r1, [r8, #0x8]
	ldr r1, [r8, #0x1c]
	blx r1
	ldr r0, [r8, #0x1c]
	cmp r0, #0x0
	ldrneb r5, [r8, #0x90]
	ldr r0, [r8, #0x8]
	moveq r5, #0x0
	and r0, r0, #0x40
	b _020BA900
_020BA8FC:
	mov r0, #0x0
_020BA900:
	cmp r0, #0x0
	bne _020BA9AC
	ldr r4, [r8, #0xb0]
	ldr r1, [r4, #0xc]
	ands r0, r1, #0x1f0000
	beq _020BA9A0
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x20
	bicne r0, r1, #0x1f0000
	strne r0, [r4, #0xc]
	ldr r0, [r8, #0x8]
	bic r0, r0, #0x2
	str r0, [r8, #0x8]
	ldr r0, [r8, #0x8]
	ands r0, r0, #0x100
	bne _020BA9AC
	ldr r0, _020BA9E4 ; =0x00293130
	ldr r3, _020BA9E8 ; =0x00002B2A
	str r0, [sp, #0x0]
	ldr r2, [r4, #0x4]
	add r1, sp, #0x4
	str r2, [sp, #0x4]
	ldr r6, [r4, #0x8]
	mov r2, #0x6
	str r6, [sp, #0x8]
	ldr r6, [r4, #0xc]
	str r6, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r3, [r4, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [r4, #0x14]
	str r3, [sp, #0x18]
	bl FUN_020BB1C0
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x18
	beq _020BA9AC
	ldr r1, [r8, #0xf0]
	mov r0, r4
	blx r1
	b _020BA9AC
_020BA9A0:
	ldr r0, [r8, #0x8]
	orr r0, r0, #0x2
	str r0, [r8, #0x8]
_020BA9AC:
	cmp r5, #0x3
	addne sp, sp, #0x20
	ldmneia sp!, {r4-r8,pc}
	ldr r1, [r8, #0x8]
	mov r0, r8
	bic r1, r1, #0x40
	str r1, [r8, #0x8]
	ldr r1, [r8, #0x1c]
	blx r1
	add sp, sp, #0x20
	ldmia sp!, {r4-r8,pc}
	.balign 4
_020BA9D8: .word UNK_021CEF80
_020BA9DC: .word UNK_021CED18
_020BA9E0: .word UNK_020FF9D0
_020BA9E4: .word 0x00293130
_020BA9E8: .word 0x00002B2A
	arm_func_end FUN_020BA58C

	arm_func_start FUN_020BA9EC
FUN_020BA9EC: ; 0x020BA9EC
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	ldr r1, [r5, #0x8]
	ands r0, r1, #0x200
	bne _020BAAAC
	ands r0, r1, #0x1
	beq _020BAAAC
	ldr r0, [r5, #0x18]
	cmp r0, #0x0
	ldrneb r4, [r5, #0x8f]
	moveq r4, #0x0
	cmp r4, #0x1
	bne _020BAA58
	ldr r1, [r5, #0x8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #0x8]
	ldr r1, [r5, #0x18]
	blx r1
	ldr r0, [r5, #0x18]
	cmp r0, #0x0
	ldrneb r4, [r5, #0x8f]
	ldr r0, [r5, #0x8]
	moveq r4, #0x0
	and r0, r0, #0x40
	b _020BAA5C
_020BAA58:
	mov r0, #0x0
_020BAA5C:
	cmp r0, #0x0
	bne _020BAA8C
	ldr r0, [r5, #0x0]
	ldrb r0, [r0, #0x1]
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x8]
	ands r0, r0, #0x100
	bne _020BAA8C
	add r1, sp, #0x0
	mov r0, #0x14
	mov r2, #0x1
	bl FUN_020BB1C0
_020BAA8C:
	cmp r4, #0x3
	bne _020BAAAC
	ldr r1, [r5, #0x8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #0x8]
	ldr r1, [r5, #0x18]
	blx r1
_020BAAAC:
	ldr r0, [r5, #0x0]
	add r0, r0, #0x2
	str r0, [r5, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020BA9EC

	arm_func_start FUN_020BAAC0
FUN_020BAAC0: ; 0x020BAAC0
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldr r0, [r6, #0x8]
	ands r0, r0, #0x200
	bne _020BAC38
	ldr r1, [r6, #0x0]
	add r0, r6, #0x184
	ldrb r1, [r1, #0x1]
	strb r1, [r6, #0xac]
	ldr r1, [r6, #0x8]
	ldrb r4, [r6, #0xac]
	orr r1, r1, #0x4
	str r1, [r6, #0x8]
	str r0, [r6, #0xb8]
	ldr r0, [r6, #0x14]
	cmp r0, #0x0
	ldrneb r5, [r6, #0x8e]
	moveq r5, #0x0
	cmp r5, #0x1
	bne _020BAB44
	ldr r1, [r6, #0x8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #0x8]
	ldr r1, [r6, #0x14]
	blx r1
	ldr r0, [r6, #0x14]
	cmp r0, #0x0
	ldrneb r5, [r6, #0x8e]
	ldr r0, [r6, #0x8]
	moveq r5, #0x0
	and r0, r0, #0x40
	b _020BAB48
_020BAB44:
	mov r0, #0x0
_020BAB48:
	cmp r0, #0x0
	bne _020BABAC
	ldr r12, [r6, #0x4]
	ldr r1, [r12, #0x18]
	cmp r1, #0x0
	beq _020BAB98
	mov r0, r4, lsr #0x5
	add r0, r12, r0, lsl #0x2
	and r2, r4, #0x1f
	mov r3, #0x1
	mov r2, r3, lsl r2
	ldr r0, [r0, #0x4c]
	ands r0, r2, r0
	beq _020BAB98
	ldr r0, [r6, #0xb8]
	ldr r3, [r12, #0x1c]
	mov r2, r4
	blx r3
	cmp r0, #0x0
	bne _020BABAC
_020BAB98:
	ldr r1, [r6, #0x0]
	ldr r0, [r6, #0xb8]
	ldrb r1, [r1, #0x2]
	and r1, r1, #0x1
	str r1, [r0, #0x0]
_020BABAC:
	cmp r5, #0x2
	bne _020BABE8
	ldr r1, [r6, #0x8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #0x8]
	ldr r1, [r6, #0x14]
	blx r1
	ldr r0, [r6, #0x14]
	cmp r0, #0x0
	ldrneb r5, [r6, #0x8e]
	ldr r0, [r6, #0x8]
	moveq r5, #0x0
	and r0, r0, #0x40
	b _020BABEC
_020BABE8:
	mov r0, #0x0
_020BABEC:
	cmp r0, #0x0
	bne _020BAC18
	ldr r0, [r6, #0xb8]
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	ldrne r0, [r6, #0x8]
	orrne r0, r0, #0x1
	strne r0, [r6, #0x8]
	ldreq r0, [r6, #0x8]
	biceq r0, r0, #0x1
	streq r0, [r6, #0x8]
_020BAC18:
	cmp r5, #0x3
	bne _020BAC38
	ldr r1, [r6, #0x8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #0x8]
	ldr r1, [r6, #0x14]
	blx r1
_020BAC38:
	ldr r0, [r6, #0x0]
	add r0, r0, #0x3
	str r0, [r6, #0x0]
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BAAC0

	arm_func_start FUN_020BAC48
FUN_020BAC48: ; 0x020BAC48
	stmdb sp!, {r4,lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0x0
	beq _020BAC60
	blx r1
_020BAC60:
	ldr r0, [r4, #0x8]
	orr r0, r0, #0x20
	str r0, [r4, #0x8]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020BAC48

	arm_func_start FUN_020BAC70
FUN_020BAC70: ; 0x020BAC70
	stmdb sp!, {r4,lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	beq _020BAC88
	blx r1
_020BAC88:
	ldr r0, [r4, #0x0]
	add r0, r0, #0x1
	str r0, [r4, #0x0]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020BAC70

	arm_func_start FUN_020BAC98
FUN_020BAC98: ; 0x020BAC98
	stmdb sp!, {r4,lr}
	sub sp, sp, #0x188
	mov r4, r0
	ldr r0, [r4, #0x0]
	and r0, r0, #0x10
	cmp r0, #0x10
	bne _020BAD2C
	add r1, r4, #0x3c
	mov r0, #0x0
	mov r2, #0x8
	bl MIi_CpuClear32
	add r1, r4, #0x44
	mov r0, #0x0
	mov r2, #0x8
	bl MIi_CpuClear32
	add r1, r4, #0x4c
	mov r0, #0x0
	mov r2, #0x8
	bl MIi_CpuClear32
	ldr r1, [r4, #0x8]
	cmp r1, #0x0
	beq _020BACF8
	add r0, r4, #0x3c
	bl FUN_020BAD74
_020BACF8:
	ldr r1, [r4, #0x10]
	cmp r1, #0x0
	beq _020BAD0C
	add r0, r4, #0x44
	bl FUN_020BAD74
_020BAD0C:
	ldr r1, [r4, #0x18]
	cmp r1, #0x0
	beq _020BAD20
	add r0, r4, #0x4c
	bl FUN_020BAD74
_020BAD20:
	ldr r0, [r4, #0x0]
	bic r0, r0, #0x10
	str r0, [r4, #0x0]
_020BAD2C:
	ldr r2, _020BAD70 ; =UNK_021CEF7C
	ldr r0, [r2, #0x0]
	cmp r0, #0x0
	beq _020BAD4C
	mov r1, r4
	bl FUN_020BADE4
	add sp, sp, #0x188
	ldmia sp!, {r4,pc}
_020BAD4C:
	add r0, sp, #0x0
	mov r1, r4
	str r0, [r2, #0x0]
	bl FUN_020BADE4
	ldr r0, _020BAD70 ; =UNK_021CEF7C
	mov r1, #0x0
	str r1, [r0, #0x0]
	add sp, sp, #0x188
	ldmia sp!, {r4,pc}
	.balign 4
_020BAD70: .word UNK_021CEF7C
	arm_func_end FUN_020BAC98

	arm_func_start FUN_020BAD74
FUN_020BAD74:
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	cmp r1, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r5,pc}
	mov r3, #0x1
	mov r4, #0x0
_020BAD90:
	ldrb r2, [r1, #0x19]
	mov r5, r4
	cmp r2, #0x0
	ble _020BADD0
_020BADA0:
	add r2, r1, r5, lsl #0x1
	ldrh r2, [r2, #0x1a]
	ands r2, r2, #0x100
	movne lr, r5, asr #0x5
	andne r2, r5, #0x1f
	ldrne r12, [r0, lr, lsl #0x2]
	add r5, r5, #0x1
	orrne r2, r12, r3, lsl r2
	strne r2, [r0, lr, lsl #0x2]
	ldrb r2, [r1, #0x19]
	cmp r5, r2
	blt _020BADA0
_020BADD0:
	ldr r1, [r1, #0x10]
	cmp r1, #0x0
	bne _020BAD90
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020BAD74

	arm_func_start FUN_020BADE4
FUN_020BADE4: ; 0x020BADE4
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	mov r4, r1
	mov r1, r5
	mov r0, #0x0
	mov r2, #0x188
	bl MIi_CpuClearFast
	mov r0, #0x1
	str r0, [r5, #0xc4]
	str r0, [r5, #0x8]
	ldr r0, [r4, #0x30]
	ldr r2, _020BAF60 ; =UNK_02106614
	cmp r0, #0x0
	strne r0, [r5, #0x0]
	ldreq r1, [r4, #0x4]
	ldreq r0, [r1, #0x4]
	addeq r0, r1, r0
	streq r0, [r5, #0x0]
	str r4, [r5, #0x4]
	ldr r0, [r4, #0x4]
	ldr r1, _020BAF64 ; =UNK_02106608
	add r0, r0, #0x40
	str r0, [r5, #0xd4]
	ldr r12, [r4, #0x4]
	ldr r0, _020BAF68 ; =UNK_02106620
	ldr r3, [r12, #0x8]
	add r3, r12, r3
	str r3, [r5, #0xd8]
	ldr r12, [r4, #0x4]
	ldr r3, [r12, #0xc]
	add r3, r12, r3
	str r3, [r5, #0xdc]
	ldr r3, [r4, #0x4]
	ldrb r3, [r3, #0x15]
	ldr r2, [r2, r3, lsl #0x2]
	str r2, [r5, #0xe8]
	ldr r2, [r4, #0x4]
	ldrb r2, [r2, #0x15]
	ldr r1, [r1, r2, lsl #0x2]
	str r1, [r5, #0xec]
	ldr r1, [r4, #0x4]
	ldrb r1, [r1, #0x16]
	ldr r0, [r0, r1, lsl #0x2]
	str r0, [r5, #0xf0]
	ldr r0, [r4, #0x4]
	ldr r0, [r0, #0x1c]
	str r0, [r5, #0xe0]
	ldr r0, [r4, #0x4]
	ldr r0, [r0, #0x20]
	str r0, [r5, #0xe4]
	ldr r1, [r4, #0x20]
	cmp r1, #0x0
	beq _020BAEE0
	ldrb r0, [r4, #0x24]
	cmp r0, #0x20
	bhs _020BAEE0
	add r0, r5, r0, lsl #0x2
	str r1, [r0, #0xc]
	ldrb r0, [r4, #0x24]
	ldrb r1, [r4, #0x25]
	add r0, r5, r0
	strb r1, [r0, #0x8c]
_020BAEE0:
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x1
	ldrne r0, [r5, #0x8]
	orrne r0, r0, #0x80
	strne r0, [r5, #0x8]
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x2
	ldrne r0, [r5, #0x8]
	orrne r0, r0, #0x100
	strne r0, [r5, #0x8]
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x4
	ldrne r0, [r5, #0x8]
	orrne r0, r0, #0x200
	strne r0, [r5, #0x8]
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x8
	ldrne r0, [r5, #0x8]
	orrne r0, r0, #0x400
	strne r0, [r5, #0x8]
	ldr r1, [r4, #0x28]
	cmp r1, #0x0
	beq _020BAF44
	mov r0, r5
	blx r1
_020BAF44:
	mov r0, r5
	bl FUN_020BAF6C
	ldr r0, [r4, #0x0]
	bic r0, r0, #0x1
	str r0, [r4, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020BAF60: .word UNK_02106614
_020BAF64: .word UNK_02106608
_020BAF68: .word UNK_02106620
	arm_func_end FUN_020BADE4

	arm_func_start FUN_020BAF6C
FUN_020BAF6C:
	stmdb sp!, {r4-r6,lr}
	mov r5, r0
	ldr r6, _020BAFB4 ; =UNK_02106730
	add r4, r5, #0x8
_020BAF7C:
	ldr r1, [r4, #0x0]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r4, #0x0]
	ldr r1, [r5, #0x0]
	ldrb r3, [r1, #0x0]
	and r1, r3, #0x1f
	ldr r2, [r6, r1, lsl #0x2]
	and r1, r3, #0xe0
	blx r2
	ldr r0, [r5, #0x8]
	ands r0, r0, #0x20
	beq _020BAF7C
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020BAFB4: .word UNK_02106730
	arm_func_end FUN_020BAF6C

	arm_func_start FUN_020BAFB8
FUN_020BAFB8: ; 0x020BAFB8
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x6c
	mov r6, r0
	ldr r12, [r6, #0x1c]
	mov r4, r1
	mov r5, r2
	mov r7, r3
	cmp r12, #0x1000
	beq _020BAFF8
	add r1, sp, #0x54
	mov r0, #0x1b
	mov r2, #0x3
	str r12, [sp, #0x54]
	str r12, [sp, #0x58]
	str r12, [sp, #0x5c]
	bl FUN_020BB1C0
_020BAFF8:
	cmp r7, #0x0
	beq _020BB150
	ldr r0, [r6, #0x8]
	add r3, r6, r0
	ldrh r0, [r3, #0xa]
	add r2, r3, #0x4
	ldrh r1, [r2, r0]
	add r0, r2, r0
	mla r0, r1, r4, r0
	ldr r0, [r0, #0x4]
	add r4, r3, r0
	ldr r0, [r4, #0xc]
	ands r0, r0, #0x1f0000
	addeq sp, sp, #0x6c
	ldmeqia sp!, {r4-r7,pc}
	ldr r0, _020BB1B4 ; =0x00293130
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x4]
	str r0, [sp, #0x4]
	ldr r0, [r4, #0x8]
	str r0, [sp, #0x8]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0xc]
	ldrh r0, [r4, #0x1e]
	ands r0, r0, #0x20
	bicne r0, r1, #0x1f0000
	ldr r1, _020BB1B8 ; =0x00002B2A
	strne r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r2, [r4, #0x14]
	ldr r0, [sp, #0x0]
	str r2, [sp, #0x14]
	ldrh r3, [r4, #0x1c]
	add r1, sp, #0x4
	mov r2, #0x6
	str r3, [sp, #0x18]
	bl FUN_020BB1C0
	ldrh r0, [r4, #0x1e]
	ands r0, r0, #0x1
	beq _020BB150
	ldrb r12, [r6, #0x16]
	mov r3, #0x8
	ldr r1, _020BB1BC ; =UNK_02106620
	str r3, [sp, #0x1c]
	ldrh r2, [r4, #0x20]
	add r0, r4, #0x2c
	ldr r1, [r1, r12, lsl #0x2]
	strh r2, [sp, #0x48]
	ldrh r2, [r4, #0x22]
	strh r2, [sp, #0x4a]
	ldr r2, [r4, #0x24]
	str r2, [sp, #0x4c]
	ldr r2, [r4, #0x28]
	str r2, [sp, #0x50]
	ldrh r2, [r4, #0x1e]
	ands r2, r2, #0x2
	orrne r2, r3, #0x1
	strne r2, [sp, #0x1c]
	bne _020BB0F8
	ldr r2, [r0, #0x0]
	str r2, [sp, #0x34]
	ldr r2, [r0, #0x4]
	add r0, r0, #0x8
	str r2, [sp, #0x38]
_020BB0F8:
	ldrh r2, [r4, #0x1e]
	ands r2, r2, #0x4
	ldrne r2, [sp, #0x1c]
	orrne r2, r2, #0x2
	strne r2, [sp, #0x1c]
	bne _020BB124
	ldrsh r2, [r0, #0x0]
	strh r2, [sp, #0x3c]
	ldrsh r2, [r0, #0x2]
	add r0, r0, #0x4
	strh r2, [sp, #0x3e]
_020BB124:
	ldrh r2, [r4, #0x1e]
	ands r2, r2, #0x8
	ldreq r2, [r0, #0x0]
	streq r2, [sp, #0x40]
	ldreq r0, [r0, #0x4]
	streq r0, [sp, #0x44]
	ldrne r0, [sp, #0x1c]
	orrne r0, r0, #0x4
	strne r0, [sp, #0x1c]
	add r0, sp, #0x1c
	blx r1
_020BB150:
	ldr r0, [r6, #0xc]
	add r2, r6, r0
	ldrh r0, [r2, #0x6]
	ldrh r1, [r2, r0]
	add r0, r2, r0
	mla r0, r1, r5, r0
	ldr r0, [r0, #0x4]
	add r2, r2, r0
	ldr r0, [r2, #0x8]
	ldr r1, [r2, #0xc]
	add r0, r2, r0
	bl FUN_020BB2B0
	ldr r3, [r6, #0x20]
	cmp r3, #0x1000
	addeq sp, sp, #0x6c
	ldmeqia sp!, {r4-r7,pc}
	add r1, sp, #0x60
	mov r0, #0x1b
	mov r2, #0x3
	str r3, [sp, #0x60]
	str r3, [sp, #0x64]
	str r3, [sp, #0x68]
	bl FUN_020BB1C0
	add sp, sp, #0x6c
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020BB1B4: .word 0x00293130
_020BB1B8: .word 0x00002B2A
_020BB1BC: .word UNK_02106620
	arm_func_end FUN_020BAFB8

	arm_func_start FUN_020BB1C0
FUN_020BB1C0:
	stmdb sp!, {r4-r6,lr}
	ldr r3, _020BB2A4 ; =UNK_021D1C80
	mov r6, r0
	ldr r12, [r3, #0x0]
	mov r5, r1
	mov r4, r2
	cmp r12, #0x0
	beq _020BB278
	ldr r0, _020BB2A8 ; =UNK_021D1C84
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _020BB24C
	ldr r2, [r12, #0x0]
	add r0, r2, #0x1
	add r1, r0, r4
	cmp r1, #0xc0
	bhi _020BB24C
	str r0, [r12, #0x0]
	ldr r0, [r3, #0x0]
	cmp r4, #0x0
	add r0, r0, r2, lsl #0x2
	str r6, [r0, #0x4]
	ldmeqia sp!, {r4-r6,pc}
	ldr r2, [r3, #0x0]
	mov r0, r5
	ldr r1, [r2], #0x4
	add r1, r2, r1, lsl #0x2
	mov r2, r4, lsl #0x2
	bl MIi_CpuCopyFast
	ldr r0, _020BB2A4 ; =UNK_021D1C80
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x0]
	add r0, r0, r4
	str r0, [r1, #0x0]
	ldmia sp!, {r4-r6,pc}
_020BB24C:
	ldr r0, [r12, #0x0]
	cmp r0, #0x0
	beq _020BB260
	bl FUN_020BB394
	b _020BB28C
_020BB260:
	ldr r0, _020BB2A8 ; =UNK_021D1C84
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _020BB28C
	bl FUN_020BB37C
	b _020BB28C
_020BB278:
	ldr r0, _020BB2A8 ; =UNK_021D1C84
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _020BB28C
	bl FUN_020BB37C
_020BB28C:
	ldr r1, _020BB2AC ; =0x04000400
	mov r0, r5
	mov r2, r4, lsl #0x2
	str r6, [r1, #0x0]
	bl MIi_CpuSend32
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020BB2A4: .word UNK_021D1C80
_020BB2A8: .word UNK_021D1C84
_020BB2AC: .word 0x04000400
	arm_func_end FUN_020BB1C0

	arm_func_start FUN_020BB2B0
FUN_020BB2B0: ; 0x020BB2B0
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r4, r1
	mov r5, r0
	cmp r4, #0x100
	blo _020BB2DC
	ldr r1, _020BB360 ; =GXi_DmaId
	mvn r0, #0x0
	ldr r1, [r1, #0x0]
	cmp r1, r0
	bne _020BB2F8
_020BB2DC:
	mov r2, r4, lsr #0x2
	ldr r0, [r5, #0x0]
	add r1, r5, #0x4
	sub r2, r2, #0x1
	bl FUN_020BB1C0
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
_020BB2F8:
	bl FUN_020BB394
	ldr r0, _020BB364 ; =UNK_021D1C88
	ldr r1, _020BB368 ; =UNK_021D1C84
	ldr r0, [r0, #0x0]
	mov r2, #0x1
	str r2, [r1, #0x0]
	cmp r0, #0x0
	beq _020BB33C
	ldr r0, _020BB360 ; =GXi_DmaId
	str r1, [sp, #0x0]
	ldr r0, [r0, #0x0]
	ldr r3, _020BB36C ; =FUN_020BB370
	mov r1, r5
	mov r2, r4
	bl MI_SendGXCommandAsyncFast
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
_020BB33C:
	ldr r0, _020BB360 ; =GXi_DmaId
	str r1, [sp, #0x0]
	ldr r0, [r0, #0x0]
	ldr r3, _020BB36C ; =FUN_020BB370
	mov r1, r5
	mov r2, r4
	bl MI_SendGXCommandAsync
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020BB360: .word GXi_DmaId
_020BB364: .word UNK_021D1C88
_020BB368: .word UNK_021D1C84
_020BB36C: .word FUN_020BB370
	arm_func_end FUN_020BB2B0

	arm_func_start FUN_020BB370
FUN_020BB370: ; 0x020BB370
	mov r1, #0x0
	str r1, [r0, #0x0]
	bx lr
	arm_func_end FUN_020BB370

	arm_func_start FUN_020BB37C
FUN_020BB37C: ; 0x020BB37C
	ldr r0, _020BB390 ; =UNK_021D1C84
_020BB380:
	ldr r1, [r0, #0x0]
	cmp r1, #0x0
	bne _020BB380
	bx lr
	.balign 4
_020BB390: .word UNK_021D1C84
	arm_func_end FUN_020BB37C

	arm_func_start FUN_020BB394
FUN_020BB394: ; 0x020BB394
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r0, _020BB3FC ; =UNK_021D1C84
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _020BB3B0
	bl FUN_020BB37C
_020BB3B0:
	ldr r0, _020BB400 ; =UNK_021D1C80
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {pc}
	ldr r2, [r0, #0x0]
	cmp r2, #0x0
	addeq sp, sp, #0x4
	ldmeqia sp!, {pc}
	ldr r1, _020BB404 ; =0x04000400
	add r0, r0, #0x4
	mov r2, r2, lsl #0x2
	bl MIi_CpuSend32
	ldr r0, _020BB400 ; =UNK_021D1C80
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020BB3FC: .word UNK_021D1C84
_020BB400: .word UNK_021D1C80
_020BB404: .word 0x04000400
	arm_func_end FUN_020BB394

	arm_func_start FUN_020BB408
FUN_020BB408: ; 0x020BB408
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x1c
	mov r5, r1
	mov r4, r2
	ldr r6, _020BB594 ; =UNK_021CED20
	ldr r1, _020BB598 ; =UNK_021CED64
	add r2, sp, #0x10
	bl MTX_MultVec43
	ldr r1, [sp, #0x14]
	ldr r0, [r6, #0x1c]
	ldr r2, [sp, #0x10]
	smull r8, r7, r1, r0
	ldr r0, [r6, #0xc]
	ldr r3, [sp, #0x18]
	smlal r8, r7, r2, r0
	ldr r1, [r6, #0x2c]
	ldr r0, [r6, #0x3c]
	smlal r8, r7, r3, r1
	mov r1, r8, lsr #0xc
	orr r1, r1, r7, lsl #0x14
	add r0, r1, r0
	bl FX_InvAsync
	ldr r2, [sp, #0x14]
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x14]
	smull lr, r8, r2, r1
	smull r12, r9, r2, r0
	ldr r1, [sp, #0x10]
	ldr r3, [r6, #0x0]
	ldr r0, [sp, #0x18]
	smlal lr, r8, r1, r3
	ldr r7, [r6, #0x20]
	ldr r2, [r6, #0x30]
	smlal lr, r8, r0, r7
	mov r3, lr, lsr #0xc
	orr r3, r3, r8, lsl #0x14
	add r7, r3, r2
	ldr r3, [r6, #0x4]
	ldr r8, [r6, #0x24]
	smlal r12, r9, r1, r3
	smlal r12, r9, r0, r8
	mov r0, r12, lsr #0xc
	ldr r2, [r6, #0x34]
	orr r0, r0, r9, lsl #0x14
	add r6, r0, r2
	bl FX_GetDivResultFx64c
	mov r2, r7, asr #0x1f
	umull r9, lr, r0, r7
	mla lr, r0, r2, lr
	mov r3, #0x80000000
	mla lr, r1, r7, lr
	adds r9, r9, r3
	adc r2, lr, #0x0
	add r2, r2, #0x1000
	add r2, r2, r2, lsr #0x1f
	mov r7, r2, asr #0x1
	umull lr, r2, r0, r6
	mov r12, r6, asr #0x1f
	mla r2, r0, r12, r2
	mla r2, r1, r6, r2
	adds r3, lr, r3
	adc r0, r2, #0x0
	add r0, r0, #0x1000
	add r0, r0, r0, lsr #0x1f
	mov r8, #0x0
	mov r6, r0, asr #0x1
	cmp r7, #0x0
	blt _020BB530
	cmp r6, #0x0
	blt _020BB530
	cmp r7, #0x1000
	bgt _020BB530
	cmp r6, #0x1000
	ble _020BB534
_020BB530:
	mvn r8, #0x0
_020BB534:
	add r0, sp, #0x0
	add r1, sp, #0x4
	add r2, sp, #0x8
	add r3, sp, #0xc
	bl FUN_020B8200
	ldr r2, [sp, #0x0]
	ldr r0, [sp, #0x8]
	ldr r12, [sp, #0xc]
	sub r0, r0, r2
	mul r0, r7, r0
	add r1, r0, #0x800
	ldr r3, [sp, #0x4]
	add r1, r2, r1, asr #0xc
	sub r0, r12, r3
	mul r0, r6, r0
	str r1, [r5, #0x0]
	ldr r1, [sp, #0x4]
	add r0, r0, #0x800
	rsb r1, r1, #0xbf
	sub r1, r1, r0, asr #0xc
	mov r0, r8
	str r1, [r4, #0x0]
	add sp, sp, #0x1c
	ldmia sp!, {r4-r9,pc}
	.balign 4
_020BB594: .word UNK_021CED20
_020BB598: .word UNK_021CED64
	arm_func_end FUN_020BB408

	arm_func_start FUN_020BB59C
FUN_020BB59C: ; 0x020BB59C
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	mov r5, r0
	ldr r1, [r5, #0x0]
	ldr r0, _020BB7C8 ; =0x30415642
	cmp r1, r0
	bhi _020BB5F4
	cmp r1, r0
	bhs _020BB7B0
	ldr r0, _020BB7CC ; =0x30414D42
	cmp r1, r0
	bhi _020BB5E4
	cmp r1, r0
	bhs _020BB7B0
	ldr r0, _020BB7D0 ; =0x30414342
	cmp r1, r0
	beq _020BB7B0
	b _020BB7BC
_020BB5E4:
	ldr r0, _020BB7D4 ; =0x30415442
	cmp r1, r0
	beq _020BB7B0
	b _020BB7BC
_020BB5F4:
	ldr r0, _020BB7D8 ; =0x30505442
	cmp r1, r0
	bhi _020BB618
	cmp r1, r0
	bhs _020BB7B0
	ldr r0, _020BB7DC ; =0x30444D42
	cmp r1, r0
	beq _020BB624
	b _020BB7BC
_020BB618:
	ldr r0, _020BB7E0 ; =0x30585442
	cmp r1, r0
	bne _020BB7BC
_020BB624:
	mov r11, #0x1
	mov r0, r5
	mov r9, r11
	mov r8, r11
	bl FUN_020BC0FC
	movs r4, r0
	beq _020BB77C
	bl FUN_020B7E1C
	mov r7, r0
	mov r0, r4
	bl FUN_020B7E10
	mov r6, r0
	mov r0, r4
	bl FUN_020B7CE4
	mov r10, r0
	cmp r7, #0x0
	beq _020BB68C
	ldr r0, _020BB7E4 ; =UNK_021064B8
	mov r1, #0x0
	ldr r3, [r0, #0x0]
	mov r0, r7
	mov r2, r1
	blx r3
	movs r7, r0
	moveq r11, #0x0
	b _020BB690
_020BB68C:
	mov r7, #0x0
_020BB690:
	cmp r6, #0x0
	beq _020BB6BC
	ldr r1, _020BB7E4 ; =UNK_021064B8
	mov r0, r6
	ldr r3, [r1, #0x0]
	mov r1, #0x1
	mov r2, #0x0
	blx r3
	movs r6, r0
	moveq r9, #0x0
	b _020BB6C0
_020BB6BC:
	mov r6, #0x0
_020BB6C0:
	cmp r10, #0x0
	beq _020BB6F0
	ldr r1, _020BB7E8 ; =UNK_021064C0
	ldrh r2, [r4, #0x20]
	ldr r3, [r1, #0x0]
	mov r0, r10
	and r1, r2, #0x8000
	mov r2, #0x0
	blx r3
	movs r10, r0
	moveq r8, #0x0
	b _020BB6F4
_020BB6F0:
	mov r10, #0x0
_020BB6F4:
	cmp r11, #0x0
	beq _020BB70C
	cmp r9, #0x0
	beq _020BB70C
	cmp r8, #0x0
	bne _020BB748
_020BB70C:
	ldr r1, _020BB7EC ; =UNK_021064C4
	mov r0, r10
	ldr r1, [r1, #0x0]
	blx r1
	ldr r1, _020BB7F0 ; =UNK_021064BC
	mov r0, r6
	ldr r1, [r1, #0x0]
	blx r1
	ldr r1, _020BB7F0 ; =UNK_021064BC
	mov r0, r7
	ldr r1, [r1, #0x0]
	blx r1
	add sp, sp, #0x4
	mov r0, #0x0
	ldmia sp!, {r4-r11,pc}
_020BB748:
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl FUN_020B7DFC
	mov r0, r4
	mov r1, r10
	bl FUN_020B7CDC
	mov r0, r4
	mov r1, #0x1
	bl FUN_020B7D28
	mov r0, r4
	mov r1, #0x1
	bl FUN_020B7C78
_020BB77C:
	ldr r1, [r5, #0x0]
	ldr r0, _020BB7DC ; =0x30444D42
	cmp r1, r0
	bne _020BB7A4
	mov r0, r5
	bl FUN_020BC13C
	cmp r4, #0x0
	beq _020BB7A4
	mov r1, r4
	bl FUN_020B7790
_020BB7A4:
	add sp, sp, #0x4
	mov r0, #0x1
	ldmia sp!, {r4-r11,pc}
_020BB7B0:
	add sp, sp, #0x4
	mov r0, #0x1
	ldmia sp!, {r4-r11,pc}
_020BB7BC:
	mov r0, #0x0
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020BB7C8: .word 0x30415642
_020BB7CC: .word 0x30414D42
_020BB7D0: .word 0x30414342
_020BB7D4: .word 0x30415442
_020BB7D8: .word 0x30505442
_020BB7DC: .word 0x30444D42
_020BB7E0: .word 0x30585442
_020BB7E4: .word UNK_021064B8
_020BB7E8: .word UNK_021064C0
_020BB7EC: .word UNK_021064C4
_020BB7F0: .word UNK_021064BC
	arm_func_end FUN_020BB59C

	arm_func_start FUN_020BB7F4
FUN_020BB7F4: ; 0x020BB7F4
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	bl G3X_Init
	bl FUN_020B84D8
	ldr r1, _020BB820 ; =0x04000600
	ldr r0, [r1, #0x0]
	bic r0, r0, #0xc0000000
	orr r0, r0, #0x80000000
	str r0, [r1, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020BB820: .word 0x04000600
	arm_func_end FUN_020BB7F4

	arm_func_start FUN_020BB824
FUN_020BB824: ; 0x020BB824
	stmdb sp!, {r4-r6,lr}
	sub sp, sp, #0x40
	mov r6, r0
	mov r5, r1
	bl FUN_020BB394
	ldr r0, _020BB8B4 ; =0x04000440
	mov r2, #0x0
	ldr r1, _020BB8B8 ; =0x04000444
	str r2, [r0, #0x0]
	ldr r0, _020BB8BC ; =0x04000454
	str r2, [r1, #0x0]
	str r2, [r0, #0x0]
	cmp r6, #0x0
	beq _020BB87C
	add r4, sp, #0x0
_020BB860:
	mov r0, r4
	bl G3X_GetClipMtx
	cmp r0, #0x0
	bne _020BB860
	add r0, sp, #0x0
	mov r1, r6
	bl MTX_Copy44To43_
_020BB87C:
	cmp r5, #0x0
	beq _020BB894
_020BB884:
	mov r0, r5
	bl G3X_GetVectorMtx
	cmp r0, #0x0
	bne _020BB884
_020BB894:
	ldr r1, _020BB8C0 ; =0x04000448
	mov r2, #0x1
	ldr r0, _020BB8B4 ; =0x04000440
	str r2, [r1, #0x0]
	mov r1, #0x2
	str r1, [r0, #0x0]
	add sp, sp, #0x40
	ldmia sp!, {r4-r6,pc}
	.balign 4
_020BB8B4: .word 0x04000440
_020BB8B8: .word 0x04000444
_020BB8BC: .word 0x04000454
_020BB8C0: .word 0x04000448
	arm_func_end FUN_020BB824

	arm_func_start thunk_FUN_020ae84c
thunk_FUN_020ae84c: ; 0x020BB8C4
	ldr ip, _020BB8CC ; =FUN_020AE84C
	bx r12
	.balign 4
_020BB8CC: .word FUN_020AE84C
	arm_func_end thunk_FUN_020ae84c

	arm_func_start FUN_020BB8D0
FUN_020BB8D0: ; 0x020BB8D0
	stmdb sp!, {r4,lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	bl FUN_020B81B0
	mov r1, r0
	mov r0, r4
	bl FUN_020AE868
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020BB8D0

	arm_func_start FUN_020BB8F4
FUN_020BB8F4: ; 0x020BB8F4
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BB910:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBC74
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BB910
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BB8F4

	arm_func_start FUN_020BB934
FUN_020BB934: ; 0x020BB934
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BB950:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBCB8
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BB950
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BB934

	arm_func_start FUN_020BB974
FUN_020BB974: ; 0x020BB974
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BB990:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBCFC
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BB990
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BB974

	arm_func_start FUN_020BB9B4
FUN_020BB9B4: ; 0x020BB9B4
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BB9D0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBD40
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BB9D0
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BB9B4

	arm_func_start FUN_020BB9F4
FUN_020BB9F4: ; 0x020BB9F4
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBA10:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBD84
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBA10
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BB9F4

	arm_func_start FUN_020BBA34
FUN_020BBA34: ; 0x020BBA34
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBA50:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBDC8
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBA50
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BBA34

	arm_func_start FUN_020BBA74
FUN_020BBA74: ; 0x020BBA74
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBA90:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBE0C
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBA90
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BBA74

	arm_func_start FUN_020BBAB4
FUN_020BBAB4: ; 0x020BBAB4
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBAD0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBE50
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBAD0
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BBAB4

	arm_func_start FUN_020BBAF4
FUN_020BBAF4: ; 0x020BBAF4
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBB10:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBE94
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBB10
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BBAF4

	arm_func_start FUN_020BBB34
FUN_020BBB34: ; 0x020BBB34
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBB50:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBED8
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBB50
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BBB34

	arm_func_start FUN_020BBB74
FUN_020BBB74: ; 0x020BBB74
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBB90:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBF1C
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBB90
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BBB74

	arm_func_start FUN_020BBBB4
FUN_020BBBB4: ; 0x020BBBB4
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBBD0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBF60
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBBD0
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BBBB4

	arm_func_start FUN_020BBBF4
FUN_020BBBF4: ; 0x020BBBF4
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBC10:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBFA4
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBC10
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BBBF4

	arm_func_start FUN_020BBC34
FUN_020BBC34: ; 0x020BBC34
	stmdb sp!, {r4-r6,lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0x0
	cmp r0, #0x0
	ldmlsia sp!, {r4-r6,pc}
_020BBC50:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_020BBFE8
	ldrb r0, [r6, #0x18]
	add r4, r4, #0x1
	cmp r4, r0
	blo _020BBC50
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BBC34

	arm_func_start FUN_020BBC74
FUN_020BBC74: ; 0x020BBC74
	ldr r3, [r0, #0x8]
	cmp r2, #0x0
	add r12, r0, r3
	ldrh r0, [r12, #0xa]
	add r3, r12, #0x4
	ldrh r2, [r3, r0]
	add r0, r3, r0
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x4]
	add r1, r12, r0
	ldrne r0, [r1, #0xc]
	orrne r0, r0, #0x800
	strne r0, [r1, #0xc]
	ldreq r0, [r1, #0xc]
	biceq r0, r0, #0x800
	streq r0, [r1, #0xc]
	bx lr
	arm_func_end FUN_020BBC74

	arm_func_start FUN_020BBCB8
FUN_020BBCB8: ; 0x020BBCB8
	ldr r3, [r0, #0x8]
	cmp r2, #0x0
	add r12, r0, r3
	ldrh r0, [r12, #0xa]
	add r3, r12, #0x4
	ldrh r2, [r3, r0]
	add r0, r3, r0
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x4]
	add r1, r12, r0
	ldrne r0, [r1, #0xc]
	orrne r0, r0, #0x1000
	strne r0, [r1, #0xc]
	ldreq r0, [r1, #0xc]
	biceq r0, r0, #0x1000
	streq r0, [r1, #0xc]
	bx lr
	arm_func_end FUN_020BBCB8

	arm_func_start FUN_020BBCFC
FUN_020BBCFC: ; 0x020BBCFC
	ldr r3, [r0, #0x8]
	cmp r2, #0x0
	add r12, r0, r3
	ldrh r0, [r12, #0xa]
	add r3, r12, #0x4
	ldrh r2, [r3, r0]
	add r0, r3, r0
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x4]
	add r1, r12, r0
	ldrne r0, [r1, #0xc]
	orrne r0, r0, #0x2000
	strne r0, [r1, #0xc]
	ldreq r0, [r1, #0xc]
	biceq r0, r0, #0x2000
	streq r0, [r1, #0xc]
	bx lr
	arm_func_end FUN_020BBCFC

	arm_func_start FUN_020BBD40
FUN_020BBD40: ; 0x020BBD40
	ldr r3, [r0, #0x8]
	cmp r2, #0x0
	add r12, r0, r3
	ldrh r0, [r12, #0xa]
	add r3, r12, #0x4
	ldrh r2, [r3, r0]
	add r0, r3, r0
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x4]
	add r1, r12, r0
	ldrne r0, [r1, #0xc]
	orrne r0, r0, #0x4000
	strne r0, [r1, #0xc]
	ldreq r0, [r1, #0xc]
	biceq r0, r0, #0x4000
	streq r0, [r1, #0xc]
	bx lr
	arm_func_end FUN_020BBD40

	arm_func_start FUN_020BBD84
FUN_020BBD84: ; 0x020BBD84
	ldr r3, [r0, #0x8]
	cmp r2, #0x0
	add r12, r0, r3
	ldrh r0, [r12, #0xa]
	add r3, r12, #0x4
	ldrh r2, [r3, r0]
	add r0, r3, r0
	mla r0, r2, r1, r0
	ldr r0, [r0, #0x4]
	add r1, r12, r0
	ldrne r0, [r1, #0xc]
	orrne r0, r0, #0x8000
	strne r0, [r1, #0xc]
	ldreq r0, [r1, #0xc]
	biceq r0, r0, #0x8000
	streq r0, [r1, #0xc]
	bx lr
	arm_func_end FUN_020BBD84

	arm_func_start FUN_020BBDC8
FUN_020BBDC8: ; 0x020BBDC8
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r3, [r0, #0x8]
	add lr, r0, r3
	ldrh r0, [lr, #0xa]
	add r12, lr, #0x4
	ldrh r3, [r12, r0]
	add r0, r12, r0
	mla r0, r3, r1, r0
	ldr r0, [r0, #0x4]
	add r1, lr, r0
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x1f0000
	orr r0, r0, r2, lsl #0x10
	str r0, [r1, #0xc]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020BBDC8

	arm_func_start FUN_020BBE0C
FUN_020BBE0C: ; 0x020BBE0C
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r3, [r0, #0x8]
	add lr, r0, r3
	ldrh r0, [lr, #0xa]
	add r12, lr, #0x4
	ldrh r3, [r12, r0]
	add r0, r12, r0
	mla r0, r3, r1, r0
	ldr r0, [r0, #0x4]
	add r1, lr, r0
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x3f000000
	orr r0, r0, r2, lsl #0x18
	str r0, [r1, #0xc]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020BBE0C

	arm_func_start FUN_020BBE50
FUN_020BBE50: ; 0x020BBE50
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r3, [r0, #0x8]
	add lr, r0, r3
	ldrh r0, [lr, #0xa]
	add r12, lr, #0x4
	ldrh r3, [r12, r0]
	add r0, r12, r0
	mla r0, r3, r1, r0
	ldr r0, [r0, #0x4]
	add r1, lr, r0
	ldr r0, [r1, #0xc]
	bic r0, r0, #0xc0
	orr r0, r0, r2, lsl #0x6
	str r0, [r1, #0xc]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020BBE50

	arm_func_start FUN_020BBE94
FUN_020BBE94: ; 0x020BBE94
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r3, [r0, #0x8]
	add lr, r0, r3
	ldrh r0, [lr, #0xa]
	add r12, lr, #0x4
	ldrh r3, [r12, r0]
	add r0, r12, r0
	mla r0, r3, r1, r0
	ldr r0, [r0, #0x4]
	add r1, lr, r0
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x30
	orr r0, r0, r2, lsl #0x4
	str r0, [r1, #0xc]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020BBE94

	arm_func_start FUN_020BBED8
FUN_020BBED8: ; 0x020BBED8
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r3, [r0, #0x8]
	add lr, r0, r3
	ldrh r0, [lr, #0xa]
	add r12, lr, #0x4
	ldrh r3, [r12, r0]
	add r0, r12, r0
	mla r0, r3, r1, r0
	ldr r0, [r0, #0x4]
	add r1, lr, r0
	ldr r0, [r1, #0xc]
	bic r0, r0, #0xf
	orr r0, r0, r2
	str r0, [r1, #0xc]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020BBED8

	arm_func_start FUN_020BBF1C
FUN_020BBF1C: ; 0x020BBF1C
	stmdb sp!, {r4,lr}
	ldr r12, [r0, #0x8]
	ldr r3, _020BBF5C ; =0x8000FFFF
	add r4, r0, r12
	ldrh r0, [r4, #0xa]
	add lr, r4, #0x4
	ldrh r12, [lr, r0]
	add r0, lr, r0
	mla r0, r12, r1, r0
	ldr r0, [r0, #0x4]
	add r1, r4, r0
	ldr r0, [r1, #0x8]
	and r0, r0, r3
	orr r0, r0, r2, lsl #0x10
	str r0, [r1, #0x8]
	ldmia sp!, {r4,pc}
	.balign 4
_020BBF5C: .word 0x8000FFFF
	arm_func_end FUN_020BBF1C

	arm_func_start FUN_020BBF60
FUN_020BBF60: ; 0x020BBF60
	stmdb sp!, {r4,lr}
	ldr r12, [r0, #0x8]
	mov r3, #0x8000
	add r4, r0, r12
	ldrh r12, [r4, #0xa]
	add lr, r4, #0x4
	rsb r0, r3, #0x0
	ldrh r3, [lr, r12]
	add r12, lr, r12
	mla r1, r3, r1, r12
	ldr r1, [r1, #0x4]
	add r3, r4, r1
	ldr r1, [r3, #0x8]
	and r0, r1, r0
	orr r0, r0, r2
	str r0, [r3, #0x8]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020BBF60

	arm_func_start FUN_020BBFA4
FUN_020BBFA4: ; 0x020BBFA4
	stmdb sp!, {r4,lr}
	ldr r12, [r0, #0x8]
	ldr r3, _020BBFE4 ; =0x8000FFFF
	add r4, r0, r12
	ldrh r0, [r4, #0xa]
	add lr, r4, #0x4
	ldrh r12, [lr, r0]
	add r0, lr, r0
	mla r0, r12, r1, r0
	ldr r0, [r0, #0x4]
	add r1, r4, r0
	ldr r0, [r1, #0x4]
	and r0, r0, r3
	orr r0, r0, r2, lsl #0x10
	str r0, [r1, #0x4]
	ldmia sp!, {r4,pc}
	.balign 4
_020BBFE4: .word 0x8000FFFF
	arm_func_end FUN_020BBFA4

	arm_func_start FUN_020BBFE8
FUN_020BBFE8: ; 0x020BBFE8
	stmdb sp!, {r4,lr}
	ldr r12, [r0, #0x8]
	mov r3, #0x8000
	add r4, r0, r12
	ldrh r12, [r4, #0xa]
	add lr, r4, #0x4
	rsb r0, r3, #0x0
	ldrh r3, [lr, r12]
	add r12, lr, r12
	mla r1, r3, r1, r12
	ldr r1, [r1, #0x4]
	add r3, r4, r1
	ldr r1, [r3, #0x4]
	and r0, r1, r0
	orr r0, r0, r2
	str r0, [r3, #0x4]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020BBFE8

	arm_func_start FUN_020BC02C
FUN_020BC02C: ; 0x020BC02C
	stmdb sp!, {r4-r6,lr}
	ldrb r4, [r0, #0x18]
	ldr r3, [r0, #0x8]
	mov lr, #0x0
	cmp r4, #0x0
	add r12, r0, r3
	ldmlsia sp!, {r4-r6,pc}
	mvn r3, r2
	add r0, r12, #0x4
_020BC050:
	ldrh r5, [r12, #0xa]
	cmp r1, #0x0
	ldrh r6, [r0, r5]
	add r5, r0, r5
	mla r5, r6, lr, r5
	ldr r5, [r5, #0x4]
	add lr, lr, #0x1
	add r6, r12, r5
	ldrne r5, [r6, #0x10]
	orrne r5, r5, r2
	strne r5, [r6, #0x10]
	ldreq r5, [r6, #0x10]
	andeq r5, r5, r3
	streq r5, [r6, #0x10]
	cmp lr, r4
	blo _020BC050
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BC02C

	arm_func_start FUN_020BC094
FUN_020BC094: ; 0x020BC094
	stmdb sp!, {r4-r6,lr}
	ldrb r4, [r0, #0x18]
	ldr r3, [r0, #0x8]
	mov lr, #0x0
	cmp r4, #0x0
	add r12, r0, r3
	ldmlsia sp!, {r4-r6,pc}
	mvn r3, r2
	add r0, r12, #0x4
_020BC0B8:
	ldrh r5, [r12, #0xa]
	cmp r1, #0x0
	ldrh r6, [r0, r5]
	add r5, r0, r5
	mla r5, r6, lr, r5
	ldr r5, [r5, #0x4]
	add lr, lr, #0x1
	add r6, r12, r5
	ldrneh r5, [r6, #0x1e]
	orrne r5, r5, r2
	strneh r5, [r6, #0x1e]
	ldreqh r5, [r6, #0x1e]
	andeq r5, r5, r3
	streqh r5, [r6, #0x1e]
	cmp lr, r4
	blo _020BC0B8
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BC094

	arm_func_start FUN_020BC0FC
FUN_020BC0FC: ; 0x020BC0FC
	ldrh r2, [r0, #0xc]
	ldrh r1, [r0, #0xe]
	add r3, r0, r2
	cmp r1, #0x1
	bne _020BC12C
	ldr r2, [r0, #0x0]
	ldr r1, _020BC138 ; =0x30585442
	cmp r2, r1
	ldreq r1, [r3, #0x0]
	addeq r0, r0, r1
	movne r0, #0x0
	bx lr
_020BC12C:
	ldr r1, [r3, #0x4]
	add r0, r0, r1
	bx lr
	.balign 4
_020BC138: .word 0x30585442
	arm_func_end FUN_020BC0FC

	arm_func_start FUN_020BC13C
FUN_020BC13C:
	ldrh r1, [r0, #0xc]
	ldr r1, [r0, r1]
	add r0, r0, r1
	bx lr
	arm_func_end FUN_020BC13C

	arm_func_start FUN_020BC14C
FUN_020BC14C:
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldrb r2, [r0, #0x1]
	cmp r2, #0x10
	bhs _020BC1E4
	cmp r2, #0x0
	ldr lr, [r1, #0x0]
	ldr r12, [r1, #0x4]
	ldr r3, [r1, #0x8]
	ldr r2, [r1, #0xc]
	mov r4, #0x0
	bls _020BC294
	ldrh r5, [r0, #0x6]
	mov r1, r4
	add r6, r0, r5
	ldrh r5, [r6, #0x2]
	add r6, r6, r5
_020BC190:
	ldr r5, [r6, r1]
	add r7, r6, r1
	cmp r5, lr
	bne _020BC1CC
	ldr r5, [r7, #0x4]
	cmp r5, r12
	bne _020BC1CC
	ldr r5, [r7, #0x8]
	cmp r5, r3
	bne _020BC1CC
	ldr r5, [r7, #0xc]
	cmp r5, r2
	addeq sp, sp, #0x4
	moveq r0, r4
	ldmeqia sp!, {r4-r7,pc}
_020BC1CC:
	ldrb r5, [r0, #0x1]
	add r4, r4, #0x1
	add r1, r1, #0x10
	cmp r4, r5
	blo _020BC190
	b _020BC294
_020BC1E4:
	add r3, r0, #0x8
	ldrb r2, [r3, #0x1]
	cmp r2, #0x0
	beq _020BC294
	ldrb r5, [r3, r2, lsl #0x2]
	ldrb r4, [r3, #0x0]
	add r2, r3, r2, lsl #0x2
	cmp r4, r5
	bls _020BC238
_020BC208:
	mov r4, r5, asr #0x5
	ldr r12, [r1, r4, lsl #0x2]
	and r4, r5, #0x1f
	mov r4, r12, lsr r4
	and r4, r4, #0x1
	add r4, r2, r4
	ldrb r12, [r4, #0x1]
	ldrb r4, [r2, #0x0]
	ldrb r5, [r3, r12, lsl #0x2]
	add r2, r3, r12, lsl #0x2
	cmp r4, r5
	bhi _020BC208
_020BC238:
	ldrh r4, [r0, #0x6]
	ldr r3, [r1, #0x0]
	add r12, r0, r4
	ldrh r4, [r12, #0x2]
	ldrb r0, [r2, #0x3]
	add r4, r12, r4
	ldr r2, [r4, r0, lsl #0x4]
	add r4, r4, r0, lsl #0x4
	cmp r2, r3
	bne _020BC294
	ldr r3, [r4, #0x4]
	ldr r2, [r1, #0x4]
	cmp r3, r2
	bne _020BC294
	ldr r3, [r4, #0x8]
	ldr r2, [r1, #0x8]
	cmp r3, r2
	bne _020BC294
	ldr r2, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r2, r1
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r7,pc}
_020BC294:
	mvn r0, #0x0
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020BC14C

	arm_func_start FUN_020BC2A0
FUN_020BC2A0: ; 0x020BC2A0
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldrb r2, [r0, #0x1]
	cmp r2, #0x10
	bhs _020BC34C
	cmp r2, #0x0
	ldr lr, [r1, #0x0]
	ldr r12, [r1, #0x4]
	ldr r3, [r1, #0x8]
	ldr r2, [r1, #0xc]
	mov r4, #0x0
	bls _020BC404
	ldrh r5, [r0, #0x6]
	mov r1, r4
	add r6, r0, r5
	ldrh r5, [r6, #0x2]
	add r6, r6, r5
_020BC2E4:
	ldr r5, [r6, r1]
	add r7, r6, r1
	cmp r5, lr
	bne _020BC334
	ldr r5, [r7, #0x4]
	cmp r5, r12
	bne _020BC334
	ldr r5, [r7, #0x8]
	cmp r5, r3
	bne _020BC334
	ldr r5, [r7, #0xc]
	cmp r5, r2
	bne _020BC334
	ldrh r2, [r0, #0x6]
	add sp, sp, #0x4
	ldrh r1, [r0, r2]
	add r0, r0, r2
	add r0, r0, #0x4
	mla r0, r1, r4, r0
	ldmia sp!, {r4-r7,pc}
_020BC334:
	ldrb r5, [r0, #0x1]
	add r4, r4, #0x1
	add r1, r1, #0x10
	cmp r4, r5
	blo _020BC2E4
	b _020BC404
_020BC34C:
	add r3, r0, #0x8
	ldrb r2, [r3, #0x1]
	cmp r2, #0x0
	beq _020BC404
	ldrb r5, [r3, r2, lsl #0x2]
	ldrb r4, [r3, #0x0]
	add r2, r3, r2, lsl #0x2
	cmp r4, r5
	bls _020BC3A0
_020BC370:
	mov r4, r5, asr #0x5
	ldr r12, [r1, r4, lsl #0x2]
	and r4, r5, #0x1f
	mov r4, r12, lsr r4
	and r4, r4, #0x1
	add r4, r2, r4
	ldrb r12, [r4, #0x1]
	ldrb r4, [r2, #0x0]
	ldrb r5, [r3, r12, lsl #0x2]
	add r2, r3, r12, lsl #0x2
	cmp r4, r5
	bhi _020BC370
_020BC3A0:
	ldrh r4, [r0, #0x6]
	ldrb r2, [r2, #0x3]
	ldr r3, [r1, #0x0]
	add r0, r0, r4
	ldrh r4, [r0, #0x2]
	add r12, r0, r4
	ldr r4, [r12, r2, lsl #0x4]
	add r12, r12, r2, lsl #0x4
	cmp r4, r3
	bne _020BC404
	ldr r4, [r12, #0x4]
	ldr r3, [r1, #0x4]
	cmp r4, r3
	bne _020BC404
	ldr r4, [r12, #0x8]
	ldr r3, [r1, #0x8]
	cmp r4, r3
	bne _020BC404
	ldr r3, [r12, #0xc]
	ldr r1, [r1, #0xc]
	cmp r3, r1
	ldreqh r1, [r0], #0x4
	addeq sp, sp, #0x4
	mlaeq r0, r1, r2, r0
	ldmeqia sp!, {r4-r7,pc}
_020BC404:
	mov r0, #0x0
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020BC2A0

	arm_func_start FUN_020BC410
FUN_020BC410: ; 0x020BC410
	ldrh r3, [r0, #0x12]
	add r0, r0, #0xc
	ldrh r2, [r0, r3]
	add r0, r0, r3
	add r0, r0, #0x4
	mla r0, r2, r1, r0
	bx lr
	arm_func_end FUN_020BC410

	arm_func_start FUN_020BC42C
FUN_020BC42C: ; 0x020BC42C
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	mov r4, r2
	bl FUN_020BC410
	ldrsh r1, [r0, #0x4]
	ldrh r3, [r0, #0x6]
	mul r2, r1, r4
	add r3, r5, r3
	mov r2, r2, lsr #0xc
	b _020BC45C
_020BC458:
	sub r2, r2, #0x1
_020BC45C:
	cmp r2, #0x0
	beq _020BC474
	mov r1, r2, lsl #0x2
	ldrh r1, [r3, r1]
	cmp r1, r4
	bhs _020BC458
_020BC474:
	ldrh r1, [r0, #0x0]
	b _020BC480
_020BC47C:
	add r2, r2, #0x1
_020BC480:
	add r0, r2, #0x1
	cmp r0, r1
	bhs _020BC49C
	add r0, r3, r2, lsl #0x2
	ldrh r0, [r0, #0x4]
	cmp r0, r4
	bls _020BC47C
_020BC49C:
	add r0, r3, r2, lsl #0x2
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020BC42C

	arm_func_start FUN_020BC4A8
FUN_020BC4A8: ; 0x020BC4A8
	ldrh r2, [r0, #0xa]
	add r0, r0, r2
	add r0, r0, r1, lsl #0x4
	bx lr
	arm_func_end FUN_020BC4A8

	arm_func_start FUN_020BC4B8
FUN_020BC4B8: ; 0x020BC4B8
	ldrh r2, [r0, #0x8]
	add r0, r0, r2
	add r0, r0, r1, lsl #0x4
	bx lr
	arm_func_end FUN_020BC4B8

	arm_func_start FUN_020BC4C8
FUN_020BC4C8: ; 0x020BC4C8
	ldrh r2, [r0, #0xc]
	ldr r2, [r0, r2]
	add r12, r0, r2
	ldrh r2, [r12, #0xe]
	add r3, r12, #0x8
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #0x4
	mul r1, r0, r1
	adds r0, r2, r1
	ldrne r0, [r0, #0x0]
	addne r0, r12, r0
	moveq r0, #0x0
	bx lr
	arm_func_end FUN_020BC4C8

	arm_func_start FUN_020BC500
FUN_020BC500:
	stmdb sp!, {r4,lr}
	ands r4, r3, #0x8000
	beq _020BC5E0
	mov r2, #0x0
	str r2, [r0, #0x20]
	ldr r4, [r0, #0x20]
	ldr r2, _020BC684 ; =0x00007FFF
	str r4, [r0, #0x1c]
	ldr r4, [r0, #0x1c]
	and r3, r3, r2
	str r4, [r0, #0x18]
	ldr r4, [r0, #0x18]
	mov r2, #0x3
	str r4, [r0, #0x14]
	ldr r4, [r0, #0x14]
	mul r2, r3, r2
	str r4, [r0, #0x10]
	ldr r4, [r0, #0x10]
	mov r3, r2, lsl #0x1
	str r4, [r0, #0xc]
	ldr r4, [r0, #0xc]
	add r2, r1, r2, lsl #0x1
	str r4, [r0, #0x8]
	ldr r4, [r0, #0x8]
	str r4, [r0, #0x4]
	ldr r4, [r0, #0x4]
	str r4, [r0, #0x0]
	ldrsh r4, [r1, r3]
	ldrsh r12, [r2, #0x2]
	ldrsh r3, [r2, #0x4]
	and r1, r4, #0xf
	ands r4, r4, #0x10
	movne lr, #0x1000
	rsbne lr, lr, #0x0
	moveq lr, #0x1000
	str lr, [r0, r1, lsl #0x2]
	ldr r4, _020BC688 ; =UNK_020FFA14
	ldr lr, _020BC68C ; =UNK_020FFA14 + 1
	ldrb r4, [r4, r1, lsl #0x2]
	str r12, [r0, r4, lsl #0x2]
	ldrb lr, [lr, r1, lsl #0x2]
	str r3, [r0, lr, lsl #0x2]
	ldrsh lr, [r2, #0x0]
	ands lr, lr, #0x20
	ldr lr, _020BC690 ; =UNK_020FFA14 + 2
	rsbne r3, r3, #0x0
	ldrb lr, [lr, r1, lsl #0x2]
	str r3, [r0, lr, lsl #0x2]
	ldrsh r2, [r2, #0x0]
	ands r2, r2, #0x40
	ldr r2, _020BC694 ; =UNK_020FFA14 + 3
	rsbne r12, r12, #0x0
	ldrb r1, [r2, r1, lsl #0x2]
	str r12, [r0, r1, lsl #0x2]
	mov r0, #0x0
	ldmia sp!, {r4,pc}
_020BC5E0:
	ldr r1, _020BC684 ; =0x00007FFF
	mov r12, #0x5
	and r1, r3, r1
	mul r3, r1, r12
	add r1, r2, r3, lsl #0x1
	ldrsh lr, [r1, #0x8]
	mov r12, r3, lsl #0x1
	mov r3, lr, asr #0x3
	str r3, [r0, #0x10]
	ldrsh r12, [r2, r12]
	and r2, lr, #0x7
	mov r2, r2, lsl #0x10
	mov r3, r12, asr #0x3
	str r3, [r0, #0x0]
	ldrsh r3, [r1, #0x2]
	and r12, r12, #0x7
	orr lr, r12, r2, asr #0xd
	mov r2, r3, asr #0x3
	str r2, [r0, #0x4]
	ldrsh r12, [r1, #0x4]
	mov r2, lr, lsl #0x10
	and lr, r3, #0x7
	mov r3, r12, asr #0x3
	str r3, [r0, #0x8]
	ldrsh r3, [r1, #0x6]
	orr r1, lr, r2, asr #0xd
	mov r1, r1, lsl #0x10
	and r2, r12, #0x7
	orr r1, r2, r1, asr #0xd
	mov r1, r1, lsl #0x10
	and r2, r3, #0x7
	orr r1, r2, r1, asr #0xd
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r3, asr #0x3
	mov r1, r1, lsl #0x13
	str r2, [r0, #0xc]
	mov r1, r1, asr #0x13
	str r1, [r0, #0x14]
	mov r0, #0x1
	ldmia sp!, {r4,pc}
	.balign 4
_020BC684: .word 0x00007FFF
_020BC688: .word UNK_020FFA14
_020BC68C: .word UNK_020FFA14 + 1
_020BC690: .word UNK_020FFA14 + 2
_020BC694: .word UNK_020FFA14 + 3
	arm_func_end FUN_020BC500

	arm_func_start FUN_020BC698
FUN_020BC698: ; 0x020BC698
	stmdb sp!, {r4-r10,lr}
	sub sp, sp, #0x48
	ldrh r4, [r3, #0x4]
	ldr r5, [r3, #0xc]
	ldr r8, [r3, #0x10]
	ldr r7, [r2, #0x4]
	mov r12, r1, asr #0xc
	sub r4, r4, #0x1
	mov r6, r0
	cmp r12, r4
	add r5, r3, r5
	add r4, r3, r8
	add r8, r3, r7
	ldr r7, [r2, #0x0]
	bne _020BC780
	ands r0, r7, #0xc0000000
	beq _020BC6F0
	ands r0, r7, #0x40000000
	andne r0, r12, #0x1
	addne r12, r0, r12, lsr #0x1
	andeq r0, r12, #0x3
	addeq r12, r0, r12, lsr #0x2
_020BC6F0:
	ldr r0, [r3, #0x8]
	ands r0, r0, #0x2
	movne r7, #0x0
	bne _020BC7F4
	mov r0, r12, lsl #0x1
	ldrh r3, [r8, r0]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_020BC500
	cmp r0, #0x0
	addeq sp, sp, #0x48
	ldmeqia sp!, {r4-r10,pc}
	ldr r9, [r6, #0x14]
	ldr r5, [r6, #0x4]
	ldr r4, [r6, #0x10]
	ldr r2, [r6, #0x8]
	mul r1, r5, r9
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r7, [r6, #0xc]
	ldr r8, [r6, #0x0]
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, r9
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r5, r7
	sub r0, r1, r0
	str r3, [r6, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r6, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r0, [r6, #0x20]
	ldmia sp!, {r4-r10,pc}
_020BC780:
	ands r0, r7, #0xc0000000
	beq _020BC7F0
	ldr r0, _020BC9C4 ; =0x1FFF0000
	ands r2, r7, #0x40000000
	and r0, r7, r0
	mov r0, r0, lsr #0x10
	beq _020BC7C4
	cmp r12, r0
	movcs r12, r0, lsr #0x1
	addcs r7, r12, #0x1
	bhs _020BC7F4
	ldr r0, _020BC9C8 ; =0x00001FFF
	mov r12, r12, lsr #0x1
	add r7, r12, #0x1
	and r10, r1, r0
	mov r9, #0x2
	b _020BC800
_020BC7C4:
	cmp r12, r0
	andcs r0, r12, #0x3
	addcs r12, r0, r12, lsr #0x2
	addcs r7, r12, #0x1
	bhs _020BC7F4
	ldr r0, _020BC9CC ; =0x00003FFF
	mov r12, r12, lsr #0x2
	add r7, r12, #0x1
	and r10, r1, r0
	mov r9, #0x4
	b _020BC800
_020BC7F0:
	add r7, r12, #0x1
_020BC7F4:
	ldr r0, _020BC9D0 ; =0x00000FFF
	mov r9, #0x1
	and r10, r1, r0
_020BC800:
	mov r0, r12, lsl #0x1
	ldrh r3, [r8, r0]
	add r0, sp, #0x0
	mov r1, r5
	mov r2, r4
	bl FUN_020BC500
	mov r1, r7, lsl #0x1
	ldrh r3, [r8, r1]
	orr r7, r0, #0x0
	add r0, sp, #0x24
	mov r1, r5
	mov r2, r4
	bl FUN_020BC500
	ldr r3, [sp, #0x0]
	ldr r1, [sp, #0x24]
	mul r2, r3, r9
	sub r1, r1, r3
	mul r1, r10, r1
	add r1, r2, r1, asr #0xc
	str r1, [r6, #0x0]
	ldr r3, [sp, #0x4]
	ldr r1, [sp, #0x28]
	mul r2, r3, r9
	sub r1, r1, r3
	mul r1, r10, r1
	add r1, r2, r1, asr #0xc
	str r1, [r6, #0x4]
	ldr r3, [sp, #0x8]
	ldr r1, [sp, #0x2c]
	mul r2, r3, r9
	sub r1, r1, r3
	mul r1, r10, r1
	add r1, r2, r1, asr #0xc
	str r1, [r6, #0x8]
	ldr r3, [sp, #0xc]
	ldr r1, [sp, #0x30]
	mul r2, r3, r9
	sub r1, r1, r3
	mul r1, r10, r1
	add r1, r2, r1, asr #0xc
	str r1, [r6, #0xc]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x34]
	orr r7, r7, r0
	sub r0, r1, r2
	mul r1, r2, r9
	mul r0, r10, r0
	add r0, r1, r0, asr #0xc
	str r0, [r6, #0x10]
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x38]
	mul r1, r2, r9
	sub r0, r0, r2
	mul r0, r10, r0
	add r2, r1, r0, asr #0xc
	mov r0, r6
	mov r1, r6
	str r2, [r6, #0x14]
	bl VEC_Normalize
	add r0, r6, #0xc
	mov r1, r0
	bl VEC_Normalize
	cmp r7, #0x0
	bne _020BC968
	ldr r3, [sp, #0x18]
	ldr r1, [sp, #0x3c]
	mul r2, r3, r9
	sub r1, r1, r3
	mul r1, r10, r1
	add r1, r2, r1, asr #0xc
	str r1, [r6, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r1, [sp, #0x40]
	mul r2, r3, r9
	sub r1, r1, r3
	mul r1, r10, r1
	add r1, r2, r1, asr #0xc
	str r1, [r6, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x44]
	mul r2, r3, r9
	sub r1, r1, r3
	mul r1, r10, r1
	add r2, r2, r1, asr #0xc
	add r0, r6, #0x18
	mov r1, r0
	str r2, [r6, #0x20]
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmia sp!, {r4-r10,pc}
_020BC968:
	ldr r9, [r6, #0x14]
	ldr r5, [r6, #0x4]
	ldr r8, [r6, #0x0]
	ldr r4, [r6, #0x10]
	ldr r2, [r6, #0x8]
	ldr r7, [r6, #0xc]
	mul r1, r5, r9
	mul r0, r2, r4
	sub r0, r1, r0
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, r9
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r5, r7
	sub r0, r1, r0
	str r3, [r6, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r6, #0x1c]
	mov r0, r0, asr #0xc
	str r0, [r6, #0x20]
	add sp, sp, #0x48
	ldmia sp!, {r4-r10,pc}
	.balign 4
_020BC9C4: .word 0x1FFF0000
_020BC9C8: .word 0x00001FFF
_020BC9CC: .word 0x00003FFF
_020BC9D0: .word 0x00000FFF
	arm_func_end FUN_020BC698

	arm_func_start FUN_020BC9D4
FUN_020BC9D4: ; 0x020BC9D4
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4c
	ldr r5, [r3, #0xc]
	ldr r4, [r3, #0x10]
	ldr r12, [r2, #0x0]
	ldr r2, [r2, #0x4]
	mov r6, r0
	mov r0, r1, asr #0xc
	add r5, r3, r5
	add r4, r3, r4
	add r8, r3, r2
	ands r1, r12, #0xc0000000
	beq _020BCD40
	ldr r1, _020BCDC0 ; =0x1FFF0000
	ands r2, r12, #0x40000000
	and r1, r12, r1
	mov r2, r1, lsr #0x10
	beq _020BCA44
	ands r1, r0, #0x1
	beq _020BCA3C
	cmp r0, r2
	movhi r0, r2, lsr #0x1
	addhi r0, r0, #0x1
	bhi _020BCD40
	mov r7, r0, lsr #0x1
	b _020BCBE8
_020BCA3C:
	mov r0, r0, lsr #0x1
	b _020BCD40
_020BCA44:
	ands r1, r0, #0x3
	beq _020BCBE0
	cmp r0, r2
	addhi r0, r1, r2, lsr #0x2
	bhi _020BCD40
	ands r1, r0, #0x1
	beq _020BCBD8
	ands r1, r0, #0x2
	movne r9, r0, lsr #0x2
	addne r0, r9, #0x1
	moveq r0, r0, lsr #0x2
	addeq r9, r0, #0x1
	mov r0, r0, lsl #0x1
	ldrh r3, [r8, r0]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r7, #0x0
	bl FUN_020BC500
	mov r1, r9, lsl #0x1
	ldrh r3, [r8, r1]
	orr r7, r7, r0
	add r0, sp, #0x0
	mov r1, r5
	mov r2, r4
	bl FUN_020BC500
	ldr r3, [sp, #0x0]
	ldr r1, [r6, #0x0]
	mov r2, #0x3
	mla r3, r1, r2, r3
	str r3, [r6, #0x0]
	ldr r3, [sp, #0x4]
	ldr r1, [r6, #0x4]
	orr r7, r7, r0
	mla r0, r1, r2, r3
	str r0, [r6, #0x4]
	ldr r3, [sp, #0x8]
	ldr r1, [r6, #0x8]
	mov r0, r6
	mla r3, r1, r2, r3
	str r3, [r6, #0x8]
	ldr r4, [sp, #0xc]
	ldr r3, [r6, #0xc]
	mov r1, r6
	mla r4, r3, r2, r4
	str r4, [r6, #0xc]
	ldr r4, [sp, #0x10]
	ldr r3, [r6, #0x10]
	mla r4, r3, r2, r4
	str r4, [r6, #0x10]
	ldr r4, [sp, #0x14]
	ldr r3, [r6, #0x14]
	mla r2, r3, r2, r4
	str r2, [r6, #0x14]
	bl VEC_Normalize
	add r0, r6, #0xc
	mov r1, r0
	bl VEC_Normalize
	cmp r7, #0x0
	bne _020BCB7C
	ldr r1, [sp, #0x18]
	ldr r0, [r6, #0x18]
	mov r2, #0x3
	mla r1, r0, r2, r1
	str r1, [r6, #0x18]
	ldr r3, [sp, #0x1c]
	ldr r1, [r6, #0x1c]
	add r0, r6, #0x18
	mla r3, r1, r2, r3
	str r3, [r6, #0x1c]
	ldr r4, [sp, #0x20]
	ldr r3, [r6, #0x20]
	mov r1, r0
	mla r2, r3, r2, r4
	str r2, [r6, #0x20]
	bl VEC_Normalize
	add sp, sp, #0x4c
	ldmia sp!, {r4-r9,pc}
_020BCB7C:
	ldr r12, [r6, #0x14]
	ldr r5, [r6, #0x4]
	ldr r4, [r6, #0x10]
	ldr r2, [r6, #0x8]
	mul r1, r5, r12
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r7, [r6, #0xc]
	ldr r8, [r6, #0x0]
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, r12
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r5, r7
	sub r0, r1, r0
	str r3, [r6, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r6, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x4c
	str r0, [r6, #0x20]
	ldmia sp!, {r4-r9,pc}
_020BCBD8:
	mov r7, r0, lsr #0x2
	b _020BCBE8
_020BCBE0:
	mov r0, r0, lsr #0x2
	b _020BCD40
_020BCBE8:
	mov r0, r7, lsl #0x1
	ldrh r3, [r8, r0]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_020BC500
	add r1, r8, r7, lsl #0x1
	ldrh r3, [r1, #0x2]
	orr r7, r0, #0x0
	add r0, sp, #0x24
	mov r1, r5
	mov r2, r4
	bl FUN_020BC500
	ldr r2, [r6, #0x0]
	ldr r1, [sp, #0x24]
	orr r7, r7, r0
	add r0, r2, r1
	str r0, [r6, #0x0]
	ldr r2, [r6, #0x4]
	ldr r1, [sp, #0x28]
	mov r0, r6
	add r1, r2, r1
	str r1, [r6, #0x4]
	ldr r3, [r6, #0x8]
	ldr r2, [sp, #0x2c]
	mov r1, r6
	add r2, r3, r2
	str r2, [r6, #0x8]
	ldr r3, [r6, #0xc]
	ldr r2, [sp, #0x30]
	add r2, r3, r2
	str r2, [r6, #0xc]
	ldr r3, [r6, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r3, r2
	str r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	ldr r2, [sp, #0x38]
	add r2, r3, r2
	str r2, [r6, #0x14]
	bl VEC_Normalize
	add r0, r6, #0xc
	mov r1, r0
	bl VEC_Normalize
	cmp r7, #0x0
	bne _020BCCE4
	ldr r2, [r6, #0x18]
	ldr r1, [sp, #0x3c]
	add r0, r6, #0x18
	add r1, r2, r1
	str r1, [r6, #0x18]
	ldr r3, [r6, #0x1c]
	ldr r2, [sp, #0x40]
	mov r1, r0
	add r2, r3, r2
	str r2, [r6, #0x1c]
	ldr r3, [r6, #0x20]
	ldr r2, [sp, #0x44]
	add r2, r3, r2
	str r2, [r6, #0x20]
	bl VEC_Normalize
	add sp, sp, #0x4c
	ldmia sp!, {r4-r9,pc}
_020BCCE4:
	ldr r12, [r6, #0x14]
	ldr r5, [r6, #0x4]
	ldr r4, [r6, #0x10]
	ldr r2, [r6, #0x8]
	mul r1, r5, r12
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r7, [r6, #0xc]
	ldr r8, [r6, #0x0]
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, r12
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r5, r7
	sub r0, r1, r0
	str r3, [r6, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r6, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x4c
	str r0, [r6, #0x20]
	ldmia sp!, {r4-r9,pc}
_020BCD40:
	mov r0, r0, lsl #0x1
	ldrh r3, [r8, r0]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_020BC500
	cmp r0, #0x0
	addeq sp, sp, #0x4c
	ldmeqia sp!, {r4-r9,pc}
	ldr r12, [r6, #0x14]
	ldr r5, [r6, #0x4]
	ldr r8, [r6, #0x0]
	ldr r4, [r6, #0x10]
	ldr r2, [r6, #0x8]
	ldr r7, [r6, #0xc]
	mul r1, r5, r12
	mul r0, r2, r4
	sub r0, r1, r0
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, r12
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r5, r7
	sub r0, r1, r0
	str r3, [r6, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r6, #0x1c]
	mov r0, r0, asr #0xc
	str r0, [r6, #0x20]
	add sp, sp, #0x4c
	ldmia sp!, {r4-r9,pc}
	.balign 4
_020BCDC0: .word 0x1FFF0000
	arm_func_end FUN_020BC9D4

	arm_func_start FUN_020BCDC4
FUN_020BCDC4: ; 0x020BCDC4
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	ldrh r4, [r3, #0x4]
	ldr r6, [r2, #0x4]
	mov r5, r1, asr #0xc
	sub r4, r4, #0x1
	cmp r5, r4
	add r6, r3, r6
	ldr r2, [r2, #0x0]
	bne _020BCE58
	ands r4, r2, #0xc0000000
	beq _020BCE08
	ands r4, r2, #0x40000000
	andne r4, r5, #0x1
	addne r5, r4, r5, lsr #0x1
	andeq r4, r5, #0x3
	addeq r5, r4, r5, lsr #0x2
_020BCE08:
	ldr r3, [r3, #0x8]
	ands r3, r3, #0x2
	movne r4, #0x0
	bne _020BCED4
	ands r1, r2, #0x20000000
	ldreq r2, [r6, r5, lsl #0x3]
	addeq r1, r6, r5, lsl #0x3
	streq r2, [r0, #0x0]
	ldreq r1, [r1, #0x4]
	addeq sp, sp, #0x4
	streq r1, [r0, #0x4]
	ldmeqia sp!, {r4-r7,pc}
	mov r1, r5, lsl #0x2
	ldrsh r2, [r6, r1]
	add r1, r6, r5, lsl #0x2
	add sp, sp, #0x4
	str r2, [r0, #0x0]
	ldrsh r1, [r1, #0x2]
	str r1, [r0, #0x4]
	ldmia sp!, {r4-r7,pc}
_020BCE58:
	ands r3, r2, #0xc0000000
	beq _020BCED0
	ldr r3, _020BCF60 ; =0x1FFF0000
	ands r4, r2, #0x40000000
	and r3, r2, r3
	mov r3, r3, lsr #0x10
	beq _020BCEA0
	cmp r5, r3
	movcs r5, r3, lsr #0x1
	addcs r4, r5, #0x1
	bhs _020BCED4
	ldr r3, _020BCF64 ; =0x00001FFF
	mov r5, r5, lsr #0x1
	add r4, r5, #0x1
	and lr, r1, r3
	mov r12, #0x2
	mov r3, #0x1
	b _020BCEE4
_020BCEA0:
	cmp r5, r3
	andcs r3, r5, #0x3
	addcs r5, r3, r5, lsr #0x2
	addcs r4, r5, #0x1
	bhs _020BCED4
	ldr r3, _020BCF68 ; =0x00003FFF
	mov r5, r5, lsr #0x2
	add r4, r5, #0x1
	and lr, r1, r3
	mov r12, #0x4
	mov r3, #0x2
	b _020BCEE4
_020BCED0:
	add r4, r5, #0x1
_020BCED4:
	ldr r3, _020BCF6C ; =0x00000FFF
	mov r12, #0x1
	and lr, r1, r3
	mov r3, #0x0
_020BCEE4:
	ands r1, r2, #0x20000000
	beq _020BCF10
	mov r2, r5, lsl #0x2
	add r1, r6, r5, lsl #0x2
	mov r5, r4, lsl #0x2
	add r4, r6, r4, lsl #0x2
	ldrsh r2, [r6, r2]
	ldrsh r1, [r1, #0x2]
	ldrsh r5, [r6, r5]
	ldrsh r4, [r4, #0x2]
	b _020BCF28
_020BCF10:
	add r1, r6, r5, lsl #0x3
	add r7, r6, r4, lsl #0x3
	ldr r2, [r6, r5, lsl #0x3]
	ldr r1, [r1, #0x4]
	ldr r5, [r6, r4, lsl #0x3]
	ldr r4, [r7, #0x4]
_020BCF28:
	sub r5, r5, r2
	sub r4, r4, r1
	mul r6, r2, r12
	mul r2, lr, r5
	add r2, r6, r2, asr #0xc
	mov r5, r2, asr r3
	mul r2, r1, r12
	mul r1, lr, r4
	add r1, r2, r1, asr #0xc
	mov r1, r1, asr r3
	str r5, [r0, #0x0]
	str r1, [r0, #0x4]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	.balign 4
_020BCF60: .word 0x1FFF0000
_020BCF64: .word 0x00001FFF
_020BCF68: .word 0x00003FFF
_020BCF6C: .word 0x00000FFF
	arm_func_end FUN_020BCDC4

	arm_func_start FUN_020BCF70
FUN_020BCF70: ; 0x020BCF70
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldr r4, [r2, #0x4]
	ldr r12, [r2, #0x0]
	mov r1, r1, asr #0xc
	add r3, r3, r4
	ands r2, r12, #0xc0000000
	beq _020BD0D0
	ldr r2, _020BD184 ; =0x1FFF0000
	ands r4, r12, #0x40000000
	and r2, r12, r2
	mov r4, r2, lsr #0x10
	beq _020BCFCC
	ands r2, r1, #0x1
	beq _020BCFC4
	cmp r1, r4
	movhi r1, r4, lsr #0x1
	addhi r1, r1, #0x1
	bhi _020BD0D0
	mov r2, r1, lsr #0x1
	b _020BD110
_020BCFC4:
	mov r1, r1, lsr #0x1
	b _020BD0D0
_020BCFCC:
	ands r2, r1, #0x3
	beq _020BD0CC
	cmp r1, r4
	addhi r1, r2, r4, lsr #0x2
	bhi _020BD0D0
	ands r2, r1, #0x1
	beq _020BD0C4
	ands r2, r1, #0x2
	movne r1, r1, lsr #0x2
	addne r2, r1, #0x1
	moveq r2, r1, lsr #0x2
	addeq r1, r2, #0x1
	ands r4, r12, #0x20000000
	beq _020BD04C
	mov r5, r2, lsl #0x2
	mov r4, r1, lsl #0x2
	ldrsh r12, [r3, r5]
	ldrsh r5, [r3, r4]
	add r2, r3, r2, lsl #0x2
	add r4, r12, r12, lsl #0x1
	add r4, r5, r4
	mov r4, r4, asr #0x2
	str r4, [r0, #0x0]
	add r1, r3, r1, lsl #0x2
	ldrsh r3, [r2, #0x2]
	ldrsh r2, [r1, #0x2]
	add sp, sp, #0x4
	add r1, r3, r3, lsl #0x1
	add r1, r2, r1
	mov r1, r1, asr #0x2
	str r1, [r0, #0x4]
	ldmia sp!, {r4-r5,pc}
_020BD04C:
	ldr r5, [r3, r2, lsl #0x3]
	ldr r4, [r3, r1, lsl #0x3]
	mov r12, r5, asr #0x1f
	mov r12, r12, lsl #0x1
	mov lr, r5, lsl #0x1
	orr r12, r12, r5, lsr #0x1f
	adds lr, lr, r5
	adc r12, r12, r5, asr #0x1f
	adds lr, lr, r4
	adc r12, r12, r4, asr #0x1f
	mov lr, lr, lsr #0x2
	orr lr, lr, r12, lsl #0x1e
	str lr, [r0, #0x0]
	add r2, r3, r2, lsl #0x3
	ldr r12, [r2, #0x4]
	add r1, r3, r1, lsl #0x3
	mov r2, r12, asr #0x1f
	mov r2, r2, lsl #0x1
	mov r3, r12, lsl #0x1
	ldr r1, [r1, #0x4]
	orr r2, r2, r12, lsr #0x1f
	adds r3, r3, r12
	adc r2, r2, r12, asr #0x1f
	adds r3, r3, r1
	adc r1, r2, r1, asr #0x1f
	mov r2, r3, lsr #0x2
	orr r2, r2, r1, lsl #0x1e
	str r2, [r0, #0x4]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
_020BD0C4:
	mov r2, r1, lsr #0x2
	b _020BD110
_020BD0CC:
	mov r1, r1, lsr #0x2
_020BD0D0:
	ands r2, r12, #0x20000000
	ldreq r2, [r3, r1, lsl #0x3]
	addeq r1, r3, r1, lsl #0x3
	streq r2, [r0, #0x0]
	ldreq r1, [r1, #0x4]
	addeq sp, sp, #0x4
	streq r1, [r0, #0x4]
	ldmeqia sp!, {r4-r5,pc}
	mov r2, r1, lsl #0x2
	ldrsh r2, [r3, r2]
	add r1, r3, r1, lsl #0x2
	add sp, sp, #0x4
	str r2, [r0, #0x0]
	ldrsh r1, [r1, #0x2]
	str r1, [r0, #0x4]
	ldmia sp!, {r4-r5,pc}
_020BD110:
	ands r1, r12, #0x20000000
	beq _020BD150
	mov r1, r2, lsl #0x2
	add r12, r3, r2, lsl #0x2
	ldrsh r2, [r3, r1]
	ldrsh r1, [r12, #0x4]
	add sp, sp, #0x4
	add r1, r2, r1
	mov r1, r1, asr #0x1
	str r1, [r0, #0x0]
	ldrsh r2, [r12, #0x2]
	ldrsh r1, [r12, #0x6]
	add r1, r2, r1
	mov r1, r1, asr #0x1
	str r1, [r0, #0x4]
	ldmia sp!, {r4-r5,pc}
_020BD150:
	add r12, r3, r2, lsl #0x3
	ldr r2, [r3, r2, lsl #0x3]
	ldr r1, [r12, #0x8]
	add r1, r2, r1
	mov r1, r1, asr #0x1
	str r1, [r0, #0x0]
	ldr r2, [r12, #0x4]
	ldr r1, [r12, #0xc]
	add r1, r2, r1
	mov r1, r1, asr #0x1
	str r1, [r0, #0x4]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020BD184: .word 0x1FFF0000
	arm_func_end FUN_020BCF70

	arm_func_start FUN_020BD188
FUN_020BD188: ; 0x020BD188
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	ldrh r4, [r3, #0x4]
	ldr lr, [r2, #0x4]
	mov r12, r1, asr #0xc
	sub r4, r4, #0x1
	cmp r12, r4
	add r4, r3, lr
	ldr lr, [r2, #0x0]
	bne _020BD230
	ands r2, lr, #0xc0000000
	beq _020BD1CC
	ands r2, lr, #0x40000000
	andne r2, r12, #0x1
	addne r12, r2, r12, lsr #0x1
	andeq r2, r12, #0x3
	addeq r12, r2, r12, lsr #0x2
_020BD1CC:
	ldr r2, [r3, #0x8]
	ands r2, r2, #0x2
	beq _020BD210
	ldr r2, _020BD2E8 ; =0x00000FFF
	ands r3, lr, #0x20000000
	and r3, r1, r2
	movne r1, r12, lsl #0x1
	ldrnesh r2, [r4, r1]
	ldrnesh r1, [r4, #0x0]
	add sp, sp, #0x4
	ldreq r2, [r4, r12, lsl #0x2]
	ldreq r1, [r4, #0x0]
	sub r1, r1, r2
	mul r1, r3, r1
	add r1, r2, r1, asr #0xc
	str r1, [r0, #0x0]
	ldmia sp!, {r4-r5,pc}
_020BD210:
	ands r1, lr, #0x20000000
	movne r1, r12, lsl #0x1
	ldrnesh r1, [r4, r1]
	add sp, sp, #0x4
	strne r1, [r0, #0x0]
	ldreq r1, [r4, r12, lsl #0x2]
	streq r1, [r0, #0x0]
	ldmia sp!, {r4-r5,pc}
_020BD230:
	ands r2, lr, #0xc0000000
	beq _020BD298
	ldr r2, _020BD2EC ; =0x1FFF0000
	ands r3, lr, #0x40000000
	and r2, lr, r2
	mov r2, r2, lsr #0x10
	beq _020BD270
	cmp r12, r2
	movcs r12, r2, lsr #0x1
	bhs _020BD298
	ldr r2, _020BD2F0 ; =0x00001FFF
	mov r12, r12, lsr #0x1
	and r5, r1, r2
	mov r2, #0x2
	mov r1, #0x1
	b _020BD2A8
_020BD270:
	cmp r12, r2
	andcs r2, r12, #0x3
	addcs r12, r2, r12, lsr #0x2
	bhs _020BD298
	ldr r2, _020BD2F4 ; =0x00003FFF
	mov r12, r12, lsr #0x2
	and r5, r1, r2
	mov r2, #0x4
	mov r1, #0x2
	b _020BD2A8
_020BD298:
	ldr r3, _020BD2E8 ; =0x00000FFF
	mov r2, #0x1
	and r5, r1, r3
	mov r1, #0x0
_020BD2A8:
	ands r3, lr, #0x20000000
	addne r3, r4, r12, lsl #0x1
	movne lr, r12, lsl #0x1
	ldrnesh r12, [r4, lr]
	ldrnesh r3, [r3, #0x2]
	addeq r3, r4, r12, lsl #0x2
	ldreq r12, [r4, r12, lsl #0x2]
	ldreq r3, [r3, #0x4]
	mul r4, r12, r2
	sub r3, r3, r12
	mul r2, r5, r3
	add r2, r4, r2, asr #0xc
	mov r1, r2, asr r1
	str r1, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020BD2E8: .word 0x00000FFF
_020BD2EC: .word 0x1FFF0000
_020BD2F0: .word 0x00001FFF
_020BD2F4: .word 0x00003FFF
	arm_func_end FUN_020BD188

	arm_func_start FUN_020BD2F8
FUN_020BD2F8: ; 0x020BD2F8
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr r12, [r2, #0x4]
	ldr r2, [r2, #0x0]
	mov r1, r1, asr #0xc
	add r3, r3, r12
	ands r12, r2, #0xc0000000
	beq _020BD44C
	ldr ip, _020BD46C ; =0x1FFF0000
	ands lr, r2, #0x40000000
	and r12, r2, r12
	mov lr, r12, lsr #0x10
	beq _020BD354
	ands r12, r1, #0x1
	beq _020BD34C
	cmp r1, lr
	movhi r1, lr, lsr #0x1
	addhi r1, r1, #0x1
	bhi _020BD44C
	mov r12, r1, lsr #0x1
	b _020BD400
_020BD34C:
	mov r1, r1, lsr #0x1
	b _020BD44C
_020BD354:
	ands r12, r1, #0x3
	beq _020BD3F8
	cmp r1, lr
	addhi r1, r12, lr, lsr #0x2
	bhi _020BD44C
	ands r12, r1, #0x1
	beq _020BD3F0
	ands r12, r1, #0x2
	movne lr, r1, lsr #0x2
	addne r12, lr, #0x1
	moveq r12, r1, lsr #0x2
	addeq lr, r12, #0x1
	ands r1, r2, #0x20000000
	beq _020BD3B4
	mov r2, r12, lsl #0x1
	mov r1, lr, lsl #0x1
	ldrsh r12, [r3, r2]
	ldrsh r2, [r3, r1]
	mov r1, #0x3
	add sp, sp, #0x4
	smlabb r1, r12, r1, r2
	mov r1, r1, asr #0x2
	str r1, [r0, #0x0]
	ldmia sp!, {pc}
_020BD3B4:
	ldr r12, [r3, r12, lsl #0x2]
	ldr r1, [r3, lr, lsl #0x2]
	mov r2, r12, asr #0x1f
	mov r2, r2, lsl #0x1
	mov r3, r12, lsl #0x1
	orr r2, r2, r12, lsr #0x1f
	adds r3, r3, r12
	adc r2, r2, r12, asr #0x1f
	adds r3, r3, r1
	adc r1, r2, r1, asr #0x1f
	mov r2, r3, lsr #0x2
	orr r2, r2, r1, lsl #0x1e
	str r2, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {pc}
_020BD3F0:
	mov r12, r1, lsr #0x2
	b _020BD400
_020BD3F8:
	mov r1, r1, lsr #0x2
	b _020BD44C
_020BD400:
	ands r1, r2, #0x20000000
	beq _020BD42C
	mov r2, r12, lsl #0x1
	add r1, r3, r12, lsl #0x1
	ldrsh r2, [r3, r2]
	ldrsh r1, [r1, #0x2]
	add sp, sp, #0x4
	add r1, r2, r1
	mov r1, r1, asr #0x1
	str r1, [r0, #0x0]
	ldmia sp!, {pc}
_020BD42C:
	add r1, r3, r12, lsl #0x2
	ldr r2, [r3, r12, lsl #0x2]
	ldr r1, [r1, #0x4]
	mov r2, r2, asr #0x1
	add r1, r2, r1, asr #0x1
	str r1, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {pc}
_020BD44C:
	ands r2, r2, #0x20000000
	movne r1, r1, lsl #0x1
	ldrnesh r1, [r3, r1]
	strne r1, [r0, #0x0]
	ldreq r1, [r3, r1, lsl #0x2]
	streq r1, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020BD46C: .word 0x1FFF0000
	arm_func_end FUN_020BD2F8

	arm_func_start FUN_020BD470
FUN_020BD470: ; 0x020BD470
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x34
	mov r9, r0
	add r0, r9, r1, lsl #0x1
	ldrh r0, [r0, #0x14]
	mov r7, r3
	mov r8, r2
	ldr r5, [r9, r0]
	add r1, r9, r0
	ands r0, r5, #0x1
	movne r0, #0x7
	strne r0, [r7, #0x0]
	bne _020BD814
	ldr r0, _020BD848 ; =0x00000FFF
	add r4, r1, #0x4
	ands r0, r8, r0
	beq _020BD4C4
	ldr r0, [r9, #0x8]
	ands r0, r0, #0x1
	movne r6, #0x1
	bne _020BD4C8
_020BD4C4:
	mov r6, #0x0
_020BD4C8:
	mov r0, #0x0
	str r0, [r7, #0x0]
	ands r0, r5, #0x6
	bne _020BD5C0
	ands r0, r5, #0x8
	bne _020BD51C
	cmp r6, #0x0
	beq _020BD500
	mov r1, r8
	mov r2, r4
	mov r3, r9
	add r0, r7, #0x4c
	bl FUN_020BD188
	b _020BD514
_020BD500:
	mov r1, r8
	mov r2, r4
	mov r3, r9
	add r0, r7, #0x4c
	bl FUN_020BD2F8
_020BD514:
	add r4, r4, #0x8
	b _020BD524
_020BD51C:
	ldr r0, [r4], #0x4
	str r0, [r7, #0x4c]
_020BD524:
	ands r0, r5, #0x10
	bne _020BD568
	cmp r6, #0x0
	beq _020BD54C
	mov r1, r8
	mov r2, r4
	mov r3, r9
	add r0, r7, #0x50
	bl FUN_020BD188
	b _020BD560
_020BD54C:
	mov r1, r8
	mov r2, r4
	mov r3, r9
	add r0, r7, #0x50
	bl FUN_020BD2F8
_020BD560:
	add r4, r4, #0x8
	b _020BD570
_020BD568:
	ldr r0, [r4], #0x4
	str r0, [r7, #0x50]
_020BD570:
	ands r0, r5, #0x20
	bne _020BD5B4
	cmp r6, #0x0
	beq _020BD598
	mov r1, r8
	mov r2, r4
	mov r3, r9
	add r0, r7, #0x54
	bl FUN_020BD188
	b _020BD5AC
_020BD598:
	mov r1, r8
	mov r2, r4
	mov r3, r9
	add r0, r7, #0x54
	bl FUN_020BD2F8
_020BD5AC:
	add r4, r4, #0x8
	b _020BD5DC
_020BD5B4:
	ldr r0, [r4], #0x4
	str r0, [r7, #0x54]
	b _020BD5DC
_020BD5C0:
	ands r0, r5, #0x2
	ldrne r0, [r7, #0x0]
	orrne r0, r0, #0x4
	strne r0, [r7, #0x0]
	bne _020BD5DC
	mov r0, r7
	bl FUN_020BDA08
_020BD5DC:
	ands r0, r5, #0xc0
	bne _020BD6A8
	ands r0, r5, #0x100
	bne _020BD628
	cmp r6, #0x0
	beq _020BD60C
	mov r1, r8
	mov r2, r4
	mov r3, r9
	add r0, r7, #0x28
	bl FUN_020BC698
	b _020BD620
_020BD60C:
	mov r1, r8
	mov r2, r4
	mov r3, r9
	add r0, r7, #0x28
	bl FUN_020BC9D4
_020BD620:
	add r4, r4, #0x8
	b _020BD6C4
_020BD628:
	ldr r1, [r9, #0xc]
	ldr r2, [r9, #0x10]
	ldr r3, [r4, #0x0]
	add r0, r7, #0x28
	add r1, r9, r1
	add r2, r9, r2
	bl FUN_020BC500
	cmp r0, #0x0
	beq _020BD6A0
	ldr r12, [r7, #0x3c]
	ldr r0, [r7, #0x2c]
	ldr r3, [r7, #0x28]
	ldr r11, [r7, #0x38]
	ldr r1, [r7, #0x30]
	ldr r2, [r7, #0x34]
	mul r10, r0, r12
	mul lr, r1, r11
	sub r10, r10, lr
	mov r10, r10, asr #0xc
	mul lr, r1, r2
	mul r1, r3, r12
	sub r1, lr, r1
	mul r11, r3, r11
	mul r2, r0, r2
	sub r0, r11, r2
	str r10, [r7, #0x40]
	mov r1, r1, asr #0xc
	str r1, [r7, #0x44]
	mov r0, r0, asr #0xc
	str r0, [r7, #0x48]
_020BD6A0:
	add r4, r4, #0x4
	b _020BD6C4
_020BD6A8:
	ands r0, r5, #0x40
	ldrne r0, [r7, #0x0]
	orrne r0, r0, #0x2
	strne r0, [r7, #0x0]
	bne _020BD6C4
	mov r0, r7
	bl FUN_020BD850
_020BD6C4:
	ands r0, r5, #0x600
	bne _020BD7F0
	ands r0, r5, #0x800
	bne _020BD71C
	cmp r6, #0x0
	beq _020BD6F4
	add r0, sp, #0x0
	mov r1, r8
	mov r2, r4
	mov r3, r9
	bl FUN_020BCDC4
	b _020BD708
_020BD6F4:
	add r0, sp, #0x0
	mov r1, r8
	mov r2, r4
	mov r3, r9
	bl FUN_020BCF70
_020BD708:
	ldr r1, [sp, #0x0]
	ldr r0, [sp, #0x4]
	str r1, [sp, #0x18]
	str r0, [sp, #0x24]
	b _020BD72C
_020BD71C:
	ldr r0, [r4, #0x0]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x4]
	str r0, [sp, #0x24]
_020BD72C:
	ands r0, r5, #0x1000
	bne _020BD77C
	cmp r6, #0x0
	beq _020BD754
	add r0, sp, #0x8
	mov r1, r8
	mov r3, r9
	add r2, r4, #0x8
	bl FUN_020BCDC4
	b _020BD768
_020BD754:
	add r0, sp, #0x8
	mov r1, r8
	mov r3, r9
	add r2, r4, #0x8
	bl FUN_020BCF70
_020BD768:
	ldr r1, [sp, #0x8]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x28]
	b _020BD78C
_020BD77C:
	ldr r0, [r4, #0x8]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x28]
_020BD78C:
	ands r0, r5, #0x2000
	bne _020BD7DC
	cmp r6, #0x0
	beq _020BD7B4
	add r0, sp, #0x10
	mov r1, r8
	mov r3, r9
	add r2, r4, #0x10
	bl FUN_020BCDC4
	b _020BD7C8
_020BD7B4:
	add r0, sp, #0x10
	mov r1, r8
	mov r3, r9
	add r2, r4, #0x10
	bl FUN_020BCF70
_020BD7C8:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x20]
	str r0, [sp, #0x2c]
	b _020BD814
_020BD7DC:
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x2c]
	b _020BD814
_020BD7F0:
	ands r0, r5, #0x200
	ldrne r0, [r7, #0x0]
	orrne r0, r0, #0x1
	strne r0, [r7, #0x0]
	bne _020BD814
	mov r0, r7
	bl FUN_020BD9A4
	add sp, sp, #0x34
	ldmia sp!, {r4-r11,pc}
_020BD814:
	ldr r0, [r7, #0x0]
	add r1, sp, #0x18
	ands r0, r0, #0x1
	ldr r0, _020BD84C ; =UNK_021CEF7C
	movne r3, #0x4
	ldr r4, [r0, #0x0]
	moveq r3, #0x0
	ldr r2, [r4, #0x0]
	ldr r4, [r4, #0xe8]
	mov r0, r7
	blx r4
	add sp, sp, #0x34
	ldmia sp!, {r4-r11,pc}
	.balign 4
_020BD848: .word 0x00000FFF
_020BD84C: .word UNK_021CEF7C
	arm_func_end FUN_020BD470

	arm_func_start FUN_020BD850
FUN_020BD850: ; 0x020BD850
	stmdb sp!, {r4-r8,lr}
	ldr r1, _020BD990 ; =UNK_021CEF7C
	mov r8, r0
	ldr r0, [r1, #0x0]
	ldr r3, [r0, #0xd4]
	ldr r0, [r0, #0x0]
	ldrh r2, [r3, #0x6]
	ldrb r0, [r0, #0x1]
	ldrh r1, [r3, r2]
	add r2, r3, r2
	mla r0, r1, r0, r2
	ldr r0, [r0, #0x4]
	ldrh r2, [r3, r0]
	add r4, r3, r0
	add r1, r4, #0x4
	ands r0, r2, #0x1
	addeq r1, r1, #0xc
	ands r0, r2, #0x2
	bne _020BD980
	ands r0, r2, #0x8
	beq _020BD934
	and r2, r2, #0xf0
	add r0, r8, #0x28
	mov r5, r2, asr #0x4
	ldrsh r7, [r1, #0x0]
	ldrsh r6, [r1, #0x2]
	bl MI_Zero36B
	ldrh r0, [r4, #0x0]
	add r1, r8, r5, lsl #0x2
	ands r0, r0, #0x100
	movne r0, #0x1000
	rsbne r2, r0, #0x0
	moveq r2, #0x1000
	ldr r0, _020BD994 ; =UNK_020FFA14
	str r2, [r1, #0x28]
	ldrb r1, [r0, r5, lsl #0x2]
	ldr r0, _020BD998 ; =UNK_020FFA14 + 1
	add r1, r8, r1, lsl #0x2
	str r7, [r1, #0x28]
	ldrb r0, [r0, r5, lsl #0x2]
	add r0, r8, r0, lsl #0x2
	str r6, [r0, #0x28]
	ldrh r0, [r4, #0x0]
	ands r0, r0, #0x200
	ldr r0, _020BD99C ; =UNK_020FFA14 + 2
	rsbne r6, r6, #0x0
	ldrb r0, [r0, r5, lsl #0x2]
	add r0, r8, r0, lsl #0x2
	str r6, [r0, #0x28]
	ldrh r0, [r4, #0x0]
	ands r0, r0, #0x400
	ldr r0, _020BD9A0 ; =UNK_020FFA14 + 3
	rsbne r7, r7, #0x0
	ldrb r0, [r0, r5, lsl #0x2]
	add r0, r8, r0, lsl #0x2
	str r7, [r0, #0x28]
	ldmia sp!, {r4-r8,pc}
_020BD934:
	ldrsh r0, [r4, #0x2]
	str r0, [r8, #0x28]
	ldrsh r0, [r1, #0x0]
	str r0, [r8, #0x2c]
	ldrsh r0, [r1, #0x2]
	str r0, [r8, #0x30]
	ldrsh r0, [r1, #0x4]
	str r0, [r8, #0x34]
	ldrsh r0, [r1, #0x6]
	str r0, [r8, #0x38]
	ldrsh r0, [r1, #0x8]
	str r0, [r8, #0x3c]
	ldrsh r0, [r1, #0xa]
	str r0, [r8, #0x40]
	ldrsh r0, [r1, #0xc]
	str r0, [r8, #0x44]
	ldrsh r0, [r1, #0xe]
	str r0, [r8, #0x48]
	ldmia sp!, {r4-r8,pc}
_020BD980:
	ldr r0, [r8, #0x0]
	orr r0, r0, #0x2
	str r0, [r8, #0x0]
	ldmia sp!, {r4-r8,pc}
	.balign 4
_020BD990: .word UNK_021CEF7C
_020BD994: .word UNK_020FFA14
_020BD998: .word UNK_020FFA14 + 1
_020BD99C: .word UNK_020FFA14 + 2
_020BD9A0: .word UNK_020FFA14 + 3
	arm_func_end FUN_020BD850

	arm_func_start FUN_020BD9A4
FUN_020BD9A4: ; 0x020BD9A4
	stmdb sp!, {r4,lr}
	ldr r1, _020BDA04 ; =UNK_021CEF7C
	ldr r12, [r1, #0x0]
	ldr r4, [r12, #0xd4]
	ldr r2, [r12, #0x0]
	ldrh lr, [r4, #0x6]
	ldrb r1, [r2, #0x1]
	ldrh r3, [r4, lr]
	add lr, r4, lr
	mla r1, r3, r1, lr
	ldr r1, [r1, #0x4]
	ldrh r3, [r4, r1]
	add r1, r4, r1
	add r1, r1, #0x4
	ands lr, r3, #0x1
	addeq r1, r1, #0xc
	ands lr, r3, #0x2
	bne _020BD9F8
	ands lr, r3, #0x8
	addne r1, r1, #0x4
	addeq r1, r1, #0x10
_020BD9F8:
	ldr r12, [r12, #0xe8]
	blx r12
	ldmia sp!, {r4,pc}
	.balign 4
_020BDA04: .word UNK_021CEF7C
	arm_func_end FUN_020BD9A4

	arm_func_start FUN_020BDA08
FUN_020BDA08: ; 0x020BDA08
	ldr r1, _020BDA6C ; =UNK_021CEF7C
	ldr r1, [r1, #0x0]
	ldr r12, [r1, #0xd4]
	ldr r1, [r1, #0x0]
	ldrh r3, [r12, #0x6]
	ldrb r1, [r1, #0x1]
	ldrh r2, [r12, r3]
	add r3, r12, r3
	mla r1, r2, r1, r3
	ldr r2, [r1, #0x4]
	ldrh r1, [r12, r2]
	add r2, r12, r2
	ands r1, r1, #0x1
	ldrne r1, [r0, #0x0]
	orrne r1, r1, #0x4
	strne r1, [r0, #0x0]
	bxne lr
	ldr r1, [r2, #0x4]
	add r2, r2, #0x4
	str r1, [r0, #0x4c]
	ldr r1, [r2, #0x4]
	str r1, [r0, #0x50]
	ldr r1, [r2, #0x8]
	str r1, [r0, #0x54]
	bx lr
	.balign 4
_020BDA6C: .word UNK_021CEF7C
	arm_func_end FUN_020BDA08

	arm_func_start FUN_020BDA70
FUN_020BDA70: ; 0x020BDA70
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov r3, r0
	ldr r0, [r1, #0x8]
	ldr r12, [r1, #0x0]
	ldrh r1, [r0, #0x4]
	mov r1, r1, lsl #0xc
	cmp r12, r1
	subge r12, r1, #0x1
	bge _020BDAA0
	cmp r12, #0x0
	movlt r12, #0x0
_020BDAA0:
	mov r1, r2
	mov r2, r12
	bl FUN_020BD470
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020BDA70

	arm_func_start FUN_020BDAB4
FUN_020BDAB4: ; 0x020BDAB4
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	mov r4, r1
	ldr r0, _020BDB3C ; =UNK_0210659C
	str r4, [r5, #0x8]
	ldr r0, [r0, #0x0]
	add r1, r5, #0x1a
	str r0, [r5, #0xc]
	ldrb r2, [r2, #0x17]
	mov r0, #0x0
	strb r2, [r5, #0x19]
	ldrb r2, [r5, #0x19]
	mov r2, r2, lsl #0x1
	bl MIi_CpuClear16
	ldrh r0, [r4, #0x6]
	add r2, r4, #0x14
	mov r3, #0x0
	cmp r0, #0x0
	addls sp, sp, #0x4
	ldmlsia sp!, {r4-r5,pc}
_020BDB08:
	mov r0, r3, lsl #0x1
	ldrh r1, [r2, r0]
	add r0, r5, r3, lsl #0x1
	add r3, r3, #0x1
	ldr r1, [r4, r1]
	mov r1, r1, lsr #0x18
	orr r1, r1, #0x100
	strh r1, [r0, #0x1a]
	ldrh r0, [r4, #0x6]
	cmp r3, r0
	blo _020BDB08
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020BDB3C: .word UNK_0210659C
	arm_func_end FUN_020BDAB4

	arm_func_start FUN_020BDB40
FUN_020BDB40: ; 0x020BDB40
	stmdb sp!, {r4-r8,lr}
	ldr r7, [r1, #0x8]
	mov r2, r2, lsl #0x10
	ldrh r4, [r7, #0xe]
	add r5, r7, #0x8
	ldr r6, [r1, #0x0]
	ldrh r3, [r5, r4]
	mov r1, r2, lsr #0x10
	add r2, r5, r4
	mul r4, r3, r1
	add r3, r2, #0x4
	mov r6, r6, asr #0xc
	mov r8, r0
	ldr r1, [r3, r4]
	mov r0, r7
	mov r2, r6
	add r5, r3, r4
	bl FUN_020BDDAC
	mov r4, r0
	ldr r1, [r5, #0x4]
	mov r0, r7
	mov r2, r6
	bl FUN_020BDDAC
	ldr r1, [r8, #0x4]
	mov r2, r6
	and r1, r1, #0x8000
	orr r1, r1, r4
	orr r0, r1, r0, lsl #0x10
	str r0, [r8, #0x4]
	mov r0, r7
	ldr r1, [r5, #0xc]
	bl FUN_020BDDAC
	mov r4, r0
	mov r0, r7
	ldr r1, [r5, #0x8]
	mov r2, r6
	bl FUN_020BDDAC
	mov r2, r6
	ldr r1, [r8, #0x8]
	and r1, r1, #0x8000
	orr r0, r1, r0
	orr r0, r0, r4, lsl #0x10
	str r0, [r8, #0x8]
	mov r0, r7
	ldr r1, [r5, #0x10]
	bl FUN_020BDCB8
	ldr r1, [r8, #0xc]
	bic r1, r1, #0x1f0000
	orr r0, r1, r0, lsl #0x10
	str r0, [r8, #0xc]
	ldmia sp!, {r4-r8,pc}
	arm_func_end FUN_020BDB40

	arm_func_start FUN_020BDC0C
FUN_020BDC0C: ; 0x020BDC0C
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	ldr r3, _020BDCB4 ; =UNK_021065A8
	ldr r4, [r2, #0x8]
	ldr r3, [r3, #0x0]
	mov r9, r0
	str r3, [r9, #0xc]
	ldrb r0, [r2, #0x18]
	mov r8, r1
	add r4, r2, r4
	strb r0, [r9, #0x19]
	ldrb r2, [r9, #0x19]
	add r1, r9, #0x1a
	mov r0, #0x0
	mov r2, r2, lsl #0x1
	bl MIi_CpuClear16
	ldrb r0, [r8, #0x9]
	mov r7, #0x0
	cmp r0, #0x0
	addls sp, sp, #0x4
	ldmlsia sp!, {r4-r9,pc}
	mov r6, r7
	add r5, r8, #0x8
	add r4, r4, #0x4
_020BDC6C:
	ldrh r1, [r8, #0xe]
	mov r0, r4
	add r2, r5, r1
	ldrh r1, [r2, #0x2]
	add r1, r2, r1
	add r1, r1, r6
	bl FUN_020BC14C
	cmp r0, #0x0
	orrge r1, r7, #0x100
	addge r0, r9, r0, lsl #0x1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [r8, #0x9]
	add r7, r7, #0x1
	add r6, r6, #0x10
	cmp r7, r0
	blo _020BDC6C
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	.balign 4
_020BDCB4: .word UNK_021065A8
	arm_func_end FUN_020BDC0C

	arm_func_start FUN_020BDCB8
FUN_020BDCB8: ; 0x020BDCB8
	ands r3, r1, #0x20000000
	movne r0, r1, lsl #0x10
	movne r0, r0, lsr #0x10
	bxne lr
	ldr r3, _020BDDA4 ; =0x0000FFFF
	ands r12, r1, #0xc0000000
	and r3, r1, r3
	add r0, r0, r3
	ldreqb r0, [r0, r2]
	bxeq lr
	ldr r3, _020BDDA8 ; =0x1FFF0000
	ands r12, r1, #0x40000000
	and r1, r1, r3
	mov r3, r1, lsr #0x10
	beq _020BDD30
	ands r1, r2, #0x1
	beq _020BDD28
	cmp r2, r3
	addhi r0, r0, r3, lsr #0x1
	ldrhib r0, [r0, #0x1]
	bxhi lr
	add r1, r0, r2, lsr #0x1
	ldrb r2, [r0, r2, lsr #0x1]
	ldrb r0, [r1, #0x1]
	add r0, r2, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	bx lr
_020BDD28:
	ldrb r0, [r0, r2, lsr #0x1]
	bx lr
_020BDD30:
	ands r1, r2, #0x3
	beq _020BDD9C
	cmp r2, r3
	addhi r0, r0, r3, lsr #0x2
	ldrhib r0, [r1, r0]
	bxhi lr
	ands r1, r2, #0x1
	beq _020BDD80
	ands r1, r2, #0x2
	movne r1, r2, lsr #0x2
	addne r2, r1, #0x1
	moveq r2, r2, lsr #0x2
	addeq r1, r2, #0x1
	ldrb r2, [r0, r2]
	ldrb r1, [r0, r1]
	mov r0, #0x3
	mla r0, r2, r0, r1
	mov r0, r0, lsl #0xe
	mov r0, r0, lsr #0x10
	bx lr
_020BDD80:
	add r1, r0, r2, lsr #0x2
	ldrb r2, [r0, r2, lsr #0x2]
	ldrb r0, [r1, #0x1]
	add r0, r2, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	bx lr
_020BDD9C:
	ldrb r0, [r0, r2, lsr #0x2]
	bx lr
	.balign 4
_020BDDA4: .word 0x0000FFFF
_020BDDA8: .word 0x1FFF0000
	arm_func_end FUN_020BDCB8

	arm_func_start FUN_020BDDAC
FUN_020BDDAC: ; 0x020BDDAC
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ands r3, r1, #0x20000000
	movne r0, r1, lsl #0x10
	addne sp, sp, #0x4
	movne r0, r0, lsr #0x10
	ldmneia sp!, {pc}
	ldr r3, _020BDF2C ; =0x0000FFFF
	ands r12, r1, #0xc0000000
	and r3, r1, r3
	add r0, r0, r3
	moveq r1, r2, lsl #0x1
	addeq sp, sp, #0x4
	ldreqh r0, [r0, r1]
	ldmeqia sp!, {pc}
	ldr r3, _020BDF30 ; =0x1FFF0000
	ands r12, r1, #0x40000000
	and r1, r1, r3
	mov r3, r1, lsr #0x10
	beq _020BDE34
	ands r1, r2, #0x1
	beq _020BDE24
	cmp r2, r3
	bichi r1, r3, #0x1
	addhi r0, r0, r1
	addhi sp, sp, #0x4
	ldrhih r0, [r0, #0x2]
	ldmhiia sp!, {pc}
	mov r1, r2, lsr #0x1
	b _020BDEE0
_020BDE24:
	bic r1, r2, #0x1
	add sp, sp, #0x4
	ldrh r0, [r0, r1]
	ldmia sp!, {pc}
_020BDE34:
	ands r1, r2, #0x3
	beq _020BDECC
	cmp r2, r3
	movhi r2, r3, lsr #0x2
	movhi r1, r1, lsl #0x1
	addhi r0, r0, r2, lsl #0x1
	addhi sp, sp, #0x4
	ldrhih r0, [r1, r0]
	ldmhiia sp!, {pc}
	ands r1, r2, #0x1
	beq _020BDEC4
	ands r1, r2, #0x2
	movne r1, r2, lsr #0x2
	addne r2, r1, #0x1
	moveq r2, r2, lsr #0x2
	addeq r1, r2, #0x1
	mov r2, r2, lsl #0x1
	mov r1, r1, lsl #0x1
	ldrh r12, [r0, r2]
	ldrh lr, [r0, r1]
	ldr r0, _020BDF34 ; =0x00007C1F
	and r3, r12, #0x3e0
	and r2, lr, #0x3e0
	mov r1, #0x3
	mla r2, r3, r1, r2
	and r12, r12, r0
	and r3, lr, r0
	mla r1, r12, r1, r3
	mov r2, r2, lsr #0x2
	and r1, r0, r1, lsr #0x2
	and r0, r2, #0x3e0
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	add sp, sp, #0x4
	mov r0, r0, lsr #0x10
	ldmia sp!, {pc}
_020BDEC4:
	mov r1, r2, lsr #0x2
	b _020BDEE0
_020BDECC:
	mov r1, r2, lsr #0x2
	mov r1, r1, lsl #0x1
	add sp, sp, #0x4
	ldrh r0, [r0, r1]
	ldmia sp!, {pc}
_020BDEE0:
	mov r2, r1, lsl #0x1
	add r1, r0, r1, lsl #0x1
	ldrh r3, [r0, r2]
	ldrh r12, [r1, #0x2]
	ldr r0, _020BDF34 ; =0x00007C1F
	and r2, r3, #0x3e0
	and r1, r12, #0x3e0
	add r1, r2, r1
	mov r1, r1, lsr #0x1
	and r3, r3, r0
	and r2, r12, r0
	add r2, r3, r2
	and r2, r0, r2, lsr #0x1
	and r0, r1, #0x3e0
	orr r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	add sp, sp, #0x4
	ldmia sp!, {pc}
	.balign 4
_020BDF2C: .word 0x0000FFFF
_020BDF30: .word 0x1FFF0000
_020BDF34: .word 0x00007C1F
	arm_func_end FUN_020BDDAC

	arm_func_start FUN_020BDF38
FUN_020BDF38: ; 0x020BDF38
	stmdb sp!, {r4,lr}
	ldr r12, [r1, #0x0]
	mov r4, r0
	mov r2, r2, lsl #0x10
	ldr r0, [r1, #0x8]
	mov r1, r2, lsr #0x10
	mov r3, r4
	mov r2, r12, asr #0xc
	bl FUN_020BE030
	ldr r0, [r4, #0x10]
	bic r0, r0, #0xc0000000
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	orr r0, r0, #0x40000000
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x0]
	orr r0, r0, #0x8
	str r0, [r4, #0x0]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020BDF38

	arm_func_start FUN_020BDF84
FUN_020BDF84: ; 0x020BDF84
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	ldr r3, _020BE02C ; =UNK_021065A0
	ldr r4, [r2, #0x8]
	ldr r3, [r3, #0x0]
	mov r9, r0
	str r3, [r9, #0xc]
	ldrb r0, [r2, #0x18]
	mov r8, r1
	add r4, r2, r4
	strb r0, [r9, #0x19]
	ldrb r2, [r9, #0x19]
	add r1, r9, #0x1a
	mov r0, #0x0
	mov r2, r2, lsl #0x1
	bl MIi_CpuClear16
	ldrb r0, [r8, #0x9]
	mov r7, #0x0
	cmp r0, #0x0
	addls sp, sp, #0x4
	ldmlsia sp!, {r4-r9,pc}
	mov r6, r7
	add r5, r8, #0x8
	add r4, r4, #0x4
_020BDFE4:
	ldrh r1, [r8, #0xe]
	mov r0, r4
	add r2, r5, r1
	ldrh r1, [r2, #0x2]
	add r1, r2, r1
	add r1, r1, r6
	bl FUN_020BC14C
	cmp r0, #0x0
	orrge r1, r7, #0x100
	addge r0, r9, r0, lsl #0x1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [r8, #0x9]
	add r7, r7, #0x1
	add r6, r6, #0x10
	cmp r7, r0
	blo _020BDFE4
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	.balign 4
_020BE02C: .word UNK_021065A0
	arm_func_end FUN_020BDF84

	arm_func_start FUN_020BE030
FUN_020BE030: ; 0x020BE030
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	mov r8, r0
	ldrh r4, [r8, #0xe]
	add r5, r8, #0x8
	mov r6, r3
	ldrh r3, [r5, r4]
	add r4, r5, r4
	add r4, r4, #0x4
	mla r5, r3, r1, r4
	mov r7, r2
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	mov r3, r7
	ldr r4, [r6, #0x0]
	bl FUN_020BE238
	mov r9, r0
	ldr r1, [r5, #0x20]
	mov r0, r8
	ldr r2, [r5, #0x24]
	mov r3, r7
	bl FUN_020BE238
	cmp r9, #0x0
	bne _020BE09C
	cmp r0, #0x0
	orreq r4, r4, #0x4
	beq _020BE0A8
_020BE09C:
	str r9, [r6, #0x24]
	str r0, [r6, #0x28]
	bic r4, r4, #0x4
_020BE0A8:
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	mov r0, r8
	mov r3, r7
	bl FUN_020BE12C
	cmp r0, #0x10000000
	strneh r0, [r6, #0x20]
	movne r0, r0, lsr #0x10
	strneh r0, [r6, #0x22]
	orreq r4, r4, #0x2
	ldr r1, [r5, #0x0]
	ldr r2, [r5, #0x4]
	mov r0, r8
	mov r3, r7
	bicne r4, r4, #0x2
	bl FUN_020BE238
	mov r9, r0
	ldr r1, [r5, #0x8]
	ldr r2, [r5, #0xc]
	mov r0, r8
	mov r3, r7
	bl FUN_020BE238
	cmp r9, #0x1000
	bne _020BE114
	cmp r0, #0x1000
	orreq r4, r4, #0x1
	beq _020BE120
_020BE114:
	str r9, [r6, #0x18]
	str r0, [r6, #0x1c]
	bic r4, r4, #0x1
_020BE120:
	str r4, [r6, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	arm_func_end FUN_020BE030

	arm_func_start FUN_020BE12C
FUN_020BE12C: ; 0x020BE12C
	ands r12, r1, #0x20000000
	movne r0, r2
	bxne lr
	add r0, r0, r2
	ands r2, r1, #0xc0000000
	beq _020BE1F8
	ldr r2, _020BE234 ; =0x0000FFFF
	ands r12, r1, #0x40000000
	and r2, r1, r2
	beq _020BE17C
	ands r1, r3, #0x1
	beq _020BE174
	cmp r3, r2
	movhi r1, r2, lsr #0x1
	addhi r3, r1, #0x1
	bhi _020BE1F8
	mov r2, r3, lsr #0x1
	b _020BE200
_020BE174:
	mov r3, r3, lsr #0x1
	b _020BE1F8
_020BE17C:
	ands r1, r3, #0x3
	beq _020BE1F4
	cmp r3, r2
	addhi r3, r1, r2, lsr #0x2
	bhi _020BE1F8
	ands r1, r3, #0x1
	beq _020BE1EC
	ands r1, r3, #0x2
	movne r1, r3, lsr #0x2
	addne r2, r1, #0x1
	moveq r2, r3, lsr #0x2
	addeq r1, r2, #0x1
	mov r12, r2, lsl #0x2
	add r3, r0, r2, lsl #0x2
	mov r2, r1, lsl #0x2
	add r1, r0, r1, lsl #0x2
	ldrsh r12, [r0, r12]
	ldrsh r2, [r0, r2]
	mov r0, #0x3
	ldrsh r3, [r3, #0x2]
	ldrsh r1, [r1, #0x2]
	mla r2, r12, r0, r2
	mla r1, r3, r0, r1
	ldr r0, _020BE234 ; =0x0000FFFF
	mov r1, r1, asr #0x2
	and r0, r0, r2, asr #0x2
	orr r0, r0, r1, lsl #0x10
	bx lr
_020BE1EC:
	mov r2, r3, lsr #0x2
	b _020BE200
_020BE1F4:
	mov r3, r3, lsr #0x2
_020BE1F8:
	ldr r0, [r0, r3, lsl #0x2]
	bx lr
_020BE200:
	add r1, r0, r2, lsl #0x2
	mov r2, r2, lsl #0x2
	ldrsh r12, [r0, r2]
	ldrsh r3, [r1, #0x4]
	ldrsh r2, [r1, #0x2]
	ldrsh r1, [r1, #0x6]
	ldr r0, _020BE234 ; =0x0000FFFF
	add r3, r12, r3
	add r1, r2, r1
	and r2, r0, r3, asr #0x1
	mov r0, r1, asr #0x1
	orr r0, r2, r0, lsl #0x10
	bx lr
	.balign 4
_020BE234: .word 0x0000FFFF
	arm_func_end FUN_020BE12C

	arm_func_start FUN_020BE238
FUN_020BE238:
	ands r12, r1, #0x20000000
	movne r0, r2
	bxne lr
	add r0, r0, r2
	ands r2, r1, #0xc0000000
	beq _020BE2F0
	ldr r2, _020BE330 ; =0x0000FFFF
	ands r12, r1, #0x40000000
	and r12, r1, r2
	beq _020BE288
	ands r2, r3, #0x1
	beq _020BE280
	cmp r3, r12
	movhi r2, r12, lsr #0x1
	addhi r3, r2, #0x1
	bhi _020BE2F0
	mov r3, r3, lsr #0x1
	b _020BE304
_020BE280:
	mov r3, r3, lsr #0x1
	b _020BE2F0
_020BE288:
	ands r2, r3, #0x3
	beq _020BE2EC
	cmp r3, r12
	addhi r3, r2, r12, lsr #0x2
	bhi _020BE2F0
	ands r2, r3, #0x1
	beq _020BE2E4
	ands r2, r3, #0x2
	movne r3, r3, lsr #0x2
	addne r2, r3, #0x1
	moveq r2, r3, lsr #0x2
	addeq r3, r2, #0x1
	ands r1, r1, #0x10000000
	movne r2, r2, lsl #0x1
	movne r1, r3, lsl #0x1
	ldrnesh r2, [r0, r2]
	ldrnesh r1, [r0, r1]
	ldreq r2, [r0, r2, lsl #0x2]
	ldreq r1, [r0, r3, lsl #0x2]
	mov r0, #0x3
	mla r0, r2, r0, r1
	mov r0, r0, asr #0x2
	bx lr
_020BE2E4:
	mov r3, r3, lsr #0x2
	b _020BE304
_020BE2EC:
	mov r3, r3, lsr #0x2
_020BE2F0:
	ands r1, r1, #0x10000000
	movne r1, r3, lsl #0x1
	ldrnesh r0, [r0, r1]
	ldreq r0, [r0, r3, lsl #0x2]
	bx lr
_020BE304:
	ands r1, r1, #0x10000000
	movne r2, r3, lsl #0x1
	addne r1, r0, r3, lsl #0x1
	ldrnesh r2, [r0, r2]
	ldrnesh r0, [r1, #0x2]
	addeq r1, r0, r3, lsl #0x2
	ldreq r2, [r0, r3, lsl #0x2]
	ldreq r0, [r1, #0x4]
	add r0, r2, r0
	mov r0, r0, asr #0x1
	bx lr
	.balign 4
_020BE330: .word 0x0000FFFF
	arm_func_end FUN_020BE238

	arm_func_start FUN_020BE334
FUN_020BE334: ; 0x020BE334
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r6, r1
	ldr r3, [r6, #0x0]
	ldr r5, [r6, #0x8]
	mov r1, r2, lsl #0x10
	mov r2, r3, lsl #0x4
	mov r7, r0
	mov r0, r5
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl FUN_020BC42C
	mov r4, r0
	ldrb r1, [r4, #0x2]
	mov r0, r5
	bl FUN_020BC4B8
	mov r1, r0
	ldr r0, [r6, #0x14]
	mov r2, r7
	bl FUN_020BE408
	ldrb r1, [r4, #0x3]
	cmp r1, #0xff
	addeq sp, sp, #0x4
	ldmeqia sp!, {r4-r7,pc}
	mov r0, r5
	bl FUN_020BC4A8
	mov r1, r0
	ldr r0, [r6, #0x14]
	mov r2, r7
	bl FUN_020BE3B4
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020BE334

	arm_func_start FUN_020BE3B4
FUN_020BE3B4: ; 0x020BE3B4
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	ldrh r0, [r5, #0x34]
	mov r4, r2
	add r0, r5, r0
	bl FUN_020BC2A0
	ldr r1, [r5, #0x2c]
	ldrh r2, [r0, #0x2]
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	ands r1, r2, #0x1
	ldrh r0, [r0, #0x0]
	moveq r1, r3, lsl #0xf
	moveq r3, r1, lsr #0x10
	moveq r0, r0, lsl #0xf
	moveq r0, r0, lsr #0x10
	add r0, r0, r3
	str r0, [r4, #0x14]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020BE3B4

	arm_func_start FUN_020BE408
FUN_020BE408: ; 0x020BE408
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	add r0, r5, #0x3c
	mov r4, r2
	bl FUN_020BC2A0
	ldr r1, [r0, #0x0]
	ldr r3, [r4, #0x10]
	and r1, r1, #0x1c000000
	cmp r1, #0x14000000
	ldrne r2, [r5, #0x8]
	ldrne r1, _020BE4E0 ; =0x0000FFFF
	andne r5, r2, r1
	ldreq r2, [r5, #0x18]
	ldreq r1, _020BE4E0 ; =0x0000FFFF
	andeq r5, r2, r1
	ldr r1, _020BE4E4 ; =0xC00F0000
	ldr r2, _020BE4E8 ; =0x000007FF
	and r1, r3, r1
	str r1, [r4, #0x10]
	ldr r1, [r0, #0x0]
	ldr r3, [r4, #0x10]
	add r1, r1, r5
	orr r1, r3, r1
	str r1, [r4, #0x10]
	ldr r3, [r0, #0x4]
	ldr r1, _020BE4EC ; =0x003FF800
	and r3, r3, r2
	strh r3, [r4, #0x2c]
	ldr r3, [r0, #0x4]
	and r1, r3, r1
	mov r1, r1, lsr #0xb
	strh r1, [r4, #0x2e]
	ldr r3, [r0, #0x4]
	ldrh r1, [r4, #0x2c]
	and r0, r3, r2
	and r5, r2, r3, lsr #0xb
	cmp r0, r1
	moveq r0, #0x1000
	beq _020BE4B4
	mov r0, r0, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_020BE4B4:
	str r0, [r4, #0x30]
	ldrh r1, [r4, #0x2e]
	cmp r5, r1
	moveq r0, #0x1000
	beq _020BE4D4
	mov r0, r5, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_020BE4D4:
	str r0, [r4, #0x34]
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	.balign 4
_020BE4E0: .word 0x0000FFFF
_020BE4E4: .word 0xC00F0000
_020BE4E8: .word 0x000007FF
_020BE4EC: .word 0x003FF800
	arm_func_end FUN_020BE408

	arm_func_start FUN_020BE4F0
FUN_020BE4F0: ; 0x020BE4F0
	stmdb sp!, {r4-r9,lr}
	sub sp, sp, #0x4
	ldr r3, _020BE59C ; =UNK_021065A4
	ldr r4, [r2, #0x8]
	ldr r3, [r3, #0x0]
	mov r9, r0
	str r3, [r9, #0xc]
	ldrb r0, [r2, #0x18]
	mov r8, r1
	add r4, r2, r4
	strb r0, [r9, #0x19]
	str r8, [r9, #0x8]
	ldrb r2, [r9, #0x19]
	add r1, r9, #0x1a
	mov r0, #0x0
	mov r2, r2, lsl #0x1
	bl MIi_CpuClear16
	ldrb r0, [r8, #0xd]
	mov r7, #0x0
	cmp r0, #0x0
	addls sp, sp, #0x4
	ldmlsia sp!, {r4-r9,pc}
	mov r6, r7
	add r5, r8, #0xc
	add r4, r4, #0x4
_020BE554:
	ldrh r1, [r8, #0x12]
	mov r0, r4
	add r2, r5, r1
	ldrh r1, [r2, #0x2]
	add r1, r2, r1
	add r1, r1, r6
	bl FUN_020BC14C
	cmp r0, #0x0
	orrge r1, r7, #0x100
	addge r0, r9, r0, lsl #0x1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [r8, #0xd]
	add r7, r7, #0x1
	add r6, r6, #0x10
	cmp r7, r0
	blo _020BE554
	add sp, sp, #0x4
	ldmia sp!, {r4-r9,pc}
	.balign 4
_020BE59C: .word UNK_021065A4
	arm_func_end FUN_020BE4F0

	arm_func_start FUN_020BE5A0
FUN_020BE5A0: ; 0x020BE5A0
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	ldr lr, [r1, #0x8]
	ldr r3, [r1, #0x0]
	ldrh r1, [lr, #0x6]
	mov r12, r3, asr #0xc
	mov r3, #0x1
	mla r2, r12, r1, r2
	mov r1, r2, lsr #0x5
	add r1, lr, r1, lsl #0x2
	ldr r1, [r1, #0xc]
	and r2, r2, #0x1f
	and r1, r1, r3, lsl r2
	str r1, [r0, #0x0]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020BE5A0

	arm_func_start FUN_020BE5E0
FUN_020BE5E0: ; 0x020BE5E0
	ldr r3, _020BE628 ; =UNK_02106598
	mov r12, #0x0
	ldr r3, [r3, #0x0]
	str r3, [r0, #0xc]
	ldrb r2, [r2, #0x17]
	strb r2, [r0, #0x19]
	str r1, [r0, #0x8]
	ldrb r1, [r0, #0x19]
	cmp r1, #0x0
	bxls lr
_020BE608:
	orr r2, r12, #0x100
	add r1, r0, r12, lsl #0x1
	strh r2, [r1, #0x1a]
	ldrb r1, [r0, #0x19]
	add r12, r12, #0x1
	cmp r12, r1
	blo _020BE608
	bx lr
	.balign 4
_020BE628: .word UNK_02106598
	arm_func_end FUN_020BE5E0

	arm_func_start FUN_020BE62C
FUN_020BE62C: ; 0x020BE62C
	ands r2, r3, #0x4
	ldrne r1, [r0, #0x0]
	orrne r1, r1, #0x1
	strne r1, [r0, #0x0]
	bne _020BE658
	ldr r2, [r1, #0x0]
	str r2, [r0, #0x4]
	ldr r2, [r1, #0x4]
	str r2, [r0, #0x8]
	ldr r1, [r1, #0x8]
	str r1, [r0, #0xc]
_020BE658:
	ldr r1, [r0, #0x0]
	orr r1, r1, #0x18
	str r1, [r0, #0x0]
	bx lr
	arm_func_end FUN_020BE62C

	arm_func_start FUN_020BE668
FUN_020BE668: ; 0x020BE668
	stmdb sp!, {r4,lr}
	mov r4, r0
	ldr r1, [r4, #0x0]
	ands r0, r1, #0x4
	bne _020BE6AC
	ands r0, r1, #0x2
	bne _020BE698
	add r1, r4, #0x28
	mov r0, #0x19
	mov r2, #0xc
	bl FUN_020BB1C0
	b _020BE6C4
_020BE698:
	add r1, r4, #0x4c
	mov r0, #0x1c
	mov r2, #0x3
	bl FUN_020BB1C0
	b _020BE6C4
_020BE6AC:
	ands r0, r1, #0x2
	bne _020BE6C4
	add r1, r4, #0x28
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
_020BE6C4:
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x1
	ldmneia sp!, {r4,pc}
	add r1, r4, #0x4
	mov r0, #0x1b
	mov r2, #0x3
	bl FUN_020BB1C0
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020BE668

	arm_func_start FUN_020BE6E4
FUN_020BE6E4: ; 0x020BE6E4
	stmdb sp!, {r4,lr}
	sub sp, sp, #0x50
	mov r4, r0
	ldr r0, [r4, #0x0]
	mov r1, #0x0
	ands r0, r0, #0x8
	ldrne r0, _020BE820 ; =0x00101610
	mov r3, #0x3
	strne r0, [sp, #0x0]
	ldreq r0, _020BE824 ; =0x00101810
	mov r2, #0x2
	streq r0, [sp, #0x0]
	mov r0, #0x1000
	str r0, [sp, #0x44]
	str r3, [sp, #0x4]
	str r2, [sp, #0x48]
	str r1, [sp, #0x40]
	str r1, [sp, #0x34]
	str r1, [sp, #0x30]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x28]
	str r1, [sp, #0x24]
	str r1, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x0]
	ldr r0, _020BE828 ; =UNK_021067B0
	and r1, r1, #0x7
	ldr r2, [r0, r1, lsl #0x2]
	add r0, sp, #0x8
	mov r1, r4
	blx r2
	ldr r3, [r4, #0x30]
	cmp r3, #0x1000
	beq _020BE7B4
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0xc]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #0x14
	str r2, [sp, #0x8]
	ldr r2, [r4, #0x30]
	ldr r0, [sp, #0x38]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	str r2, [sp, #0xc]
	ldr r1, [r4, #0x30]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	str r1, [sp, #0x38]
_020BE7B4:
	ldr r3, [r4, #0x34]
	cmp r3, #0x1000
	beq _020BE804
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #0x14
	str r2, [sp, #0x18]
	ldr r2, [r4, #0x34]
	ldr r0, [sp, #0x3c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x34]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	str r1, [sp, #0x3c]
_020BE804:
	add r1, sp, #0x0
	ldr r0, [sp, #0x0]
	add r1, r1, #0x4
	mov r2, #0x12
	bl FUN_020BB1C0
	add sp, sp, #0x50
	ldmia sp!, {r4,pc}
	.balign 4
_020BE820: .word 0x00101610
_020BE824: .word 0x00101810
_020BE828: .word UNK_021067B0
	arm_func_end FUN_020BE6E4

	arm_func_start FUN_020BE82C
FUN_020BE82C: ; 0x020BE82C
	mov r2, #0x1000
	str r2, [r0, #0x0]
	mov r1, #0x0
	str r1, [r0, #0x4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_020BE82C

	arm_func_start FUN_020BE850
FUN_020BE850: ; 0x020BE850
	ldr r2, [r1, #0x18]
	mov r12, #0x0
	str r2, [r0, #0x0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str r12, [r0, #0x4]
	str r12, [r0, #0x30]
	ldr r2, [r1, #0x1c]
	ldrh r3, [r1, #0x2e]
	mov r1, r2, lsl #0x1
	rsb r1, r1, #0x0
	add r1, r1, #0x2000
	mul r1, r3, r1
	mov r1, r1, lsl #0x3
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	bx lr
	arm_func_end FUN_020BE850

	arm_func_start FUN_020BE894
FUN_020BE894: ; 0x020BE894
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	rsb r2, r2, #0x0
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #0x4]
	bl FX_DivAsync
	ldrsh r1, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	ldrh r2, [r5, #0x2c]
	add r0, r1, r0
	rsb r0, r0, #0x0
	add r0, r0, #0x1000
	mul r0, r2, r0
	mov r0, r0, lsl #0x3
	str r0, [r6, #0x30]
	ldrsh r1, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	ldrh r2, [r5, #0x2e]
	sub r0, r1, r0
	add r0, r0, #0x1000
	mul r0, r2, r0
	mov r0, r0, lsl #0x3
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020BE894

	arm_func_start FUN_020BE954
FUN_020BE954: ; 0x020BE954
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r5, [r9, #0x22]
	ldr r3, [r9, #0x18]
	ldrsh r0, [r9, #0x20]
	ldr r4, [r9, #0x1c]
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #0x14
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #0x14
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #0x14
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #0x14
	str r6, [r10, #0x0]
	str r4, [r10, #0x14]
	bl FX_GetDivResult
	mov r1, r11
	rsb r2, r5, #0x0
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x4]
	mov r0, r8
	bl FX_DivAsync
	sub r1, r5, r4
	add r0, r7, r6
	ldrh r3, [r9, #0x2c]
	ldr r2, [r9, #0x18]
	sub r0, r2, r0
	mul r0, r3, r0
	mov r0, r0, lsl #0x3
	str r0, [r10, #0x30]
	ldrh r2, [r9, #0x2e]
	ldr r0, [r9, #0x1c]
	sub r0, r1, r0
	add r0, r0, #0x2000
	mul r0, r2, r0
	mov r0, r0, lsl #0x3
	str r0, [r10, #0x34]
	bl FX_GetDivResult
	mul r0, r7, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020BE954

	arm_func_start FUN_020BEA3C
FUN_020BEA3C: ; 0x020BEA3C
	mov r2, #0x1000
	str r2, [r0, #0x0]
	str r2, [r0, #0x14]
	mov r12, #0x0
	str r12, [r0, #0x4]
	ldrh r2, [r1, #0x2c]
	ldr r3, [r1, #0x24]
	mul r2, r3, r2
	rsb r2, r2, #0x0
	mov r2, r2, lsl #0x4
	str r2, [r0, #0x30]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x28]
	mul r2, r1, r2
	mov r1, r2, lsl #0x4
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	bx lr
	arm_func_end FUN_020BEA3C

	arm_func_start FUN_020BEA84
FUN_020BEA84: ; 0x020BEA84
	stmdb sp!, {r4,lr}
	ldr r3, [r1, #0x18]
	mov r2, #0x0
	str r3, [r0, #0x0]
	ldr r3, [r1, #0x1c]
	str r3, [r0, #0x14]
	str r2, [r0, #0x4]
	ldr r4, [r1, #0x18]
	ldr r3, [r1, #0x24]
	ldrh lr, [r1, #0x2c]
	smull r12, r3, r4, r3
	mov r4, r12, lsr #0x8
	orr r4, r4, r3, lsl #0x18
	rsb r3, r4, #0x0
	mul r3, lr, r3
	str r3, [r0, #0x30]
	ldr r4, [r1, #0x1c]
	ldr r12, [r1, #0x28]
	mov r3, r4, lsl #0x1
	smull lr, r12, r4, r12
	rsb r4, r3, #0x0
	mov r3, lr, lsr #0x8
	ldrh lr, [r1, #0x2e]
	add r1, r4, #0x2000
	orr r3, r3, r12, lsl #0x18
	mul r4, lr, r1
	mul r1, lr, r3
	add r1, r1, r4, lsl #0x3
	str r1, [r0, #0x34]
	str r2, [r0, #0x10]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020BEA84

	arm_func_start FUN_020BEB00
FUN_020BEB00: ; 0x020BEB00
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	rsb r2, r2, #0x0
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #0x4]
	bl FX_DivAsync
	ldrsh r2, [r5, #0x20]
	ldrsh r1, [r5, #0x22]
	ldrh r3, [r5, #0x2c]
	ldr r0, [r5, #0x24]
	add r1, r2, r1
	rsb r1, r1, #0x0
	add r1, r1, #0x1000
	mul r2, r3, r1
	mul r1, r0, r3
	mov r0, r2, lsl #0x3
	sub r0, r0, r1, lsl #0x4
	str r0, [r6, #0x30]
	ldrsh r2, [r5, #0x20]
	ldrsh r1, [r5, #0x22]
	ldrh r3, [r5, #0x2e]
	ldr r0, [r5, #0x28]
	sub r1, r2, r1
	add r1, r1, #0x1000
	mul r2, r3, r1
	mul r1, r0, r3
	mov r0, r2, lsl #0x3
	add r0, r0, r1, lsl #0x4
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020BEB00

	arm_func_start FUN_020BEBD8
FUN_020BEBD8: ; 0x020BEBD8
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r5, [r9, #0x22]
	ldr r3, [r9, #0x18]
	ldrsh r0, [r9, #0x20]
	ldr r4, [r9, #0x1c]
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #0x14
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #0x14
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #0x14
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #0x14
	str r6, [r10, #0x0]
	str r4, [r10, #0x14]
	bl FX_GetDivResult
	mov r1, r11
	rsb r2, r5, #0x0
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x4]
	mov r0, r8
	bl FX_DivAsync
	sub r1, r5, r4
	add r2, r7, r6
	ldr r5, [r9, #0x18]
	ldrh r0, [r9, #0x2c]
	sub r3, r5, r2
	ldr r2, [r9, #0x24]
	mul r4, r0, r3
	smull r3, r2, r5, r2
	mov r4, r4, lsl #0x3
	mov r3, r3, lsr #0x8
	orr r3, r3, r2, lsl #0x18
	mul r2, r0, r3
	sub r0, r4, r2
	str r0, [r10, #0x30]
	ldr r4, [r9, #0x1c]
	ldrh r3, [r9, #0x2e]
	sub r0, r1, r4
	add r0, r0, #0x2000
	mul r2, r3, r0
	ldr r0, [r9, #0x28]
	smull r1, r0, r4, r0
	mov r1, r1, lsr #0x8
	orr r1, r1, r0, lsl #0x18
	mul r0, r3, r1
	add r0, r0, r2, lsl #0x3
	str r0, [r10, #0x34]
	bl FX_GetDivResult
	mul r0, r7, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020BEBD8

	arm_func_start FUN_020BECEC
FUN_020BECEC: ; 0x020BECEC
	stmdb sp!, {r4-r8,lr}
	mov r12, r0
	ands r0, r3, #0x4
	ldrb r3, [r2, #0x3]
	beq _020BED40
	ldr r1, [r12, #0x0]
	ands r0, r3, #0x2
	orr r0, r1, #0x1
	str r0, [r12, #0x0]
	beq _020BEDB8
	ldr r0, _020BEE2C ; =UNK_021CEF7C
	ldrb r7, [r2, #0x1]
	ldr r0, [r0, #0x0]
	mov r1, #0x1
	add r6, r0, #0xc4
	mov r5, r7, lsr #0x5
	ldr r4, [r6, r5, lsl #0x2]
	and r0, r7, #0x1f
	orr r0, r4, r1, lsl r0
	str r0, [r6, r5, lsl #0x2]
	b _020BEDB8
_020BED40:
	ldr r4, [r1, #0x0]
	ands r0, r3, #0x2
	str r4, [r12, #0x4]
	ldr r0, [r1, #0x4]
	str r0, [r12, #0x8]
	ldr r0, [r1, #0x8]
	str r0, [r12, #0xc]
	beq _020BEDB8
	ldr lr, _020BEE2C ; =UNK_021CEF7C
	ldrb r0, [r2, #0x1]
	ldr r4, [lr, #0x0]
	mov lr, #0x18
	add r8, r4, #0xc4
	mov r7, r0, lsr #0x5
	and r4, r0, #0x1f
	mov r5, #0x1
	mvn r4, r5, lsl r4
	ldr r6, [r8, r7, lsl #0x2]
	mul r5, r0, lr
	and r0, r6, r4
	str r0, [r8, r7, lsl #0x2]
	ldr r4, [r1, #0xc]
	ldr r0, _020BEE30 ; =UNK_021CFD8C
	ldr lr, _020BEE34 ; =UNK_021CFD90
	str r4, [r0, r5]
	ldr r4, [r1, #0x10]
	ldr r0, _020BEE38 ; =UNK_021CFD94
	str r4, [lr, r5]
	ldr r1, [r1, #0x14]
	str r1, [r0, r5]
_020BEDB8:
	ands r0, r3, #0x1
	beq _020BEE1C
	ldrb r0, [r2, #0x2]
	ldr r2, [r12, #0x0]
	ldr r1, _020BEE2C ; =UNK_021CEF7C
	orr r2, r2, #0x20
	str r2, [r12, #0x0]
	ldr r2, [r1, #0x0]
	mov r1, r0, lsr #0x5
	add r1, r2, r1, lsl #0x2
	and r2, r0, #0x1f
	mov r3, #0x1
	mov r2, r3, lsl r2
	ldr r1, [r1, #0xc4]
	ands r1, r2, r1
	ldrne r0, [r12, #0x0]
	orrne r0, r0, #0x8
	strne r0, [r12, #0x0]
	bne _020BEE1C
	ldr r2, _020BEE30 ; =UNK_021CFD8C
	mov r1, #0x18
	mla r1, r0, r1, r2
	add r3, r12, #0x10
	ldmia r1, {r0-r2}
	stmia r3, {r0-r2}
_020BEE1C:
	ldr r0, [r12, #0x0]
	orr r0, r0, #0x10
	str r0, [r12, #0x0]
	ldmia sp!, {r4-r8,pc}
	.balign 4
_020BEE2C: .word UNK_021CEF7C
_020BEE30: .word UNK_021CFD8C
_020BEE34: .word UNK_021CFD90
_020BEE38: .word UNK_021CFD94
	arm_func_end FUN_020BECEC

	arm_func_start FUN_020BEE3C
FUN_020BEE3C: ; 0x020BEE3C
	stmdb sp!, {r4-r5,lr}
	sub sp, sp, #0x4
	mov r5, r0
	ldr r1, [r5, #0x0]
	mov r4, #0x0
	ands r0, r1, #0x4
	moveq r4, #0x1
	ands r0, r1, #0x20
	beq _020BEE94
	ands r0, r1, #0x8
	bne _020BEE94
	cmp r4, #0x0
	beq _020BEE84
	add r1, r5, #0x4c
	mov r0, #0x1c
	mov r2, #0x3
	bl FUN_020BB1C0
	mov r4, #0x0
_020BEE84:
	add r1, r5, #0x10
	mov r0, #0x1b
	mov r2, #0x3
	bl FUN_020BB1C0
_020BEE94:
	ldr r0, [r5, #0x0]
	ands r0, r0, #0x2
	bne _020BEED0
	cmp r4, #0x0
	beq _020BEEBC
	add r1, r5, #0x28
	mov r0, #0x19
	mov r2, #0xc
	bl FUN_020BB1C0
	b _020BEEE8
_020BEEBC:
	add r1, r5, #0x28
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
	b _020BEEE8
_020BEED0:
	cmp r4, #0x0
	beq _020BEEE8
	add r1, r5, #0x4c
	mov r0, #0x1c
	mov r2, #0x3
	bl FUN_020BB1C0
_020BEEE8:
	ldr r0, [r5, #0x0]
	ands r0, r0, #0x1
	addne sp, sp, #0x4
	ldmneia sp!, {r4-r5,pc}
	add r1, r5, #0x4
	mov r0, #0x1b
	mov r2, #0x3
	bl FUN_020BB1C0
	add sp, sp, #0x4
	ldmia sp!, {r4-r5,pc}
	arm_func_end FUN_020BEE3C

	arm_func_start FUN_020BEF10
FUN_020BEF10: ; 0x020BEF10
	stmdb sp!, {lr}
	sub sp, sp, #0x3c
	ldr r1, [r0, #0x0]
	mov r3, #0x0
	ands r1, r1, #0x8
	ldrne r1, _020BF0CC ; =0x00101710
	mov r2, #0x3
	strne r1, [sp, #0x0]
	ldreq r1, _020BF0D0 ; =0x00101910
	str r3, [sp, #0x34]
	streq r1, [sp, #0x0]
	mov r1, #0x2
	str r1, [sp, #0x38]
	str r3, [sp, #0x28]
	str r3, [sp, #0x24]
	str r3, [sp, #0x20]
	str r3, [sp, #0x1c]
	str r3, [sp, #0x14]
	str r3, [sp, #0x10]
	str r3, [sp, #0xc]
	str r2, [sp, #0x4]
	ldr r2, [r0, #0x0]
	ands r1, r2, #0x4
	beq _020BEFA0
	str r3, [sp, #0x2c]
	str r3, [sp, #0x30]
	ldr r1, [r0, #0x0]
	ands r1, r1, #0x1
	movne r1, #0x1000
	strne r1, [sp, #0x8]
	strne r1, [sp, #0x18]
	ldreq r1, [r0, #0x18]
	streq r1, [sp, #0x8]
	ldreq r1, [r0, #0x1c]
	streq r1, [sp, #0x18]
	b _020BF040
_020BEFA0:
	ands r1, r2, #0x1
	beq _020BEFE8
	ldr r2, [r0, #0x24]
	ldrh r1, [r0, #0x2c]
	mov r2, r2, lsl #0x4
	rsb r2, r2, #0x0
	mul r1, r2, r1
	str r1, [sp, #0x2c]
	ldr r2, [r0, #0x28]
	ldrh r1, [r0, #0x2e]
	mov r2, r2, lsl #0x4
	rsb r2, r2, #0x0
	mul r3, r2, r1
	mov r1, #0x1000
	str r3, [sp, #0x30]
	str r1, [sp, #0x8]
	str r1, [sp, #0x18]
	b _020BF040
_020BEFE8:
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x24]
	ldrh r12, [r0, #0x2c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0x8
	orr r2, r2, r1, lsl #0x18
	rsb r1, r2, #0x0
	mul r1, r12, r1
	str r1, [sp, #0x2c]
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x28]
	ldrh r12, [r0, #0x2e]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0x8
	orr r2, r2, r1, lsl #0x18
	rsb r1, r2, #0x0
	mul r1, r12, r1
	str r1, [sp, #0x30]
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x8]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #0x18]
_020BF040:
	ldr r12, [r0, #0x30]
	cmp r12, #0x1000
	beq _020BF078
	ldr r2, [sp, #0x8]
	ldr r1, [sp, #0x2c]
	smull r3, r2, r12, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #0x14
	str r3, [sp, #0x8]
	ldr r2, [r0, #0x30]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	str r2, [sp, #0x2c]
_020BF078:
	ldr r12, [r0, #0x34]
	cmp r12, #0x1000
	beq _020BF0B0
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x30]
	smull r3, r2, r12, r2
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #0x14
	str r3, [sp, #0x18]
	ldr r0, [r0, #0x34]
	smull r2, r1, r0, r1
	mov r0, r2, lsr #0xc
	orr r0, r0, r1, lsl #0x14
	str r0, [sp, #0x30]
_020BF0B0:
	add r1, sp, #0x0
	ldr r0, [sp, #0x0]
	add r1, r1, #0x4
	mov r2, #0xe
	bl FUN_020BB1C0
	add sp, sp, #0x3c
	ldmia sp!, {pc}
	.balign 4
_020BF0CC: .word 0x00101710
_020BF0D0: .word 0x00101910
	arm_func_end FUN_020BEF10

	arm_func_start FUN_020BF0D4
FUN_020BF0D4: ; 0x020BF0D4
	stmdb sp!, {r4-r8,lr}
	mov r5, r0
	ands r0, r3, #0x4
	ldrb r4, [r2, #0x1]
	ldrb r0, [r2, #0x2]
	beq _020BF174
	ldr r2, [r5, #0x0]
	ldr r1, _020BF2E0 ; =UNK_021CEF7C
	orr r2, r2, #0x1
	str r2, [r5, #0x0]
	ldr r3, [r1, #0x0]
	mov r1, r0, lsr #0x5
	add r1, r3, r1, lsl #0x2
	and r2, r0, #0x1f
	mov r6, #0x1
	mov r2, r6, lsl r2
	ldr r1, [r1, #0xc4]
	ands r1, r2, r1
	beq _020BF148
	add r3, r3, #0xc4
	mov r2, r4, lsr #0x5
	ldr r1, [r3, r2, lsl #0x2]
	and r0, r4, #0x1f
	orr r0, r1, r6, lsl r0
	str r0, [r3, r2, lsl #0x2]
	ldr r0, [r5, #0x0]
	orr r0, r0, #0x18
	str r0, [r5, #0x0]
	ldmia sp!, {r4-r8,pc}
_020BF148:
	ldr r1, _020BF2E4 ; =UNK_021CFD80
	mov r2, #0x18
	mla r6, r0, r2, r1
	mla r1, r4, r2, r1
	mov r0, r6
	bl MIi_CpuCopy32
	mov r0, r6
	add r1, r5, #0x10
	mov r2, #0x18
	bl MIi_CpuCopy32
	ldmia sp!, {r4-r8,pc}
_020BF174:
	ldr r3, [r1, #0x0]
	ldr r2, _020BF2E0 ; =UNK_021CEF7C
	str r3, [r5, #0x4]
	ldr r3, [r1, #0x4]
	mov r7, r0, lsr #0x5
	str r3, [r5, #0x8]
	ldr r3, [r1, #0x8]
	and r8, r0, #0x1f
	str r3, [r5, #0xc]
	ldr r6, [r2, #0x0]
	mov r3, #0x1
	add r2, r6, r7, lsl #0x2
	mov r7, r3, lsl r8
	ldr r2, [r2, #0xc4]
	ands r2, r7, r2
	beq _020BF200
	ldr r3, _020BF2E4 ; =UNK_021CFD80
	mov r2, #0x18
	mov r0, r1
	mla r1, r4, r2, r3
	bl MIi_CpuCopy32
	ldr r0, _020BF2E0 ; =UNK_021CEF7C
	mov r2, r4, lsr #0x5
	ldr r1, [r0, #0x0]
	and r0, r4, #0x1f
	add r3, r1, #0xc4
	mov r1, #0x1
	mvn r0, r1, lsl r0
	ldr r1, [r3, r2, lsl #0x2]
	and r0, r1, r0
	str r0, [r3, r2, lsl #0x2]
	ldr r0, [r5, #0x0]
	orr r0, r0, #0x18
	str r0, [r5, #0x0]
	ldmia sp!, {r4-r8,pc}
_020BF200:
	mov r2, #0x18
	mul r12, r0, r2
	and r7, r4, #0x1f
	ldr r0, _020BF2E4 ; =UNK_021CFD80
	add r6, r6, #0xc4
	mov lr, r4, lsr #0x5
	mvn r7, r3, lsl r7
	ldr r8, [r6, lr, lsl #0x2]
	mul r3, r4, r2
	and r4, r8, r7
	str r4, [r6, lr, lsl #0x2]
	ldr r7, [r1, #0x0]
	ldr r4, [r0, r12]
	ldr r6, _020BF2E8 ; =UNK_021CFD84
	smull r8, r4, r7, r4
	mov r7, r8, lsr #0xc
	orr r7, r7, r4, lsl #0x14
	str r7, [r0, r3]
	ldr r8, [r1, #0x4]
	ldr r4, [r6, r12]
	ldr r7, _020BF2EC ; =UNK_021CFD88
	smull lr, r4, r8, r4
	mov r8, lr, lsr #0xc
	orr r8, r8, r4, lsl #0x14
	str r8, [r6, r3]
	ldr r8, [r1, #0x8]
	ldr r4, [r7, r12]
	ldr r6, _020BF2F0 ; =UNK_021CFD8C
	smull lr, r4, r8, r4
	mov r8, lr, lsr #0xc
	orr r8, r8, r4, lsl #0x14
	str r8, [r7, r3]
	ldr r7, [r1, #0xc]
	ldr r4, [r6, r12]
	ldr lr, _020BF2F4 ; =UNK_021CFD90
	smull r8, r4, r7, r4
	mov r7, r8, lsr #0xc
	orr r7, r7, r4, lsl #0x14
	str r7, [r6, r3]
	ldr r7, [r1, #0x10]
	ldr r4, [lr, r12]
	ldr r6, _020BF2F8 ; =UNK_021CFD94
	smull r8, r4, r7, r4
	add r0, r0, r12
	mov r7, r8, lsr #0xc
	orr r7, r7, r4, lsl #0x14
	str r7, [lr, r3]
	ldr lr, [r1, #0x14]
	ldr r4, [r6, r12]
	add r1, r5, #0x10
	smull r5, r4, lr, r4
	mov r5, r5, lsr #0xc
	orr r5, r5, r4, lsl #0x14
	str r5, [r6, r3]
	bl MIi_CpuCopy32
	ldmia sp!, {r4-r8,pc}
	.balign 4
_020BF2E0: .word UNK_021CEF7C
_020BF2E4: .word UNK_021CFD80
_020BF2E8: .word UNK_021CFD84
_020BF2EC: .word UNK_021CFD88
_020BF2F0: .word UNK_021CFD8C
_020BF2F4: .word UNK_021CFD90
_020BF2F8: .word UNK_021CFD94
	arm_func_end FUN_020BF0D4

	arm_func_start FUN_020BF2FC
FUN_020BF2FC: ; 0x020BF2FC
	stmdb sp!, {r4-r6,lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r0, [r6, #0x0]
	mov r5, #0x0
	ands r4, r0, #0x18
	bne _020BF328
	add r1, r6, #0x1c
	mov r0, #0x1b
	mov r2, #0x3
	bl FUN_020BB1C0
_020BF328:
	ldr r0, [r6, #0x0]
	ands r0, r0, #0x4
	bne _020BF398
	cmp r4, #0x0
	movne r5, #0x1
	bne _020BF398
	ldr r2, [r6, #0x4c]
	ldr r0, [r6, #0x10]
	add r1, sp, #0x0
	smull r3, r0, r2, r0
	mov r2, r3, lsr #0xc
	orr r2, r2, r0, lsl #0x14
	str r2, [sp, #0x0]
	ldr r3, [r6, #0x50]
	ldr r2, [r6, #0x14]
	mov r0, #0x1c
	smull r12, r2, r3, r2
	mov r3, r12, lsr #0xc
	orr r3, r3, r2, lsl #0x14
	str r3, [sp, #0x4]
	ldr r12, [r6, #0x54]
	ldr r3, [r6, #0x18]
	mov r2, #0x3
	smull lr, r3, r12, r3
	mov r12, lr, lsr #0xc
	orr r12, r12, r3, lsl #0x14
	str r12, [sp, #0x8]
	bl FUN_020BB1C0
_020BF398:
	ldr r0, [r6, #0x0]
	ands r0, r0, #0x2
	bne _020BF3D4
	cmp r5, #0x0
	beq _020BF3C0
	add r1, r6, #0x28
	mov r0, #0x19
	mov r2, #0xc
	bl FUN_020BB1C0
	b _020BF3EC
_020BF3C0:
	add r1, r6, #0x28
	mov r0, #0x1a
	mov r2, #0x9
	bl FUN_020BB1C0
	b _020BF3EC
_020BF3D4:
	cmp r5, #0x0
	beq _020BF3EC
	add r1, r6, #0x4c
	mov r0, #0x1c
	mov r2, #0x3
	bl FUN_020BB1C0
_020BF3EC:
	cmp r4, #0x0
	bne _020BF404
	add r1, r6, #0x10
	mov r0, #0x1b
	mov r2, #0x3
	bl FUN_020BB1C0
_020BF404:
	ldr r0, [r6, #0x0]
	ands r0, r0, #0x1
	addne sp, sp, #0x10
	ldmneia sp!, {r4-r6,pc}
	add r1, r6, #0x4
	mov r0, #0x1b
	mov r2, #0x3
	bl FUN_020BB1C0
	add sp, sp, #0x10
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BF2FC

	arm_func_start FUN_020BF42C
FUN_020BF42C: ; 0x020BF42C
	stmdb sp!, {r4,lr}
	sub sp, sp, #0x50
	mov r4, r0
	ldr r0, [r4, #0x0]
	mov r1, #0x0
	ands r0, r0, #0x8
	ldrne r0, _020BF568 ; =0x00101610
	mov r3, #0x3
	strne r0, [sp, #0x0]
	ldreq r0, _020BF56C ; =0x00101810
	mov r2, #0x2
	streq r0, [sp, #0x0]
	mov r0, #0x1000
	str r0, [sp, #0x44]
	str r3, [sp, #0x4]
	str r2, [sp, #0x48]
	str r1, [sp, #0x40]
	str r1, [sp, #0x34]
	str r1, [sp, #0x30]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x28]
	str r1, [sp, #0x24]
	str r1, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	ldr r1, [r4, #0x0]
	ldr r0, _020BF570 ; =UNK_021067D0
	and r1, r1, #0x7
	ldr r2, [r0, r1, lsl #0x2]
	add r0, sp, #0x8
	mov r1, r4
	blx r2
	ldr r3, [r4, #0x30]
	cmp r3, #0x1000
	beq _020BF4FC
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0xc]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #0x14
	str r2, [sp, #0x8]
	ldr r2, [r4, #0x30]
	ldr r0, [sp, #0x38]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	str r2, [sp, #0xc]
	ldr r1, [r4, #0x30]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	str r1, [sp, #0x38]
_020BF4FC:
	ldr r3, [r4, #0x34]
	cmp r3, #0x1000
	beq _020BF54C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #0x14
	str r2, [sp, #0x18]
	ldr r2, [r4, #0x34]
	ldr r0, [sp, #0x3c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x34]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	str r1, [sp, #0x3c]
_020BF54C:
	add r1, sp, #0x0
	ldr r0, [sp, #0x0]
	add r1, r1, #0x4
	mov r2, #0x12
	bl FUN_020BB1C0
	add sp, sp, #0x50
	ldmia sp!, {r4,pc}
	.balign 4
_020BF568: .word 0x00101610
_020BF56C: .word 0x00101810
_020BF570: .word UNK_021067D0
	arm_func_end FUN_020BF42C

	arm_func_start FUN_020BF574
FUN_020BF574: ; 0x020BF574
	mov r2, #0x1000
	str r2, [r0, #0x0]
	mov r1, #0x0
	str r1, [r0, #0x4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_020BF574

	arm_func_start FUN_020BF598
FUN_020BF598: ; 0x020BF598
	ldr r2, [r1, #0x18]
	mov r12, #0x0
	str r2, [r0, #0x0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str r12, [r0, #0x4]
	ldr r3, [r1, #0x18]
	ldrh r2, [r1, #0x2c]
	rsb r3, r3, #0x1000
	mul r2, r3, r2
	mov r2, r2, lsl #0x3
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x1c]
	ldrh r1, [r1, #0x2e]
	rsb r2, r2, #0x1000
	mul r1, r2, r1
	mov r1, r1, lsl #0x3
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	bx lr
	arm_func_end FUN_020BF598

	arm_func_start FUN_020BF5E8
FUN_020BF5E8: ; 0x020BF5E8
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #0x4]
	bl FX_DivAsync
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	ldrsh r4, [r5, #0x22]
	rsb r0, r2, #0x0
	rsb r1, r1, #0x0
	mov r0, r0, lsl #0xb
	ldrsh r3, [r5, #0x20]
	mov r1, r1, lsl #0xb
	smull r7, lr, r4, r0
	smull r12, r4, r3, r1
	subs r7, r7, r12
	sbc r3, lr, r4
	mov r4, r7, lsr #0x8
	orr r4, r4, r3, lsl #0x18
	add r2, r4, r2, lsl #0xf
	str r2, [r6, #0x30]
	ldrsh r2, [r5, #0x22]
	ldrsh r3, [r5, #0x20]
	ldrh r12, [r5, #0x2e]
	smull r4, r1, r2, r1
	smlal r4, r1, r3, r0
	mov r0, r4, lsr #0x8
	orr r0, r0, r1, lsl #0x18
	add r0, r0, r12, lsl #0xf
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0x0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020BF5E8

	arm_func_start FUN_020BF6C8
FUN_020BF6C8: ; 0x020BF6C8
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r0, [r9, #0x22]
	ldr r3, [r9, #0x18]
	ldrsh r5, [r9, #0x20]
	ldr r4, [r9, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #0x14
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #0x14
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #0x14
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #0x14
	str r7, [r10, #0x0]
	str r5, [r10, #0x14]
	bl FX_GetDivResult
	mov r1, r11
	mul r0, r4, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x4]
	mov r0, r8
	bl FX_DivAsync
	ldrh r3, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	rsb r0, r3, #0x0
	rsb r1, r1, #0x0
	mov r2, r1, lsl #0xb
	mov r11, r0, lsl #0xb
	smull r1, r0, r7, r11
	smull r8, r7, r5, r2
	smlal r8, r7, r4, r11
	mov r4, r8, lsr #0x8
	orr r4, r4, r7, lsl #0x18
	smull r5, r2, r6, r2
	subs r1, r1, r5
	sbc r0, r0, r2
	mov r1, r1, lsr #0x8
	orr r1, r1, r0, lsl #0x18
	add r0, r1, r3, lsl #0xf
	str r0, [r10, #0x30]
	ldrh r0, [r9, #0x2e]
	add r0, r4, r0, lsl #0xf
	str r0, [r10, #0x34]
	bl FX_GetDivResult
	rsb r1, r6, #0x0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020BF6C8

	arm_func_start FUN_020BF7C8
FUN_020BF7C8: ; 0x020BF7C8
	mov r2, #0x1000
	str r2, [r0, #0x0]
	str r2, [r0, #0x14]
	mov r12, #0x0
	str r12, [r0, #0x4]
	ldr r3, [r1, #0x24]
	ldrh r2, [r1, #0x2c]
	rsb r3, r3, #0x0
	mul r2, r3, r2
	mov r2, r2, lsl #0x4
	str r2, [r0, #0x30]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x28]
	mul r2, r1, r2
	mov r1, r2, lsl #0x4
	str r1, [r0, #0x34]
	str r12, [r0, #0x10]
	bx lr
	arm_func_end FUN_020BF7C8

	arm_func_start FUN_020BF810
FUN_020BF810: ; 0x020BF810
	stmdb sp!, {r4-r6,lr}
	ldr r2, [r1, #0x18]
	mov r3, #0x0
	str r2, [r0, #0x0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str r3, [r0, #0x4]
	ldrh r5, [r1, #0x2c]
	ldr r12, [r1, #0x24]
	ldrh r2, [r1, #0x2e]
	mul lr, r12, r5
	rsb r12, r5, #0x0
	mov r12, r12, lsl #0xb
	ldr r4, [r1, #0x18]
	sub r12, r12, lr
	smull lr, r12, r4, r12
	ldr r6, [r1, #0x28]
	mov r4, lr, lsr #0x8
	orr r4, r4, r12, lsl #0x18
	add r4, r4, r5, lsl #0xf
	str r4, [r0, #0x30]
	mul r4, r6, r2
	rsb r5, r2, #0x0
	ldr r2, [r1, #0x1c]
	add r4, r4, r5, lsl #0xb
	smull lr, r12, r2, r4
	mov r2, lr, lsr #0x8
	ldrh r1, [r1, #0x2e]
	orr r2, r2, r12, lsl #0x18
	add r1, r2, r1, lsl #0xf
	str r1, [r0, #0x34]
	str r3, [r0, #0x10]
	ldmia sp!, {r4-r6,pc}
	arm_func_end FUN_020BF810

	arm_func_start FUN_020BF894
FUN_020BF894: ; 0x020BF894
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #0x4]
	bl FX_DivAsync
	ldrh r2, [r5, #0x2c]
	ldrh r7, [r5, #0x2e]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x24]
	rsb r4, r2, #0x0
	mul r3, r1, r7
	rsb r1, r7, #0x0
	add r1, r3, r1, lsl #0xb
	ldrsh r3, [r5, #0x20]
	mov r7, r4, lsl #0xb
	mul r4, r0, r2
	sub r0, r7, r4
	ldrsh lr, [r5, #0x22]
	smull r12, r4, r3, r1
	smull r7, r3, lr, r0
	subs r7, r7, r12
	sbc r3, r3, r4
	mov r4, r7, lsr #0x8
	orr r4, r4, r3, lsl #0x18
	add r2, r4, r2, lsl #0xf
	str r2, [r6, #0x30]
	ldrsh r2, [r5, #0x22]
	ldrsh r3, [r5, #0x20]
	ldrh r12, [r5, #0x2e]
	smull r4, r1, r2, r1
	smlal r4, r1, r3, r0
	mov r0, r4, lsr #0x8
	orr r0, r0, r1, lsl #0x18
	add r0, r0, r12, lsl #0xf
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0x0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020BF894

	arm_func_start FUN_020BF988
FUN_020BF988: ; 0x020BF988
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r0, [r9, #0x22]
	ldr r3, [r9, #0x18]
	ldrsh r5, [r9, #0x20]
	ldr r4, [r9, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #0x14
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #0x14
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #0x14
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #0x14
	str r7, [r10, #0x0]
	str r5, [r10, #0x14]
	bl FX_GetDivResult
	mov r1, r11
	mul r0, r4, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x4]
	mov r0, r8
	bl FX_DivAsync
	ldrh r1, [r9, #0x2c]
	ldrh r8, [r9, #0x2e]
	ldr r2, [r9, #0x28]
	rsb r0, r1, #0x0
	mul r3, r2, r8
	rsb r2, r8, #0x0
	add r8, r3, r2, lsl #0xb
	mov r0, r0, lsl #0xb
	smull r3, r2, r5, r8
	smull r8, r5, r6, r8
	ldr r11, [r9, #0x24]
	mul r12, r11, r1
	sub r0, r0, r12
	smlal r3, r2, r4, r0
	smull r4, r0, r7, r0
	subs r4, r4, r8
	sbc r0, r0, r5
	mov r4, r4, lsr #0x8
	orr r4, r4, r0, lsl #0x18
	add r0, r4, r1, lsl #0xf
	str r0, [r10, #0x30]
	ldrh r1, [r9, #0x2e]
	mov r0, r3, lsr #0x8
	orr r0, r0, r2, lsl #0x18
	add r0, r0, r1, lsl #0xf
	str r0, [r10, #0x34]
	bl FX_GetDivResult
	rsb r1, r6, #0x0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020BF988

	arm_func_start FUN_020BFA9C
FUN_020BFA9C: ; 0x020BFA9C
	stmdb sp!, {r4,lr}
	sub sp, sp, #0x50
	mov r4, r0
	ldr r0, [r4, #0x0]
	mov r3, #0x3
	ands r0, r0, #0x8
	ldrne r0, _020BFC1C ; =0x00101610
	mov r2, #0x2
	strne r0, [sp, #0x0]
	ldreq r0, _020BFC20 ; =0x00101810
	mov r1, #0x1000
	streq r0, [sp, #0x0]
	mov r0, #0x0
	str r3, [sp, #0x4]
	str r2, [sp, #0x48]
	str r1, [sp, #0x44]
	str r0, [sp, #0x40]
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x1
	strne r1, [r4, #0x1c]
	ldrne r0, [r4, #0x1c]
	strne r0, [r4, #0x18]
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x2
	movne r0, #0x1000
	strneh r0, [r4, #0x22]
	movne r0, #0x0
	strneh r0, [r4, #0x20]
	ldr r0, [r4, #0x0]
	ands r0, r0, #0x4
	movne r0, #0x0
	strne r0, [r4, #0x28]
	ldrne r0, [r4, #0x28]
	strne r0, [r4, #0x24]
	ldr r1, [r4, #0x0]
	ldr r0, _020BFC24 ; =UNK_021067F0
	and r1, r1, #0x7
	ldr r2, [r0, r1, lsl #0x2]
	add r0, sp, #0x8
	mov r1, r4
	blx r2
	ldr r3, [r4, #0x30]
	cmp r3, #0x1000
	beq _020BFBB0
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0xc]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #0x14
	str r2, [sp, #0x8]
	ldr r2, [r4, #0x30]
	ldr r0, [sp, #0x38]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	str r2, [sp, #0xc]
	ldr r1, [r4, #0x30]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	str r1, [sp, #0x38]
_020BFBB0:
	ldr r3, [r4, #0x34]
	cmp r3, #0x1000
	beq _020BFC00
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #0x14
	str r2, [sp, #0x18]
	ldr r2, [r4, #0x34]
	ldr r0, [sp, #0x3c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x34]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	str r1, [sp, #0x3c]
_020BFC00:
	add r1, sp, #0x0
	ldr r0, [sp, #0x0]
	add r1, r1, #0x4
	mov r2, #0x12
	bl FUN_020BB1C0
	add sp, sp, #0x50
	ldmia sp!, {r4,pc}
	.balign 4
_020BFC1C: .word 0x00101610
_020BFC20: .word 0x00101810
_020BFC24: .word UNK_021067F0
	arm_func_end FUN_020BFA9C

	arm_func_start FUN_020BFC28
FUN_020BFC28: ; 0x020BFC28
	mov r2, #0x1000
	str r2, [r0, #0x0]
	mov r1, #0x0
	str r1, [r0, #0x4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_020BFC28

	arm_func_start FUN_020BFC4C
FUN_020BFC4C: ; 0x020BFC4C
	ldr r2, [r1, #0x18]
	mov r3, #0x0
	str r2, [r0, #0x0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str r3, [r0, #0x4]
	str r3, [r0, #0x30]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x1c]
	rsb r2, r2, #0x0
	sub r1, r1, #0x1000
	mul r1, r2, r1
	mov r1, r1, lsl #0x4
	str r1, [r0, #0x34]
	str r3, [r0, #0x10]
	bx lr
	arm_func_end FUN_020BFC4C

	arm_func_start FUN_020BFC8C
FUN_020BFC8C: ; 0x020BFC8C
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #0x4]
	bl FX_DivAsync
	ldrh r1, [r5, #0x2c]
	ldrsh r0, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, lsl #0x4
	str r0, [r6, #0x30]
	ldrh r1, [r5, #0x2e]
	ldrsh r0, [r5, #0x22]
	rsb r1, r1, #0x0
	sub r0, r0, #0x1000
	mul r0, r1, r0
	mov r0, r0, lsl #0x4
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0x0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020BFC8C

	arm_func_start FUN_020BFD38
FUN_020BFD38: ; 0x020BFD38
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	mov r9, r1
	ldrh r2, [r9, #0x2c]
	ldrh r1, [r9, #0x2e]
	mov r10, r0
	mov r8, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r8
	bl FX_DivAsync
	ldrsh r3, [r9, #0x22]
	ldr r0, [r9, #0x18]
	ldrsh r7, [r9, #0x20]
	ldr r5, [r9, #0x1c]
	smull r2, r1, r0, r3
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	str r2, [r10, #0x0]
	smull r2, r1, r5, r3
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #0x14
	smull r2, r1, r0, r7
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #0x14
	str r4, [r10, #0x14]
	bl FX_GetDivResult
	smull r2, r1, r5, r7
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x4]
	mov r0, r8
	mov r1, r11
	bl FX_DivAsync
	sub r0, r4, #0x1000
	ldrh r1, [r9, #0x2c]
	mul r2, r1, r6
	mov r1, r2, lsl #0x4
	str r1, [r10, #0x30]
	ldrh r1, [r9, #0x2e]
	rsb r1, r1, #0x0
	mul r0, r1, r0
	mov r0, r0, lsl #0x4
	str r0, [r10, #0x34]
	bl FX_GetDivResult
	rsb r1, r6, #0x0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r10, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020BFD38

	arm_func_start FUN_020BFE0C
FUN_020BFE0C: ; 0x020BFE0C
	stmdb sp!, {lr}
	sub sp, sp, #0x4
	mov r2, #0x1000
	str r2, [r0, #0x0]
	str r2, [r0, #0x14]
	mov lr, #0x0
	str lr, [r0, #0x4]
	ldr r2, [r1, #0x24]
	ldrh r3, [r1, #0x2c]
	rsb r2, r2, #0x0
	ldr r12, [r1, #0x28]
	mul r2, r3, r2
	mov r2, r2, lsl #0x4
	str r2, [r0, #0x30]
	ldrh r1, [r1, #0x2e]
	rsb r2, r12, #0x0
	rsb r1, r1, #0x0
	mul r2, r1, r2
	mov r1, r2, lsl #0x4
	str r1, [r0, #0x34]
	str lr, [r0, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {pc}
	arm_func_end FUN_020BFE0C

	arm_func_start FUN_020BFE68
FUN_020BFE68: ; 0x020BFE68
	stmdb sp!, {r4,lr}
	ldr r3, [r1, #0x18]
	mov r2, #0x0
	str r3, [r0, #0x0]
	ldr r3, [r1, #0x1c]
	str r3, [r0, #0x14]
	str r2, [r0, #0x4]
	ldr r12, [r1, #0x24]
	ldr r3, [r1, #0x18]
	ldr r4, [r1, #0x28]
	smull lr, r3, r12, r3
	mov r12, lr, lsr #0xc
	orr r12, r12, r3, lsl #0x14
	ldrh lr, [r1, #0x2c]
	rsb r3, r12, #0x0
	ldr r12, [r1, #0x1c]
	rsb r4, r4, #0x0
	mul r3, lr, r3
	smull lr, r12, r4, r12
	mov r3, r3, lsl #0x4
	str r3, [r0, #0x30]
	mov r4, lr, lsr #0xc
	ldrh r3, [r1, #0x2e]
	ldr r1, [r1, #0x1c]
	orr r4, r4, r12, lsl #0x14
	add r1, r1, r4
	rsb r3, r3, #0x0
	sub r1, r1, #0x1000
	mul r1, r3, r1
	mov r1, r1, lsl #0x4
	str r1, [r0, #0x34]
	str r2, [r0, #0x10]
	ldmia sp!, {r4,pc}
	arm_func_end FUN_020BFE68

	arm_func_start FUN_020BFEEC
FUN_020BFEEC: ; 0x020BFEEC
	stmdb sp!, {r4-r7,lr}
	sub sp, sp, #0x4
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #0x4]
	bl FX_DivAsync
	ldrsh lr, [r5, #0x20]
	ldr r4, [r5, #0x28]
	ldrsh r0, [r5, #0x22]
	ldr r12, [r5, #0x24]
	smull r3, r2, r4, lr
	smlal r3, r2, r12, r0
	smull r1, r0, r4, r0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #0x14
	sub r4, lr, r3
	smull r3, r2, r12, lr
	subs r1, r3, r1
	sbc r0, r2, r0
	ldrh r2, [r5, #0x2c]
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #0x14
	mul r0, r2, r4
	mov r0, r0, lsl #0x4
	str r0, [r6, #0x30]
	ldrsh r0, [r5, #0x22]
	ldrh r2, [r5, #0x2e]
	add r0, r0, r1
	rsb r1, r2, #0x0
	sub r0, r0, #0x1000
	mul r0, r1, r0
	mov r0, r0, lsl #0x4
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0x0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r7,pc}
	arm_func_end FUN_020BFEEC

	arm_func_start FUN_020BFFD4
FUN_020BFFD4: ; 0x020BFFD4
	stmdb sp!, {r4-r11,lr}
	sub sp, sp, #0x4
	mov r6, r1
	ldrh r2, [r6, #0x2c]
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	mov r10, r2, lsl #0xc
	mov r11, r1, lsl #0xc
	mov r0, r11
	mov r1, r10
	bl FX_DivAsync
	ldrsh r3, [r6, #0x22]
	ldr r0, [r6, #0x18]
	ldrsh r9, [r6, #0x20]
	smull r2, r1, r0, r3
	mov r2, r2, lsr #0xc
	ldr r8, [r6, #0x1c]
	orr r2, r2, r1, lsl #0x14
	str r2, [r7, #0x0]
	smull r2, r1, r8, r3
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #0x14
	smull r2, r1, r0, r9
	mov r5, r2, lsr #0xc
	orr r5, r5, r1, lsl #0x14
	str r4, [r7, #0x14]
	bl FX_GetDivResult
	smull r2, r1, r8, r9
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #0x14
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r7, #0x4]
	mov r0, r10
	mov r1, r11
	bl FX_DivAsync
	ldr lr, [r6, #0x1c]
	ldrsh r2, [r6, #0x20]
	ldr r8, [r6, #0x24]
	ldr r0, [r6, #0x28]
	smull r10, r9, r8, r2
	ldrh r1, [r6, #0x2c]
	smull r3, r2, r0, r2
	ldrsh r12, [r6, #0x22]
	str r1, [sp, #0x0]
	mov r11, lr, asr #0x1f
	smlal r3, r2, r8, r12
	smull r8, r12, r0, r12
	subs r8, r10, r8
	sbc r0, r9, r12
	mov r9, r8, lsr #0xc
	mov r12, r3, lsr #0xc
	orr r9, r9, r0, lsl #0x14
	mov r3, r2, asr #0xc
	orr r12, r12, r2, lsl #0x14
	umull r10, r2, r9, lr
	mla r2, r9, r11, r2
	mov r8, r0, asr #0xc
	mla r2, r8, lr, r2
	ldr r1, [r6, #0x18]
	mov r8, r10, lsr #0xc
	orr r8, r8, r2, lsl #0x14
	add r2, r4, r8
	mov r0, r1, asr #0x1f
	umull r8, r4, r12, r1
	mla r4, r12, r0, r4
	mla r4, r3, r1, r4
	mov r0, r8, lsr #0xc
	orr r0, r0, r4, lsl #0x14
	sub r1, r5, r0
	ldr r0, [sp, #0x0]
	sub r2, r2, #0x1000
	mul r1, r0, r1
	mov r0, r1, lsl #0x4
	str r0, [r7, #0x30]
	ldrh r0, [r6, #0x2e]
	rsb r0, r0, #0x0
	mul r1, r0, r2
	mov r0, r1, lsl #0x4
	str r0, [r7, #0x34]
	bl FX_GetDivResult
	rsb r1, r5, #0x0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r7, #0x10]
	add sp, sp, #0x4
	ldmia sp!, {r4-r11,pc}
	arm_func_end FUN_020BFFD4