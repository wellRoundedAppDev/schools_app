import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:school_app/model/subject_model.dart';

class SubjectApi{

  // static Future<Subject> fetchSubject(int subjectID) async{
  //
  //   List<Subject> subjects = await getSubjectsArray();
  //
  //   return subjects[subjectID - 1];
  //
  // }

  static Future<List<Subject>> getSubjectsArray() async {

      String data = await rootBundle.loadString('assets/subjects.json');
      var jsonResult = json.decode(data);
      List<Subject> list = jsonResult
          .map<Subject>((subject) => Subject.fromJson(subject))
          .toList();
      return list;
  }

  }





