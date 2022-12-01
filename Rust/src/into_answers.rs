pub trait IntoAnswers {
    fn into_answers(self) -> (String, String);
}

impl<T: ToString, U: ToString> IntoAnswers for (T, U) {
    fn into_answers(self) -> (String, String) {
        (self.0.to_string(), self.1.to_string())
    }
}
impl<T: ToString> IntoAnswers for [T; 2] {
    fn into_answers(self) -> (String, String) {
        (self[0].to_string(), self[0].to_string())
    }
}
impl<T: ToString> IntoAnswers for Vec<T> {
    fn into_answers(self) -> (String, String) {
        assert_eq!(
            self.len(),
            2,
            "A vector of length {} is not a valid solution!",
            self.len(),
        );
        (self[0].to_string(), self[0].to_string())
    }
}
