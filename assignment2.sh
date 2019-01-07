if [ -f /home/intern6/surbhi/temp.txt ]
then
    if [ -s /home/intern6/surbhi/temp.txt ]
    then
        echo "File exists and not empty"
        echo "The file contents are"
        value1=$(cat temp.txt)
        echo "$value1"
    else
        echo "File exists but empty"
        echo "As file empty,take statemnet from commmand line and put it into the file"
        read -p "Enter Your Name: "  username

        echo "$username!"
        echo "$username" > temp.txt

    fi
    else
        echo "File not exists"
        echo "create a file"
        touch temp.txt
        echo "Empty file is created" 
    fi
