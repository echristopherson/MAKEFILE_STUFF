#include "Foo.h"

extern void say_goodbye();

int main() {
    Foo f;
    f.say_hello();
    say_goodbye();

    return 0;
}
