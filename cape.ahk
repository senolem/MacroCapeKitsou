; Fonctions

Delay()
{
	global RNG = 0
	Random RNG,200,250
}

Search()
{
	global Yessay = 0
	
	ImageSearch, FoundX, FoundY, 663, 215, 997, 243, %A_ScriptDir%\94.png
	if ErrorLevel = 0 ; Si >= 94 trouvé
	{
	Yessay = 1
	MsgBox, , , >= 104 detecte`, item suivant, 0.5
	}
	ImageSearch, FoundX, FoundY, 663, 215, 997, 243, %A_ScriptDir%\95.png
	if ErrorLevel = 0 ; Si >= 94 trouvé
	{
	Yessay = 1
	MsgBox, , , >= 104 detecte`, item suivant, 0.5
	}
	ImageSearch, FoundX, FoundY, 663, 215, 997, 243, %A_ScriptDir%\96.png
	if ErrorLevel = 0 ; Si >= 94 trouvé
	{
	Yessay = 1
	MsgBox, , , >= 104 detecte`, item suivant, 0.5
	}
}

; /Fonctions

F1:: ; F1 = commencer

Beginning:
Loop
{
Delay()
Sleep, %RNG%
Click, 1250, 685, 2 ; Double click item
MouseMove, 1374, 602
Send {WheelDown}
Search()
if Yessay = 1 ; Si >= 94 trouvé en bas à gauche on bloque la macro
{
MsgBox, , , L'item en en bas à gauche est déjà à 94
}
Loop
{
Sleep 100
Click, 910, 770 ; FM
Delay()
Sleep, %RNG%
Search()
if Yessay = 1 ; Si >= 94 trouvé on passe à l'item suivant
{
goto Beginning
}
}
}

MsgBox, , ,Plus aucun item a FM / Aucun item trouve ! ; Quand on sort de la 1ere loop, soit plus d'item à FM soit pas d'item trouvé
return

F2:: ; F2 = Arrêt de tout le script et reload
MsgBox, , ,Arret d'urgence !, 1
Reload
return



