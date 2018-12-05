#! /bin/bash
#cars.sh
#Vinny Caffaro

carslist=My_old_cars
echo
echo "Which of the following would you like to do?"
echo "[+] to add a car to the list"
echo "[L] to print the list of cars"
echo "[Q] to quit the program"
echo
read CHOICE

while [ "$CHOICE" != "Q" ] && [ "$CHOICE" != "q" ]
do
	case $CHOICE in
		"+")
			echo
			echo "What year is the car?"
			read YEAR
			echo
			echo "What make is the car?"
			read MAKE
			echo
			echo "What model is the car?"
			read MODEL
			echo $YEAR:$MAKE:$MODEL >> My_old_cars
			;;
		"L")
			echo
			sort $carslist | tr ":" " "
			;;
	esac
	echo
	echo "Which of the following would you like to do?"
	echo "[+] to add a car to the list"
	echo "[L] to print the list of cars"
	echo "[Q] to quit the program"
	echo
	read CHOICE
done

echo
echo "Goodbye!"


