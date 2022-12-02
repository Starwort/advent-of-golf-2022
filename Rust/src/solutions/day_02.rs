use crate::into_answers::IntoAnswers;

#[rustfmt::skip]
pub fn solution(input: String) -> impl IntoAnswers {
  // Solution score:     222 vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
  let solution = |i: String| {let y=i.lines().map(|x|{let mut v=x.chars();let a=v.next().unwrap() as i32-65;v.next();(a,v.next().unwrap() as i32-88)});(y.clone().map(|(a,b)|((b-a+4)%3)*3+b+1).sum::<i32>(), y.map(|(a,b)| (a+b+2)%3+1+b*3).sum::<i32>())};
  solution(input)
}
