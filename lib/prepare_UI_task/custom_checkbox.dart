import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool isChecked;

  const CustomCheckbox({
    Key? key,
    required this.isChecked,
  }) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool isSelected = false;
  String checkText = "Unchecked";
  @override
  void initState() {
    // if(isSelected == false)
    if (widget.isChecked) {
      isSelected = true;
      checkText = "Checked";
    } else {
      isSelected = false;
      checkText = "Unchecked";
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            margin: const EdgeInsets.only(left: 30),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white : const Color(0xFFe5e7f0),
              borderRadius: BorderRadius.circular(10),
              border: isSelected
                  ? Border.all(width: 7.0, color: const Color(0xFF11069f))
                  : null,
            ),
            width: 50,
            height: 50,
            child: isSelected
                ? const Icon(
                    Icons.check_sharp,
                    color: Color(0xFF11069f),
                    size: 25,
                  )
                : null,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            isSelected ? "Checked" : "Unchecked",
            style: isSelected
                ? const TextStyle(
                    fontSize: 23,
                    color: Color.fromARGB(255, 37, 15, 184),
                    fontWeight: FontWeight.bold)
                : const TextStyle(
                    fontSize: 23,
                    color: Color(0xffa09cdb),
                    fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
