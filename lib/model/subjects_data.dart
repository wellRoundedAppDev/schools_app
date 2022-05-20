import 'package:flutter/cupertino.dart';
import 'package:school_app/api/subjects_api.dart';
import 'package:school_app/model/subject_model.dart';

class SubjectsData extends ChangeNotifier{

  List<Subject> subjects = [];
  int selectedSubjectId = 1;

  SubjectsData(){
    getSubjects();
  }

  Future<void> getSubjects() async{

    subjects = await SubjectApi.getSubjectsArray();
    notifyListeners();
  }

  void changeSubjectID(int id){
    selectedSubjectId = id;
    notifyListeners();
  }



  Subject getSelectedSubject(){

    return subjects[selectedSubjectId - 1];

  }

 // Future<List<String>> getSubjectNames() async{
 //
 //    List<Subject> subjects = await SubjectApi.getSubjectsArray();
 //    List<String> subjectNames = [];
 //    for(int i = 0; i < subjects.length; i++){
 //
 //      subjectNames.add(subjects[i].title);
 //    }
 //
 //    return subjectNames;
 // }

}