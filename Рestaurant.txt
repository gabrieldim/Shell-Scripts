#!/bin/bash

PS3="#?"
total=0
select item in "Hamburger (150 den)" Pizza(200 den)" "Caffee (70 den)" "Cake (90 den)" "Order"
do
	case $item in
		"Hamburger (150 den)")
			total=$(( $total + 150 ))
			echo Sum: $total den
		;;
		"Pizza (200 den)")
                        total=$(( $total + 200 ))
                        echo Sum: $total den
                ;;
		"Caffee (70 den)")
                        total=$(( $total + 70 ))
                        echo Sum: $total den
                ;;
		"Cake (90 den)")
               		total=$(( $total + 90 ))
                        echo Sum: $total den
                ;;
   		"Order")
			break
                ;;
		*)
		echo "Invalid option, $REPLY.";;
	esac
done


echo Vkupno\: $total den

