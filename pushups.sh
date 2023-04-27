x=1

while [[ $x -le 10 ]]
do
	read -p "Flexão número $x: Aperte enter"
	(( x ++ ))
done

echo "boa, terminou"
