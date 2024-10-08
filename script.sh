#!/bin/bash

# YOU CAN ADD ANY OTHER FILES YOU WANT USING THE SAME LOGIC
mdnew() {
	if [ "$#" -lt "2" ]; then
		echo "\033[31mERROR : args count wrong :(\033[0m"
		echo ""
		echo "usage: "
		echo "\033[33m\tmdnew mf 'EXECUTABLE NAME'\033[0m #To Create A Makefile Template"
		echo "or"
		echo "\033[33m\tmdnew class 'CLASS NAME'\033[0m #To Create A Cpp Class Template"
		echo ""
	elif [ "$1" = "mf" ]; then
		echo "FOUND $1 :)"

		TEMPLATE_PATH="$HOME/CppMLazy/Templates/Makefile"

		source_files=$(ls *.cpp 2> /dev/null | grep -v "$2.cpp" | tr '\n' ' ' | sed 's/ $//')

		updated_makefile_content=$(sed "s/%SRCS%/$source_files/g" "$HOME/CppMLazy/Templates/Makefile" | sed "s/%USR%/$USER/g" | sed "s/%NAME%/$2/g")
		echo "$updated_makefile_content" > Makefile
		
		echo "Makefile Is Ready :) -> Take A Look Before Use !!!"
		echo "The Default executable file called \"main\", Changing it is highly recommended"
	elif [ "$1" = "class" ]; then
		echo "FOUND $1 :)"
		TEMPLATECPP_PATH="$HOME/CppMLazy/Templates/Class.cpp"
		TEMPLATEHPP_PATH="$HOME/CppMLazy/Templates/Class.hpp"

		OUTCPP_PATH="./$2.cpp"
		OUTHPP_PATH="./$2.hpp"

		updated_cpp=$(sed "s/%Class%/$2/g" $TEMPLATECPP_PATH | sed "s/%USR%/$USER/g")
		updated_hpp=$(sed "s/%Class%/$2/g" $TEMPLATEHPP_PATH | sed "s/%USR%/$USER/g")

		echo $updated_cpp > $OUTCPP_PATH
		echo $updated_hpp > $OUTHPP_PATH
		echo "THE CLASS: '$2' Is Ready :)  But Take A Look Before Use !!!"
	else
		echo "\033[31mERROR : cmd not found :(\033[0m"
		echo ""
		echo "\033[33musage: "
		echo "\tmdnew mf 'EXECUTABLE NAME' #TO MAKE A MAKEFILE TEMPLATE"
		echo "or"
		echo "\tmdnew class 'CLASS NAME' #TO MAKE A CLASS TEMPLATE"
		echo "\033[0m"
	fi
}
