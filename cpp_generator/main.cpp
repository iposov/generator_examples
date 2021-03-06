#include <iostream>
#include <string>
#include <random>

using namespace std;

/*
 * Функция генерирует условие задачи.
 * Получает на вход генератор слуайных чисел gen и количество цифр n, которое будет в числах для сложения
 */
void generate_task(mt19937 gen, int n);

int int_pow(int x, int m); // вспомогательная функция для возведения в степень

int main(int argc, char *argv[]) {

    // Сначала получим инициализатор генератора случайных чисел из аргумента командной строки
    long long rand_seed = stoll(argv[1]);
    // Создание генератора, mt19937 это один из алгоритмов генерации
    mt19937 gen(rand_seed);

    // Из второго аргумента командной строки узнаем, какие числа надо складывать: однозначные, двузначные,
    // трехзначные и т.п. Количество цифр сохраним в переменной n.
    // Если второго аргумента нет, выберем случайное значение n от 3 до 5.
    int n;
    if (argc < 3) {
        // n_dist это объект, который может с помщью генератора случайных чисел создавать случайные числа от 3 до 5
        uniform_int_distribution<int> n_dist(3, 5);
        n = n_dist(gen);
    } else {
        n = stoi(argv[2]);
        // убедимся, что n положительный, и не слишком большой
        if (n < 1 || n > 8)
            exit(1);
    }

    generate_task(gen, n);

    return 0;
}

void generate_task(mt19937 gen, int n) {
    // Определям минимальне и максимальное число из n цифр. Например,
    // если n = 4, то min_number = 1000, а max_number = 9999.
    int min_number = int_pow(10, n - 1);
    int max_number = int_pow(10, n) - 1;
    uniform_int_distribution<int> num_dist(min_number, max_number);

    // будем генерировать числа a, b и их сумму
    int a;
    int b;
    int a_plus_b;

    /*
     * Один из методов генерации - это бесконечный цикл. Генерация повторяется, пока не будет сгенерировано
     * условие, в котором выполняются все требования к задаче.
     */
    for (;;) {
        a = num_dist(gen);
        b = num_dist(gen);
        a_plus_b = a + b;

        //для примера потребуем, чтобы сумма имела столько же цифр, сколько исходные числа.
        if (a_plus_b > max_number)
            continue;

        //здесь могут быть дополнительные проверки на то, какое получается условие

        //если все проверки пройдены, цикл завершается
        break;
    }

    cout << "Сложите $" << a << "$ и $" << b << "$." << endl;
    cout << "% == разделитель условия и ответа ==" << endl;
    cout << "Ответ: $" << a << " + " << b << " = " << a_plus_b << "$.";
}

// вспомогательная функция для целочисленнго возведения в степень
int int_pow(int x, int m) {
    int result = 1;
    for (int i = 0; i < m; i++)
        result *= x;
    return result;
}