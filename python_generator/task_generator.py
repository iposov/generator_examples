import numpy
import sys
from numpy.core import int64


# Функция генерирует условие задачи.
# Получает на вход генератор слуайных чисел gen и количество цифр n, которое будет в числах для сложения
def generate_task(n: int):
    global a_plus_b
    global a
    global b

    # Определям минимальное и максимальное
    # число из n цифр.Например, если n = 4, то min_number = 1000 max_number = 9999
    min_number = int_pow(10, n - 1)
    max_number = int_pow(10, n) - 1

    # Один из методов генерации - это бесконечный цикл.Генерация повторяется, пока
    # не будет сгенерировано условие, в котором выполняются все требования к задаче.
    while 1 < 10:
        a = numpy.random.randint(min_number, max_number)
        b = numpy.random.randint(min_number, max_number)
        a_plus_b = a + b
        # для примера потребуем, чтобы сумма имела столько же цифр, сколько исходные числа.
        if a_plus_b < max_number:
            break

    print("Сложите $" + str(a) + "$ и $" + str(b) + "$.\n")
    print("% == разделитель условия и ответа ==\n")
    print("Ответ: $" + str(a) + " + " + str(b) + " = " + str(a_plus_b) + "$.")


# вспомогательная функция для целочисленнго возведения в степень
def int_pow(x: int, m: int):
    result = 1
    for number in range(m):
        result *= x
    return result


if __name__ == "__main__":
    # Сначала получим инициализатор генератора случайных
    # чисел из аргумента командной строки
    rand_seed = int64(sys.argv[1])

    # Создание генератора
    numpy.random.seed(rand_seed)

    # Из второго аргумента командной строки узнаем, какие числа
    # надо складывать: однозначные, двузначные,трехзначные и т.п. Количество
    # цифр сохраним в переменной n. Если второго аргумента нет, выберем случайное
    # значение n от 3 до 5.
    n: int

    if len(sys.argv) < 2:
        n = numpy.random.randint(3, 5)
    else:
        n = int(sys.argv[2])

    if (n > 1) and (n < 8):
        generate_task(n)
