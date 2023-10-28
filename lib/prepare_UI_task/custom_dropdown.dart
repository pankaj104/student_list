import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropdown extends StatefulWidget {
  List<String> dropdownList;
  String dropdownName;
  CustomDropdown({
    Key? key,
    required this.dropdownList,
    required this.dropdownName,
  }) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 237, 242, 248),
          // border: Border.all(color: Colors.grey, width: 0),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            iconEnabledColor: const Color.fromARGB(255, 96, 94, 94),
            isExpanded: true,
            iconSize: 36,
            style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff11069f)),
            value: widget.dropdownName,
            icon: const Icon(
              Icons.arrow_drop_down_rounded,
              size: 50,
              color: Color.fromARGB(255, 158, 157, 222),
            ),
            items: widget.dropdownList.map((String work) {
              return DropdownMenuItem(
                value: work,
                child: Text(work),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                widget.dropdownName = newValue!;
              });
            }),
      ),
    );
  }
}
