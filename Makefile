# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ekeen-wy <ekeen-wy@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/13 11:47:23 by ekeen-wy          #+#    #+#              #
#    Updated: 2022/03/11 15:19:02 by ekeen-wy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libftprintf.a

CC := gcc

CFLAGS := -Wall -Wextra -Werror

DEPS := ft_printf.h

LIBFT := libft/libft.a

LIBFTOBJ := libft/*.o

SRC = ft_printf.c ft_print_xlow.c ft_print_xup.c ft_print_u.c ft_print_s.c \
      ft_print_p.c ft_print_d.c ft_print_c.c ft_utils.c

OBJ := $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ) 
	ar csr $(NAME) $? $(LIBFTOBJ)

$(OBJ): $(LIBFT) $(DEPS) $?

$(LIBFT):
	$(MAKE) -C libft

fclean: clean 
	rm -f $(NAME)

clean:
	$(MAKE) fclean -C libft
	rm -f $(OBJ)

re: fclean all

.PHONY: all clean fclean re