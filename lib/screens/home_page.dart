import 'package:flutter/material.dart';
import 'package:school_app/api/subjects_api.dart';
import 'package:school_app/model/subject_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //printS();

  }
  
  // void printS() async{
  //   Subject subject = await SubjectApi.fetchSubject(5);
  //   print(subject.courses[1]);
  // }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Classes and Groups"),
        ),
      ),
    );
  }

}
