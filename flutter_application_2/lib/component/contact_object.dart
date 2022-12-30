class Level{
  final int id;
  final List<Querry> question;
  Level(
    {
      required this.id,
      required this.question
    }
  );
  factory Level.fromJson(Map<String, dynamic> json) => Level(
        id: json["id"],
        question: List<Querry>.from(json["question"].map((e) => Querry.fromJson(e))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "question": List<dynamic>.from(question.map((e) => e.toJson())),
    };
}
class Querry {
    Querry({
        required this.id,
        required this.title,
        required this.answers,
    });

    final int id;
    final String title;
    final List<Answer> answers;

    factory Querry.fromJson(Map<String, dynamic> json) => Querry(
        id: json["id"],
        title: json["title"],
        answers: List<Answer>.from(json["answers"].map((e) => Answer.fromJson(e))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "answers": List<dynamic>.from(answers.map((e) => e.toJson())),
    };
}
class Answer {
    Answer({
        required this.answerText,
        required this.score,
    });

    final String answerText;
    final bool score;

    factory Answer.fromJson(Map<String, dynamic> json) => Answer(
        answerText: json["answerText"],
        score: json["score"],
    );

    Map<String, dynamic> toJson() => {
        "answerText": answerText,
        "score": score,
    };
}