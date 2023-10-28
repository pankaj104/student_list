import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  final int value;
  final int groupValue;
  final void Function(int) onChanged;
  final String radialName;
  const CustomRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.radialName,
  }) : super(key: key);

  @override
  CustomRadioState createState() => CustomRadioState();
}

class CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () => widget.onChanged(widget.value),
            child: Container(
              decoration: BoxDecoration(
                color: selected
                    ? const Color.fromARGB(255, 37, 15, 184)
                    : const Color.fromARGB(255, 226, 224, 234),
                border: selected
                    ? null
                    : Border.all(
                        color: const Color.fromARGB(255, 226, 224, 234),
                        // width: 2.0,
                      ),
                shape: BoxShape.circle,
              ),
              width: 50,
              height: 50,
              child: selected
                  ? const Icon(
                      Icons.circle_rounded,
                      size: 30,
                      color: Colors.white,
                    )
                  : null,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            widget.radialName,
            style: selected
                ? const TextStyle(
                    fontSize: 22,
                    color: Color.fromARGB(255, 37, 15, 184),
                    fontWeight: FontWeight.bold)
                : const TextStyle(
                    fontSize: 22,
                    color: Color(0xffa09cdb),
                    fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
