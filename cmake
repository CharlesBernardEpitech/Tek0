#!/bin/sh

echo "## Makefile by cmake (Thedusk)" >> Makefile

echo "" >> Makefile

echo "CC	= gcc" >> Makefile

echo "" >> Makefile

echo "RM	= rm -f" >> Makefile

echo "" >> Makefile

echo 'Flags de vérif ?'

read fvr

if [ $fvr = "oui" ]; then

echo 'CFLAGS  += -Wextra -Wall -Werror' >> Makefile
echo 'CFLAGS  += -ansi -pedantic' >> Makefile
echo 'CFLAGS  += -I.' >> Makefile

fi

echo "" >> Makefile
# if [ $lib == "o" ]; then
  
# echo "FLIB	= -lmy -L./" >> Makefile
  
# fi

echo "" >> Makefile

echo "Source :"

read sr

echo "SRC	= $sr " >> Makefile

echo "" >> Makefile


echo 'OBJ	= $(SRC:.c=.o)' >> Makefile

echo "" >> Makefile

echo "Nom du binaire"

read namb

echo "NAME	= $namb" >> Makefile

echo "" >> Makefile

echo 'all: $(NAME)' >> Makefile

echo "" >> Makefile

echo '$(NAME): $(OBJ)' >> Makefile

echo	'	$(CC) $(OBJ) -o $(NAME) $(CFLAGS)' >> Makefile

echo "" >> Makefile

echo 'clean:
' >> Makefile

echo '	$(RM) $(OBJS)' >> Makefile
# echo '	make -C ./lib clean' >> Makefile

echo "" >> Makefile

echo 'fclean: clean' >> Makefile
# echo '	make -C ./lib fclean' >> Makefile
echo '	$(RM) $(NAME)' >> Makefile


echo "" >> Makefile

echo 're: fclean all' >> Makefile
# echo '	make -C ./lib re' >> Makefile

echo "" >> Makefile

echo '.PHONY: all clean fclean re' >> Makefile
# echo '	make -C ./lib .PHONY' >> Makefile

# cp -r ~/lib/ ./

# make -C ./lib re

# cp ./lib/libmy.a ./
