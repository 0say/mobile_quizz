
import 'dart:convert';

Question questionFromJson(String str) => Question.fromJson(json.decode(str));

String questionToJson(Question data) => json.encode(data.toJson());

class Question {
  String question;
  bool answer;

  Question({
    required this.question,
    required this.answer,
  });

  factory Question.fromJson(Map<String, dynamic> json) => Question(
    question: json["question"],
    answer: json["answer"],
  );

  Map<String, dynamic> toJson() => {
    "question": question,
    "answer": answer,
  };
}
