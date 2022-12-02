for arg in ARGV
    arg = arg.to_i
    str_arg = "0#{arg}"[-2..]
    require_relative "day_#{str_arg}.rb"
    infile = File.open("../inputs/#{arg}.in")
    input = infile.read
    infile.close
    infile = File.open("../solutions/#{arg}/1.solution")
    real_answer1 = infile.read
    infile.close
    infile = File.open("../solutions/#{arg}/2.solution")
    real_answer2 = infile.read
    infile.close
    answer1, answer2 = $solution.call(input)
    if "#{answer1}" === real_answer1 && "#{answer2}" === real_answer2
        puts "(#{answer1}, #{answer2})"
    else
        puts "Solution gave wrong answer (#{answer1}, #{answer2})! Correct answer: (#{real_answer1}, #{real_answer2})"
    end
end