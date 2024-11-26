import 'package:flutter/material.dart';
import 'db_helper.dart';
import 'student_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQLite Biodata Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const StudentListPage(),
    );
  }
}

class StudentListPage extends StatefulWidget {
  const StudentListPage({super.key});

  @override
  State<StudentListPage> createState() => _StudentListPageState();
}

class _StudentListPageState extends State<StudentListPage> {
  final DBHelper dbHelper = DBHelper();
  List<Student> students = [];

  @override
  void initState() {
    super.initState();
    _loadStudents();
  }

  void _loadStudents() async {
    final data = await dbHelper.getAllStudents();
    setState(() {
      students = data;
    });
  }

  void _addStudent(Student student) async {
    await dbHelper.insertStudent(student);
    _loadStudents();
  }

  void _showAddStudentDialog() {
    final nameController = TextEditingController();
    final nimController = TextEditingController();
    final addressController = TextEditingController();
    final hobbyController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Tambah Biodata Mahasiswa'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nama'),
              ),
              TextField(
                controller: nimController,
                decoration: const InputDecoration(labelText: 'NIM'),
              ),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(labelText: 'Alamat'),
              ),
              TextField(
                controller: hobbyController,
                decoration: const InputDecoration(labelText: 'Hobi'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                final newStudent = Student(
                  name: nameController.text,
                  nim: nimController.text,
                  address: addressController.text,
                  hobby: hobbyController.text,
                );
                _addStudent(newStudent);
                Navigator.of(context).pop();
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLite Biodata Mahasiswa'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            title: Text(student.name),
            subtitle: Text('NIM: ${student.nim}\nAlamat: ${student.address}\nHobi: ${student.hobby}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddStudentDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
