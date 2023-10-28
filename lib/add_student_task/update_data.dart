// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:students_list/add_student_task/student_list.dart';
import 'create_student.dart';

class UpdateData extends StatefulWidget {
  const UpdateData({
    Key? key,
  }) : super(key: key);

  @override
  State<UpdateData> createState() => _UpdateDataState();
}

class _UpdateDataState extends State<UpdateData> {
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)!.settings.arguments as int;
    //TextEditingController updateIdController = TextEditingController();
    // TextEditingController updateNameController = TextEditingController();
    final updatNamecontroller =
        TextEditingController(text: studentLists[index].studentName);

    final updateIdController =
        TextEditingController(text: "${studentLists[index].id}");

    void updateStudentData() {
      final updateName = updatNamecontroller.text;
      final updateId = int.parse(updateIdController.text);
      if (updateName.isEmpty || updateId <= 0) {
        return;
      }

      studentLists[index].studentName = updateName;
      studentLists[index].id = updateId;
      setState(() {});
      Navigator.pop(context,
          MaterialPageRoute(builder: (context) => const StudentList()));
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Update Data')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: updatNamecontroller,
              keyboardType: TextInputType.name,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: studentLists[index].studentName,
                  hintText: 'Student Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: updateIdController,
              autofocus: false,

              //keyboardType: TextInputType.number,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: "Enter Id",
                  hintText: 'Enter Id'),
            ),
          ),
          ElevatedButton(
            child: const Text("Update Data"),
            onPressed: () {
              setState(() {
                updateStudentData();
              });
            },
          ),
        ],
      ),
    );
  }
}
