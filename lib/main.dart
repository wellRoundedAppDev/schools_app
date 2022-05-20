import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:school_app/model/subjects_data.dart';
import 'package:school_app/screens/home_screen.dart';
import 'screens/home_page.dart';
import 'package:provider/provider.dart';
>>>>>>> d2d7876 (2)

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
=======
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return SubjectsData();
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
>>>>>>> d2d7876 (2)
    );
  }
}


