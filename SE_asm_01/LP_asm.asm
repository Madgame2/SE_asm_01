.686P													; ��� Pinthium Pro � ����� �����
.MODEL FLAT, STDCALL									; ������ ������ � ���������� � �������
includelib kernel32.lib				


ExitProcess PROTO : DWORD								;�������� ������� �� ���������� Windows c ���������� ����� �����
MessageBoxA PROTO : DWORD, : DWORD, : DWORD, :DWORD



.STACK 4096


.CONST


.DATA
MB_OK EQU 0												;MB_OK  = 0
STR1 DB "��� ������ ���������", 0                       ;STR1 =  "��� ������ ���������" + \0
STR2 DB "������ ����!", 0
HW DD ?													;�������� 4 ����� ������ �� �� ��������������

.CODE

main PROC
START :
		;PUSH	MB_OK
		;PUSH	OFFSET STR1
		;PUSH	OFFSET STR2
		;PUSH	HW
		;CALL	MessageBoxA

		INVOKE MessageBoxA, HW, OFFSET STR2, OFFSET STR1, MB_OK

	push -1
	call ExitProcess 

main ENDP


end main
