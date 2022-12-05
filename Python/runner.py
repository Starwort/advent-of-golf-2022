import sys
from importlib import import_module
from io import BytesIO, StringIO
from unittest.mock import patch


# unittest.mock.mock_open doesn't work with binary mode open
def mock_open(data: str):
    def _open(_0, mode="r"):
        if mode == "rb":
            return BytesIO(data.encode("utf-8"))
        else:
            return StringIO(data)

    return _open


for day in sys.argv[1:]:
    day = int(day)
    print(f"Day {day}:")
    with open(f"../inputs/{day}.in") as file:
        input = file.read()
    with open(f"../solutions/{day}/1.solution") as solution1, open(
        f"../solutions/{day}/2.solution"
    ) as solution2:
        real_answer = (solution1.read(), solution2.read())
    with patch("builtins.open", mock_open(input)), patch(
        "sys.stdout", new_callable=StringIO
    ) as fake_out:
        import_module(f"day_{day:02d}")
        answer = fake_out.getvalue().split()
    if (answer[0], answer[1]) == real_answer:
        print(answer[0], answer[1])
    else:
        print(
            f"Solution gave wrong answer {answer[0]}, {answer[1]}! Correct answer:"
            f" {real_answer}"
        )
