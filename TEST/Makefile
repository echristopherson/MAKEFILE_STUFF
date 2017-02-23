include ../common.make

class_objects = Foo.o Bar.o
library_objects = $(class_objects) say_goodbye.o

$(class_objects): %.o: %.h

main.o: Foo.h

main: Foo.o say_goodbye.o
