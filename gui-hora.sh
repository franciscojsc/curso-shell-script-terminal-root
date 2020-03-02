#!/bin/bash

dialog --yesno 'Quer ver as horas?' 0 0

if [ $? = 0 ]; then
	dialog --title "HORÁRIO" --msgbox "Agora são: $( date +%H:%M:%S )" 5 50
else
	dialog --msgbox "Ok, não vou mostrar as horas." 5 50
fi