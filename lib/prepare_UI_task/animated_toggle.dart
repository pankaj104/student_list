import 'package:flutter/material.dart';

class AnimatedToggle extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;
  final Color buttonColor;
  final Color textColor;
  final List<BoxShadow> shadows;
  final bool isSwitchOn;
  final String toggleName;

  const AnimatedToggle({
    super.key,
    required this.values,
    required this.onToggleCallback,
    this.buttonColor = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xFF000000),
    this.shadows = const [
      BoxShadow(
        color: Color.fromARGB(255, 212, 129, 131),
        spreadRadius: 1,
        blurRadius: 2,
        offset: Offset(2, 2),
      ),
    ],
    required this.isSwitchOn,
    required this.toggleName,
  });
  @override
  AnimatedToggleState createState() => AnimatedToggleState();
}

class AnimatedToggleState extends State<AnimatedToggle> {
  bool isSwitchSelected = false;

  @override
  void initState() {
    if (widget.isSwitchOn) {
      isSwitchSelected = false;
    } else {
      isSwitchSelected = true;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 90,
          height: 100,
          margin: const EdgeInsets.all(20),
          decoration: isSwitchSelected
              ? BoxDecoration(
                  color: const Color(0xFFe5e7f0),
                  borderRadius: BorderRadius.circular(10),
                )
              : BoxDecoration(
                  color: const Color(
                    0xFF148f79,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
          child: Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  // setState(() {
                  //   isSwitchSelected = !isSwitchSelected;
                  // }
                  // );
                  isSwitchSelected = !isSwitchSelected;
                  var index = 0;
                  if (!isSwitchSelected) {
                    index = 1;
                  }
                  setState(() {
                    widget.onToggleCallback(index);
                  });
                },
                child: Container(
                  width: 70,
                  height: 120,
                  decoration: ShapeDecoration(
                    // color: widget.backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              AnimatedAlign(
                duration: const Duration(milliseconds: 250),
                curve: Curves.decelerate,
                alignment: isSwitchSelected
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 35,
                    height: 90,
                    decoration: ShapeDecoration(
                      color: widget.buttonColor,
                      shadows: widget.shadows,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          widget.toggleName,
          style: isSwitchSelected
              ? const TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 106, 140, 134))
              : const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF148f79),
                ),
        ),
      ],
    );
  }
}
