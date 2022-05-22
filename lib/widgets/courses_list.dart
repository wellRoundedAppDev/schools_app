import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/subjects_data.dart';

class CoursesList extends StatelessWidget {
  CoursesList({Key? key}) : super(key: key);

  var isWeb = kIsWeb;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(child: Text("List of courses")),
        Container(color: Colors.grey[200], height: 5),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final teacherName = Provider.of<SubjectsData>(context)
                  .getSelectedSubject()
                  .courses[index]
                  .teacher_name;
              final startingDate = Provider.of<SubjectsData>(context)
                  .getSelectedSubject()
                  .courses[index]
                  .starting_date;
              return Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: ListTile(
                      tileColor: Colors.white,
                      leading: Icon(Icons.school),
                      title: Text(teacherName),
                      subtitle: Text(startingDate)));
            },
            itemCount: Provider.of<SubjectsData>(context)
                .getSelectedSubject()
                .courses
                .length,
          ),
        )
      ]),
    );
  }
}
