# Rules for J submissions

- Solutions should be one-file programs.
- Solutions should take input, without trailing newlines, from stdin.
- Solutions should print two answers separated by whitespace (`' '` or `'\n'`) to stdout.
- Solutions should not provide unrelated output (e.g. logging, spurious blank lines).

Run a given day's solution as `./runner.sh <day_number>`.

## Notes
`runner.sh` does not make assumptions about your method of invoking a J interpreter. You must edit `runner.sh` to point `$J_COMMAND` towards your J binary of choice for it to be able to run your code.
