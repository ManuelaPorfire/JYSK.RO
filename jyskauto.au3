#include <AutoItConstants.au3>
#include <MsgBoxConstants.au3>
;includem clasa unde e introdus elementul Mouse
;deschidem aplicatia paint pentru a desena ceva

Local $mesaj = MsgBox(4100, "CHROME", "Vrei sa deschizi Chrome?")

If $mesaj = 7 Then
   MsgBox(0, "Chrome", "Multumim!")
   Exit
EndIf



For $chrome = 1 to 2
   Run("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe")

  WinWaitActive("[Class:Chrome_WidgetWin_1]")
sleep (1000)
Send("google.ro")
Sleep(5000)
Send("{ENTER}")
Sleep(5000)

  WinWaitActive("[Class:Chrome_WidgetWin_1]")
;asteapta pana se deschide fereastra google.ro
;scriem in bara de cautare a google si ducem cursorul in casuta de cautare google

MouseClick($MOUSE_CLICK_PRIMARY, 500, 396, 1)
;scriem Jysk in casuta de cautare si apasam "ENTER"
Send("Jysk")
Sleep(1000)
Send("{ENTER}")
Sleep(1000)
   WinWaitActive("[Class:Chrome_WidgetWin_1]")
;Dam click pe link-ul Jysk (primul link)
MouseClick($MOUSE_CLICK_PRIMARY, 367, 288, 1)
   WinWait("[Class:Chrome_WidgetWin_1]")
   Sleep(5000)
;dam click pe link-ul  CONECTARE
MouseClick($MOUSE_CLICK_PRIMARY, 1222, 126, 2)
   WinWait("[Class:Chrome_WidgetWin_1]")
   Sleep(5000)
;apasam butonul "CREAZA CONT"
MouseClick($MOUSE_CLICK_PRIMARY, 821, 623, 1)
   WinWait("[Class:Chrome_WidgetWin_1]")

;punem cursorul in campul "adresa de email"
MouseClick($MOUSE_CLICK_PRIMARY, 168, 469, 1)
   WinWait("[Class:Chrome_WidgetWin_1]")
;completam campurile utilizand elementul SEND si comanda TAB
local $a = ""
	  $a &= Chr(Random(65, 122, 1))
   $x="anamaria" & $a & "@yahoo.com"
   Send($x)
	  Sleep(500)
	  Send("{TAB}")
   Send($x)
	  Sleep(500)
	  Send("{TAB}")
   Send("xxx111???xxx")
	  Sleep(500)
	  Send("{TAB}")
   Send("Ana Maria")
	  Sleep(500)
	  Send("{TAB}")
   Send("Bondar")
   ;cu ajutorul comenzii TAB si a MouseClick trecem si bifam casuta "accept termenii si conditiile"
   Send("{TAB}")
   Sleep(2000)
 WinWait("[Class:Chrome_WidgetWin_1]")
MouseClick($MOUSE_CLICK_PRIMARY, 110, 415, 1)
	  Sleep(500)
MouseClick($MOUSE_CLICK_PRIMARY, 300, 531, 1)

;inchide pagina de Chrome

WinWaitActive("[CLASS:Chrome_WidgetWin_1]")
MouseClick($MOUSE_CLICK_PRIMARY, 1343, 12, 1)

;inchidem WinWait
WinWaitClose("[CLASS:Chrome_WidgetWin_1]")
next
