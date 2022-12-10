import sys
from importlib import import_module
from io import BytesIO, StringIO
from itertools import zip_longest
from unittest.mock import patch


# code inlined from aoc_helper
def encode_letter(dots):
    out = 0
    for y, row in enumerate(dots):
        for x, dot in enumerate(row):
            if dot:
                out |= 1 << (x + 4 * y)
    return out


LETTERS = {
    0: " ",
    10090902: "A",
    7968663: "B",
    6885782: "C",
    15800095: "E",
    1120031: "F",
    15323542: "G",
    10067865: "H",
    14959694: "I",
    6916236: "J",
    9786201: "K",
    15798545: "L",
    6920598: "O",
    1145239: "P",
    9795991: "R",
    7889182: "S",
    6920601: "U",
    15803535: "Z",
}


def decode_text(dots):
    broken_rows = [
        list(zip_longest(*([iter(row)] * 5), fillvalue=False)) for row in dots
    ]
    letters = list(zip(*broken_rows))
    return "".join(LETTERS.get(encode_letter(letter), "?") for letter in letters)


def row_to_bools(row):
    return [c == "#" for c in row]


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
    ) as fake_out, patch("sys.stderr", new_callable=StringIO) as fake_err:
        import_module(f"day_{day:02d}")
        answer = fake_out.getvalue().split()

    def wa():
        print(
            f"Solution gave wrong answer {answer[0]}, {answer[1]}! Correct answer:"
            f" {real_answer}"
        )
        print("Solution output:", fake_out.getvalue())
        print("Solution errors:", fake_err.getvalue())

    if (answer[0], answer[1]) == real_answer:
        print(answer[0], answer[1])
    elif answer[0] == real_answer[0]:
        text = decode_text([row_to_bools(row) for row in answer[1:]])
        if text == real_answer[1]:
            print(answer[0], text)
        elif "?" not in text:
            print(
                f"Solution gave wrong answer {answer[0]}, {text}! Correct answer:"
                f" {real_answer[0]}, {real_answer[1]}"
            )
        else:
            wa()
    elif answer[-1] == real_answer[1]:
        text = decode_text([row_to_bools(row) for row in answer[:-1]])
        if text == real_answer[0]:
            print(text, answer[-1])
        elif "?" not in text:
            print(
                f"Solution gave wrong answer {text}, {answer[-1]}! Correct answer:"
                f" {real_answer[0]}, {real_answer[1]}"
            )
        else:
            wa()
    else:
        text_a = decode_text([row_to_bools(row) for row in answer[: len(answer) // 2]])
        text_b = decode_text([row_to_bools(row) for row in answer[len(answer) // 2 :]])
        if (text_a, text_b) == real_answer:
            print(text_a, text_b)
        elif "?" not in text_a and "?" not in text_b:
            print(
                f"Solution gave wrong answer {text_a}, {text_b}! Correct answer:"
                f" {real_answer[0]}, {real_answer[1]}"
            )
        else:
            wa()
