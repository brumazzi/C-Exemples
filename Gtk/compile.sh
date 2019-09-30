for x in *.c; do
	echo -n "Compiling $x "
	gcc $x -w `pkg-config gtk+-3.0 --libs --cflags` -o ${x%.c} -g
	echo -e "[ \033[32mOK\033[00m ]"
done
