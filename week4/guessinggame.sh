echo "Guessing Game"
echo "How many files are in the current directory ?"
read guess


function get_file {
        local number=$(ls -l | wc -l)-1
        echo $number
}

correct=$(get_file)

while [[ $guess -ne $correct ]]
do
        if [[ $guess -gt $correct ]]
        then
                echo "No.. it's too hugh"
        else
                echo "No.. it's to low"
        fi
        echo 
        echo "Try again: "
        read guess
done

echo "You guessed the right number! Great! "
