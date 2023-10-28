import 'package:flutter/material.dart';
import 'package:students_list/add_student_task/create_student.dart';
import 'package:students_list/add_student_task/update_data.dart';

class StudentList extends StatefulWidget {
  const StudentList({super.key});

  @override
  StudentListState createState() {
    return StudentListState();
  }
}

class StudentListState extends State<StudentList> {
  String text = 'Text';
  int t = 2;
  final List id = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student List'),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () async {
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
                setState(() {});
              })
        ],
      ),
      body: ListView.builder(
        itemCount: studentLists.length,
        itemBuilder: ((context, index) {
          return ListTile(
            tileColor: const Color.fromARGB(255, 224, 229, 229),
            leading: Text("${studentLists[index].id}"),
            title: Text(studentLists[index].studentName),
            trailing: IconButton(
              onPressed: (() {
                studentLists.removeWhere((element) {
                  return element.id == studentLists[index].id;
                });
                setState(() {});
              }),
              icon: const Icon(Icons.delete),
            ),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UpdateData(),
                    settings: RouteSettings(arguments: index)),
              );
              setState(() {});
            },
          );
        }),
      ),
    );
  }
}
