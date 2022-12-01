use crate::into_answers::IntoAnswers;

#[rustfmt::skip]
pub fn solution(input: String) -> impl IntoAnswers {
    // Solution score:     147 vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    let solution = |i: String| {let mut y:Vec<i32>=i.split("\n\n").map(|g|g.lines().map(|x|x.parse::<i32>().unwrap()).sum()).collect();y.sort_by_key(|y|-y);(y[0],y[0]+y[1]+y[2])};
    solution(input)
}
