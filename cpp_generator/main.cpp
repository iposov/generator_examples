#include <iostream>
#include "fstream"

using namespace std;

int main(int argc, char *argv[1]) {

    long long seedCount, numberFirst, numberSecond;
    fstream seed, out1, out2;

    seed.open(argv[1], ios::in); // входной аргумент - путь до .txt ядра
    out1.open("out1.txt", ios::out);
    out2.open("out2.txt", ios::out);

    seed >> seedCount;

    seed.close();

    srand(static_cast<unsigned int>(seedCount)); // инициализация ядра рандома

    numberFirst = rand() % 10000 + 1 ;
    numberSecond = rand() % 11111 + 1;

    out1 << "Сложите " << numberFirst << " и " << numberSecond;
    out1.close();

    out2 << "Ответ: " << numberFirst + numberSecond;
    out2.close();
    //с форматом LaTeX я не разобрался :с
    return 0;
}