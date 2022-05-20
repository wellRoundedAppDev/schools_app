import 'package:school_app/model/course_model.dart';

class Subject {
  final int id;
  final String title;
  final List<Course> courses;

  Subject({required this.id, required this.title, required this.courses});

  factory Subject.fromJson(Map<String, dynamic> json) {
    List<Course> courses = json['courses']
        .map<Course>((course) => Course.fromJson(course))
        .toList();
    return Subject(
        id: json['id'], title: json['title'], courses: courses);
  }
}
