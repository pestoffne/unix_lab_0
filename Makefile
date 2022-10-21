INC=include
SRC=src
OUT=build
CC=gcc


${OUT}/a.out: ${OUT}/main.o ${OUT}/hello.o
	${CC} -o ${OUT}/a.out ${OUT}/main.o ${OUT}/hello.o

${OUT}/main.o: ${SRC}/main.c ${INC}/hello.h
	${CC} -o ${OUT}/main.o -c ${SRC}/main.c -I${INC}

${OUT}/hello.o: ${SRC}/hello.c ${INC}/hello.h
	${CC} -o ${OUT}/hello.o -c ${SRC}/hello.c -I${INC}

clean:
	rm -f ${OUT}/*

.PHONY: clean
