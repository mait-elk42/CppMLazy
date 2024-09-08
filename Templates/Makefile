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

CFLAGS= -Wall -Wextra -Werror -std=c++98
SRCS= %SRCS%
SRCS_O= $(SRCS:.cpp=.o)
NAME= megaphone

all: $(NAME)

$(NAME): $(SRCS_O)
        c++ $(CFLAGS) $(SRCS_O) -o $(NAME)

%.o: %.cpp
        c++ -c $(CFLAGS) $< -o $@

clean:
        rm -f $(SRCS_O)

fclean: clean
        rm -f $(NAME)

re: fclean all

.PHONY: clean