import 'package:flutter/material.dart';
import 'Student.dart';

List<Student> studentLists = [];

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  SecondScreenState createState() {
    return SecondScreenState();
  }
}

class SecondScreenState extends State<SecondScreen> {
  TextEditingController tfStudentController = TextEditingController();
  TextEditingController tfIdController = TextEditingController();

  void submitData() {
    final enteredID = int.parse(tfIdController.text);
    final enteredName = tfStudentController.text;
    if (enteredName.isEmpty || enteredID <= 0) {
      return;
    }
    Student student = Student(id: enteredID, studentName: enteredName);
    studentLists.add(student);
    setState(() {});
    Navigator.of(context).pop();
  }

  List studentList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Student')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: tfStudentController,
                onChanged: (text) => {},
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),

                    // labelText: 'Student Name',
                    hintText: 'Student Name'),

                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Name can't be empty";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: tfIdController,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),

                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Student Id',
                    hintText: 'Enter Id'),

                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Id can't be empty";
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
              child: const Text(
                'Add Student',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                submitData();
              },
            )
          ],
        ),
      ),
    );
  }
}
