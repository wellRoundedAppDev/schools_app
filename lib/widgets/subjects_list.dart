import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/subjects_data.dart';

class SubjectsList extends StatelessWidget {
  const SubjectsList({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var isWeb = kIsWeb;

    return Container(
      height: (!isWeb)?MediaQuery.of(context).size.height / 20:MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: (!isWeb)?Axis.horizontal:Axis.vertical,
          itemBuilder: (context, index) {
            final subjectID =
                Provider.of<SubjectsData>(context).subjects[index].id;
            final subjectName =
                Provider.of<SubjectsData>(context).subjects[index].title;
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 10,),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<SubjectsData>(context, listen: false)
                      .changeSubjectID(subjectID);
                },
                child: Text(subjectName),
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: (subjectID ==
                        Provider.of<SubjectsData>(context)
                            .selectedSubjectId)
                        ? Color(0xFF0557E7)
                        : Colors.white,
                    onPrimary: (subjectID ==
                        Provider.of<SubjectsData>(context)
                            .selectedSubjectId)
                        ? Colors.white
                        : Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            );
          },
          itemCount: Provider.of<SubjectsData>(context).subjects.length),
    );
  }
}