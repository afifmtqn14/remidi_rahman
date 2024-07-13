import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Student> students = [
    Student(name: 'AMIN SUPONO', nim: 202102384),
    Student(name: 'ESA PRAYOGA ISNANDAR', nim: 202102381),
    Student(name: 'DANANG FIA ADIANTORO', nim: 202102379),
    Student(name: 'LAELY FABILAH MIZALUNA', nim: 202102375),
    Student(name: 'GHAZA GIMANASTIAR', nim: 202102370),
    Student(name: 'RAHMAN RAMADANI', nim: 202102385),
    Student(name: 'DESTA MUTIARA KARDIANSYAH', nim: 202102389),
    Student(name: 'AWAN RESTU LISTIANTO', nim: 202102395),
    Student(name: 'AGUS PRIANTO', nim: 202102397),
    Student(name: 'FEBIANTO', nim: 20210399),
    Student(name: 'SRI MULYANINGSIH', nim: 202102401),
  ];

  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 20),
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(20),
              width: 300, // Set width to align boxes to center
              decoration: BoxDecoration(
                color: colors[index % colors.length],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // Align text to center
                children: [
                  Text(
                    student.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10), // Spacing between name and nim
                  Text(
                    'NIM: ${student.nim}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class Student {
  final String name;
  final int nim;

  Student({required this.name, required this.nim});
}