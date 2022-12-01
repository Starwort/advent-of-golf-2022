import sys
from importlib import import_module

for day in sys.argv[1:]:
    day = int(day)
    print(f"Day {day}:")
    with open(f"../inputs/{day}.in") as file:
        answer = import_module(f"day_{day:02}").solution(file.read())
    with open(f"../solutions/{day}/1.solution") as solution1, open(
        f"../solutions/{day}/2.solution"
    ) as solution2:
        real_answer = (solution1.read(), solution2.read())
    if (str(answer[0]), str(answer[1])) == real_answer:
        print(answer)
    else:
        print(f"Solution gave wrong answer {answer}! Correct answer: {real_answer}")
