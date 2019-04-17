import random
import sys
from numpy.core import int64

if __name__ == "__main__":
    seedFile = open(sys.argv[1], "r")
    seedStr: str = seedFile.read()
    seed = int64(seedStr)
    seedFile.close()

    taskFile = open("task.txt", "w")
    answerFile = open("answer.txt", "w")

    random.seed(seed)
    number = random.randint(0, 100000)
    numberFirst = number % 10000 + 1
    numberSecond = number & 11111 + 1

    taskFile.write("Сложите " + str(numberFirst) + " и " + str(numberSecond))
    taskFile.close()

    answerFile.write(str(numberFirst + numberSecond))

