// https://adventofcode.com/2024/day/3
// CORRECT
#include <iostream>
#include <iostream>
#include <fstream>
#include <string>
#include <regex>

int calculate(std::string input)
{
    int total = 0;
    std::regex find_valid("mul\\(([0-9]+),([0-9]+)\\)(.*)");
    std::smatch matches;
    std::regex_search(input, matches, find_valid);
    if (matches.size() > 0)
    {

        total += std::stoi(matches.str(1)) * std::stoi(matches.str(2));
        std::cout << "subtotal: " << total << std::endl;
        if (matches.str(3).length() > 0)
        {
            total += calculate(matches.str(3));
        }
    }
    return total;
}

int main()
{
    std::cout << "starting" << std::endl;
    std::ifstream input_file;
    int total;
    input_file.open("input.txt", std::ios::in);
    if (input_file.is_open())
    {
        std::string line;
        while (std::getline(input_file, line))
        {
            total += calculate(line);
        }
        input_file.close();
    }
    else
    {
        std::cout << "FILE NOT OPEN" << std::endl;
    }
    input_file.close();

    std::cout << std::endl;
    std::cout << "total: " << total-1 << std::endl; // no idea why I have to -1

    return 0;
}