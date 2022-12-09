for i = 1, select('#', ...) do
    local day = tonumber(arg[i])
    local suc, res = pcall(require, ("day_%02d.code1"):format(day))
    if not suc then
        print(res)
        goto finn
    end
    local input, msg, ret = io.open(("../inputs/%d.in"):format(day), "r")
    if not input then
        print(("[opening input, exit code %d]: %s"):format(ret, msg))
        goto finn
    end
    local outputPath = ("../solutions/%d/"):format(day)
    local outputFile1, outputFile2
    outputFile1, msg, ret = io.open(outputPath .. "1.solution", "r")
    if not outputFile1 then
        print(("[opening Part 1 solution, exit code %d]: %s"):format(ret, msg))
        goto finn
    end
    outputFile2, msg, ret = io.open(outputPath .. "2.solution", "r")
    if not outputFile2 then
        print(("[opening Part 2 solution, exit code %d]: %s"):format(ret, msg))
        goto finn
    end
    local part1, part2 = outputFile1:read"*a", outputFile2:read"*a"
    local output1, output2 = res(input:read"*a")
    output1 = tostring(output1)
    if output1 ~= part1 then
        print(("Part 1 failed!\nExpected: %s\nGot: %s"):format(part1, output1))
        goto finn
    else
        print("Part 1 succeeded!")
    end
    output2 = tostring(output2)
    if output2 ~= part2 then
        print(("Part 2 failed!\nExpected: %s\nGot: %s"):format(part2, output2))
    else
        print("Part 2 succeeded!")
    end
    ::finn::
end
