## Makefile by cmake (Thedusk)

CC	= gcc

RM	= rm -f

CFLAGS  += -Wextra -Wall -Werror
CFLAGS  += -ansi -pedantic
CFLAGS  += -I.

SRC	= test.c

OBJ	= $(SRC:.c=.o)

NAME	= nop

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME) $(CFLAGS)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
