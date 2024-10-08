# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: %USR% <%USR%@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/16 18:52:27 by %USR%          #+#    #+#              #
#    Updated: 2024/08/22 17:07:37 by %USR%         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COMPILER= c++
CFLAGS= -Wall -Wextra -Werror -std=c++98
SRCS= %SRCS%
SRCS_O= $(SRCS:.cpp=.o)
NAME= %NAME%

all: $(NAME)

$(NAME): $(SRCS_O) %NAME%.cpp
	$(COMPILER) $(CFLAGS) %NAME%.cpp $(SRCS_O) -o $(NAME)

%.o: %.cpp %.hpp
	$(COMPILER) -c $(CFLAGS) $< -o $@

clean:
	rm -f $(SRCS_O)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean
