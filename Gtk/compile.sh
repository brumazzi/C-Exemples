for x in *.c; do
	cc $x `pkg-config gtk+-3.0 --libs --cflags` -o ${x%.c}
done
