#include "example.h"
#include <iostream>
#include <string>

int main()
{
    std::string s;
    std::cout << "Please enter a string\n";
    std::getline(std::cin, s);
    std::cout << "You Entered -> " << s << "\n";
    Example example;
    example.printMessage();
    return 0;
}
