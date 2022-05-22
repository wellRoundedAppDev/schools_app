import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_app/model/subjects_data.dart';
import 'package:school_app/widgets/courses_list.dart';
import 'package:school_app/widgets/subjects_list.dart';
import 'package:flutter/foundation.dart';

import '../model/subject_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var isWeb = kIsWeb;
  @override
  Widget build(BuildContext context) {
    return (Provider.of<SubjectsData>(context).subjects.length != 0)?RefreshIndicator(onRefresh:() async { await Provider.of<SubjectsData>(context,listen: false).getSubjects();},
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            backgroundColor: Color(0xFF0557E7),
            title: Container(margin:EdgeInsets.only(bottom: 20),height: 100,child: Align(alignment:Alignment.bottomLeft,child: Text("Classes and Groups",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)))),
            toolbarHeight: 100,
            shape: ContinuousRectangleBorder(
                borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
            )),
            centerTitle: false),
        body: (!isWeb)?Column(

        children: [
          SubjectsList(),
          SizedBox(height: 20),
          Expanded(
              child: CoursesList()
          )

        ],
          ):Row(children: [
          Expanded(child: SubjectsList()),
          SizedBox(width: 20),
          Expanded(
              child: CoursesList()
          )
        ],),
      ),
    ):Container(color:Colors.white,child: Center(child: CircularProgressIndicator(),));
  }
}
