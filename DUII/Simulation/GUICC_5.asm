﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\ConvertMono\GUICC_5.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_LCD_API_ColorConv_5
CONST	SEGMENT
_LCD_API_ColorConv_5 DD FLAT:__Color2Index_5
	DD	FLAT:__Index2Color_5
	DD	FLAT:__GetIndexMask_5
CONST	ENDS
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\convertmono\guicc_5.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT __Color2Index_5
_TEXT	SEGMENT
_b$ = -32						; size = 4
_g$ = -20						; size = 4
_r$ = -8						; size = 4
_Color$ = 8						; size = 4
__Color2Index_5 PROC					; COMDAT
; Line 35
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 37
	mov	eax, DWORD PTR _Color$[ebp]
	and	eax, 255				; 000000ffH
	imul	eax, 31					; 0000001fH
	mov	DWORD PTR _r$[ebp], eax
; Line 38
	mov	eax, DWORD PTR _Color$[ebp]
	shr	eax, 8
	and	eax, 255				; 000000ffH
	imul	eax, 31					; 0000001fH
	mov	DWORD PTR _g$[ebp], eax
; Line 39
	mov	eax, DWORD PTR _Color$[ebp]
	shr	eax, 16					; 00000010H
	and	eax, 255				; 000000ffH
	imul	eax, 31					; 0000001fH
	mov	DWORD PTR _b$[ebp], eax
; Line 40
	mov	eax, DWORD PTR _r$[ebp]
	add	eax, DWORD PTR _g$[ebp]
	add	eax, DWORD PTR _b$[ebp]
	xor	edx, edx
	mov	ecx, 765				; 000002fdH
	div	ecx
; Line 41
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
__Color2Index_5 ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __Index2Color_5
_TEXT	SEGMENT
_g$ = -8						; size = 4
_Index$ = 8						; size = 4
__Index2Color_5 PROC					; COMDAT
; Line 47
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 49
	mov	eax, DWORD PTR _Index$[ebp]
	imul	eax, 31					; 0000001fH
	imul	eax, 255				; 000000ffH
	xor	edx, edx
	mov	ecx, 961				; 000003c1H
	div	ecx
	mov	DWORD PTR _g$[ebp], eax
; Line 50
	mov	eax, DWORD PTR _g$[ebp]
	shl	eax, 8
	or	eax, DWORD PTR _g$[ebp]
	mov	ecx, DWORD PTR _g$[ebp]
	shl	ecx, 16					; 00000010H
	or	eax, ecx
; Line 51
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
__Index2Color_5 ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT __GetIndexMask_5
_TEXT	SEGMENT
__GetIndexMask_5 PROC					; COMDAT
; Line 57
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 58
	mov	eax, 31					; 0000001fH
; Line 59
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
__GetIndexMask_5 ENDP
_TEXT	ENDS
END