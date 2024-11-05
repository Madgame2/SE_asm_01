.686P													; Для Pinthium Pro и более новых
.MODEL FLAT, STDCALL									; Модель памяти и соглашение о вызовах
includelib kernel32.lib				


ExitProcess PROTO : DWORD								;Прототип функции из библиотеки Windows c аргументом целое число
MessageBoxA PROTO : DWORD, : DWORD, : DWORD, :DWORD



.STACK 4096


.CONST


.DATA
MB_OK EQU 0												;MB_OK  = 0
STR1 DB "Моя первая программа", 0                       ;STR1 =  "Моя первая программа" + \0
STR2 DB "Привет всем!", 0
HW DD ?													;Выделяем 4 байта памяти но не инециализируем

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
