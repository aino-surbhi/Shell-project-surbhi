choice()
{
    echo "Enter your choice"
    read val
    if [ $val == start ]
    then starting
    
    elif [ $val == end ]
    then Ending
    
    elif [ $val == pattern ]
    then pattern
    
    elif [ $val == full ]
    then fullword
    
    elif [ $val == line ]
    then wordtoword

    elif [ $val == char ]
    then character
  

    elif [ $val == pword ]
    then pword
  

    elif [ $val == lword ]
    then Lword

     elif [ $val == swith ]
    then startswith
    
     elif [ $val == ewith ]
    then endswith
    
    
    elif [ $val == exit ]
    then exit

fi
    
}
starting()
{
    echo "enter the word which you want to search"
    read word1
    grep --color=always -E '\b'$word1 $file
    choice
}
Ending()
{    
    
    echo "enter end the wor which you want to search"
    read word1
    grep --color=always -E $word1'\b' $file
    choice
}
pattern()
{
    
    echo "enter the wor which you want to search"
    read word1
    grep --color=always "$word1" $file    
    choice
}
fullword()
{

    echo "enter the wor which you want to search"
    read word1
    grep --color=always -w "$word1" $file
    choice
}

wordtoword()
{

    echo "word1 to word2 search  "
    read word1
    read word2
    grep --color=always -w $word1.*$word2 $file
    choice
}
character()
{
    echo "enter the character"
    read word1
    fgrep --color=always "$word1" $file
    choice
}
pword()
{
   echo "enter the word"
   read word1
   grep --color=always "..$word1" $file
   choice
}

Lword()
{    
    
    echo "enter end the wor which you want to search"
    read word1
    grep -o 'word1$' $file
    choice
}

startswith()
{
    
    #echo "enter the character"
    #read word1
    grep -o '^.\{4\}' $file
    choice
}
endswith()
{
    
    #echo "enter the character"
    #read word1
    grep -o '.\{4\}$' $file
    choice
}


echo "Enter the file name,which you want"
read file
    if [ -f /home/intern6/surbhi/$file ]
    then
        echo "file exist"
        choice
    else
        touch $file
            
fi

