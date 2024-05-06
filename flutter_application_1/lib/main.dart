import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hallo World App',
      home: StudentList(),
    );
  }
}

class Student {
  final String name;
  final String nim;

  Student(this.name, this.nim);
}

class StudentList extends StatelessWidget {
  final List<Student> students = [
    Student("LINDA SENJAANGGRAENI ", "NIM. STI202102433"),
    Student("YEZA YOFANKA", "NIM. STI202102443"),
    Student("DWI SEPTI LUTFIANA", "NIM.STI202102449"),
    Student("NANDA WIASTI", "NIM.STI202102461"),
    Student("ADHITYA PRAMUDITA RAMADHAN", "NIM.STI202102470"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hallo World"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: students.map((student) {
            int index = students.indexOf(student);

            return Container(
              color: index == 2 ? Colors.green : Colors.transparent,
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    student.name,
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    student.nim,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}