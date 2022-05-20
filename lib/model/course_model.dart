class Course{

  final int id;
  final String teacher_name;
  final String starting_date;

  Course(
  {
    required this.id,
    required this.teacher_name,
    required this.starting_date
  }

);

  factory  Course.fromJson(Map<String, dynamic> json) {

    return Course(
        id: json['id'], teacher_name: json['teacher_name'], starting_date: json['starting_date']);
  }






}