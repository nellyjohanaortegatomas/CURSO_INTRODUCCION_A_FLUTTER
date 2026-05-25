/*{
  "class": "XII",
  "subjects": [ "Physics", "Chemistry", "Maths" ]
  }*/

class Student {
  String standard;
  List<String> subjects;

  Student({required this.standard, required this.subjects});

  factory Student.fromJson(Map<String, dynamic> json) {
    var subjectsFromJson = json['subjects'];
    List<String> subjectsList = List<String>.from(subjectsFromJson);
    return Student(
      standard: json['class'],
      subjects: subjectsList,
    );
  }
}
