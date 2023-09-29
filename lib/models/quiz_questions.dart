class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // make a copy of a list and shuffle it
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}