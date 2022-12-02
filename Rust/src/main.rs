#![allow(unused_variables)]
mod solutions;
use into_answers::IntoAnswers;
#[allow(clippy::wildcard_imports)]
use solutions::*;
pub mod into_answers;

use std::env::args;
use std::fs;

fn load_inputs_and_answers(day: &str) -> (String, (String, String)) {
    let input = fs::read_to_string(format!("../inputs/{day}.in")).unwrap();
    let solution1 =
        fs::read_to_string(format!("../solutions/{day}/1.solution")).unwrap();
    let solution2 =
        fs::read_to_string(format!("../solutions/{day}/2.solution")).unwrap();
    (input, (solution1, solution2))
}

fn main() {
    for arg in args().skip(1) {
        let (real_answer, answer) = match &*arg {
            "1" => {
                let (input, real_answer) = load_inputs_and_answers(&arg);
                (real_answer, day_01::solution(input).into_answers())
            },
            "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "10" | "11" | "12"
            | "13" | "14" | "15" | "16" | "17" | "18" | "19" | "20" | "21" | "22"
            | "23" | "24" | "25" => {
                println!("Day {arg} has not yet been solved.");
                continue;
            },
            day => {
                eprintln!("{day} is not a valid day.");
                continue;
            },
        };
        if real_answer == answer {
            println!("({}, {})", answer.0, answer.1);
        } else {
            println!(
                "Program gave wrong answer ({}, {})! Correct answer: ({}, {})",
                answer.0, answer.1, real_answer.0, real_answer.1
            );
        }
    }
}
