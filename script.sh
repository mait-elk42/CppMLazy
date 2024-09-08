#!/bin/bash

# YOU CAN ANY OTHER FILES YOU WANT USING THE SAME LOGIC

mdnew() {
    # Check if the argument is 'Makefile'
    if [ "$1" = "Makefile" ]; then
        echo "FOUND $1 :)"

        TEMPLATE_PATH="$HOME/CppMLazy/Templates/Makefile"
        cp "$TEMPLATE_PATH" .

        source_files=$(ls *.cpp *.c 2>/dev/null | tr '\n' ' ' | sed 's/ $//')

        # Replace placeholders in the Makefile
        updated_makefile_content=$(sed "s/%SRCS%/$source_files/g" Makefile)
        updated_makefile_content=$(echo "$updated_makefile_content" | sed "s/%USR%/$USER/g")
        
        # Write the updated content back to the Makefile
        echo "$updated_makefile_content" > Makefile
        
        echo "Makefile Parsing successfully."
    elif [ "$1" = "class" ]; then
        TEMPLATECPP_PATH="$HOME/CppMLazy/Templates/Class.cpp"
        TEMPLATEHPP_PATH="$HOME/CppMLazy/Templates/Class.hpp"

        OUTCPP_PATH="./$2.cpp"
        OUTHPP_PATH="./$2.hpp"

        updated_cpp=$(sed "s/%Class%/$2/g" $TEMPLATECPP_PATH)
        updated_cpp=$(echo "$updated_cpp" | sed "s/%USR%/$USER/g")
        updated_hpp=$(sed "s/%Class%/$2/g" $TEMPLATEHPP_PATH)
        updated_hpp=$(echo "$updated_hpp" | sed "s/%USR%/$USER/g")

        echo $updated_cpp > $OUTCPP_PATH
        echo $updated_hpp > $OUTHPP_PATH
    else
        echo "NOT FOUND :("
    fi
}
