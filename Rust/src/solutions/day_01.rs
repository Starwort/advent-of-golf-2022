use crate::into_answers::IntoAnswers;

#[rustfmt::skip]
pub fn solution(input: String) -> impl IntoAnswers {
    // Solution score:     151 vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    let solution = |i: String| {let mut y:Vec<i32>=i.split("\n\n").map(|g|g.split('\n').map(|i|->i32{i.parse().unwrap()}).sum()).collect();y.sort_by_key(|y|-y);(y[0],y[0]+y[1]+y[2])};
    solution(input)
}
