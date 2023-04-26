echo "Bienvenue à le jeuet Elden Ring. Quel est ta class?
1 - Samurai
2 - Prisonier
3 - Prophet"
read class

case $class in
	1)
		type='Samurai'
		hp=2
		attack=10
		;;
	2)
		type='Prisonier'
		hp=3
		attack=4
		;;
	3)
		type='Prophet'
		hp=4
		attack=4
		;;
esac

subtractHPAndCheckIfDied() {
	hp=$(($hp - 1))

	if [[ $hp == 0 ]]; then
		echo "MORRESTE, OPÁ!"
		exit 1
	else
		echo "PERDESTE UMA VIDA, GAJO!"
		echo "Ainda tens mais $hp vidas, opá. Vamos para a próxima fase!"
	fi

}

echo "Escolheste a classe $type, gajo! Teu HP é $hp e teu ataque é $attack"

sleep 1


# FIRST BOSS BATTLE!
echo "Ta première bataille"
sleep 1

echo "Quel est ton premier movement? (0-4)"
read moveOne

firstBoss=$(( $RANDOM % 4 ))

if [[ $firstBoss == $moveOne ]]; then
	echo "TU ES GAGNE!"
else
	subtractHPAndCheckIfDied
fi

sleep 2

echo "Eis o segundo boss. His name is Hohenschwangau. Quel est ton seconde movement? (0-9)"
read secondMove

secondBoss=$(( $RANDOM % 10 ))

if [[ $secondBoss == $moveTwo || $secondMove == "coffee" ]]; then
	echo "VOUS ÊTES GAGNE!"
else
	subtractHPAndCheckIfDied
fi


