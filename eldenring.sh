echo "Bienvenue à le jeuet Elden Ring"
sleep 1

# FIRST BOSS BATTLE!
echo "Ta première bataille"
sleep 1

echo "Quel est ton premier movement? (0-1)"
read moveOne

firstBoss=$(( $RANDOM % 2 ))

if [[ $firstBoss == $moveOne ]]; then
	echo "TU ES GAGNE!"
else
	echo "TV OCCIDATVS EST"
	exit 1
fi

sleep 2

echo "Quel est ton seconde movement? (0-9)"
read secondMove

secondBoss=$(( $RANDOM % 10 ))

if [[ $secondBoss == $moveTwo || $secondMove == "coffee" ]]; then
	echo "VOUS ÊTES GAGNE!"
else
	echo "TV OCCIDATVS EST"
fi


