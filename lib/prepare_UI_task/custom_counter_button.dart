import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCounterButton extends StatefulWidget {
  int counter;
  CustomCounterButton({
    Key? key,
    required this.counter,
  }) : super(key: key);

  @override
  State<CustomCounterButton> createState() => _CustomCounterButtonState();
}

class _CustomCounterButtonState extends State<CustomCounterButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 75,
      margin: const EdgeInsets.only(bottom: 16, right: 16, left: 16, top: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 237, 242, 248),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (() => setState(() {
                    widget.counter == 0 ? null : widget.counter--;
                  })),
              child: widget.counter < 1
                  ? const Icon(null)
                  : const Icon(
                      Icons.remove_circle_sharp,
                      color: Color.fromARGB(255, 156, 149, 216),
                      size: 30.0,
                    ),
            ),
            Text(
              '${widget.counter}',
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 37, 15, 184)),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.counter++;
                });
              },
              child: const Icon(
                Icons.add_circle_sharp,
                color: Color.fromARGB(255, 156, 149, 216),
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
