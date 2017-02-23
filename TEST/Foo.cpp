#include <iostream>
#include "Foo.h"

Foo::Foo() {
	std::cout << "Foo constructed." << std::endl;
}

void Foo::say_hello() {
	std::cout << "Hello from a Foo object!" << std::endl;
}
