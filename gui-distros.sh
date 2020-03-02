#!/bin/bash
while true;
    do
        distros=$(dialog --stdout --title "Escolha sua Distro" --menu "Qual sua distro preferida?" 0 0 0 \
            1 "Debian"  \
            2 "Red Hat" \
            3 "Gentoo"  \
            4 "Slackware" \
            5 "Ubuntu"  \
            0 "Sair" )

        [ $? -ne 0 ] && echo "Cancelou ou Apertou ESC." && break

        case "$distros" in
            1) dialog --stdout --msgbox "Essa é a melhor distro! ;)" 5 30 ;;
            2) dialog --title 'Red Hat' --infobox '\nEla agora é ENTREPRISE. :(' 5 30; break ;;
            3) dialog --title "Gentoo" --msgbox '\nVocê é PSICOPATA!' 5 35 ;;
            4) dialog --title 'Slackware' --yesno 'Você é ATEU ?' 5 60;

                if [ $? = 0 ];then
                    dialog --title 'Slackware Ateu' --infobox '\Sabia!' 0 0;
                else
                    dialog --title 'Slackware Não Ateu?' --infobox '\nAmarelou.' 0 0;
                fi
            
            break ;;

            5)dialog --title 'Ubuntu' --timebox '\nVou gravar a hora que você escolheu esse absurdo.' 0 0; break;;
            0) echo "Você escolheu Sair"; break ;;

    esac

    done