#TARGETS
clean: 
	rm -f main
	rm -f *.o

dev_build: clean
	clang++ -g -c -o example.o  example.cpp 
	clang++ -g -c -o main.o main.cpp 
	clang++ -o       main main.o example.o 

build: clean
	clang++ -c -o example.o  example.cpp 
	clang++ -c -o main.o main.cpp 
	clang++ -o    main main.o example.o 

debug: dev_build
	gdb -q ./main

run: build
	./main

.PHONY: clean
