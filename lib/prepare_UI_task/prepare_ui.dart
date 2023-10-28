import 'package:flutter/material.dart';
import 'package:students_list/prepare_UI_task/animated_toggle.dart';
import 'package:students_list/prepare_UI_task/custom_checkbox.dart';
import 'package:students_list/prepare_UI_task/custom_counter_button.dart';
import 'package:students_list/prepare_UI_task/custom_dropdown.dart';
import 'package:students_list/prepare_UI_task/custom_radio.dart';

class PrepareUI extends StatefulWidget {
  const PrepareUI({super.key});
  @override
  State<PrepareUI> createState() => _PrepareUIState();
}

class _PrepareUIState extends State<PrepareUI> {
  String dropdownvalue = 'Dish Washing';
  String secondDropdownValue = "Door / Hood";

  bool hasCircleShape = true;
  bool status = false;
  bool istoggleSelected = true;

  var items = [
    'Dish Washing',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  var materials = [
    "Door / Hood",
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
  ];
  var pump1SizeList = [
    'ProFeed',
    'Item 2',
    'Item 3',
  ];
  var pump2SizeList = [
    'Large',
    'Item 2',
    'Item 3',
  ];
  var pump3SizeList = [
    'Large',
    'Item 2',
    'Item 3',
  ];
  var dispensingModeList = [
    'Conductivity',
    'Item 2',
    'Item 3',
  ];

  int _value = 1;
  bool val1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prepare"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Center(
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Prepare settings for upload",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                ),
              ),
            ),
            subHeadingName("Application"),

            CustomDropdown(dropdownList: items, dropdownName: "Dish Washing"),
            subHeadingName("Machine type"),

            CustomDropdown(
                dropdownList: materials, dropdownName: "Door / Hood"),

            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subHeadingName("Rinse flow rate"),
                  CustomCounterButton(
                    counter: 20,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Total Volume"),
                      CustomCounterButton(
                        counter: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Wash task volume"),
                      CustomCounterButton(
                        counter: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),

//  switch work start
            AnimatedToggle(
              isSwitchOn: true,
              values: const ['on', 'Off'],
              //  shadows: istoggleSelected ? darkMode.shadow : lightMode.shadow,
              onToggleCallback: (index) {
                istoggleSelected = !istoggleSelected;
                setState(() {});
              },
              toggleName: 'Fill valve',
            ),

            AnimatedToggle(
              isSwitchOn: false,
              values: const ['on', 'off'],
              //  shadows: istoggleSelected ? darkMode.shadow : lightMode.shadow,
              onToggleCallback: (index) {
                istoggleSelected = !istoggleSelected;
                setState(() {});
              },
              toggleName: 'Fill through Rinse',
            ),

//  switch work end

            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Min. wash temp"),
                      CustomCounterButton(
                        counter: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Max. wash temp"),
                      CustomCounterButton(
                        counter: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Min. rinse temp"),
                      CustomCounterButton(
                        counter: 105,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Max. rinse temp"),
                      CustomCounterButton(
                        counter: 65,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            headingName("Wash"),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Min. wash temp"),
                      CustomCounterButton(
                        counter: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Max. wash temp"),
                      CustomCounterButton(
                        counter: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            headingName("Rinse"),

            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Min. rinse temp"),
                      CustomCounterButton(
                        counter: 105,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Max. rinse temp"),
                      CustomCounterButton(
                        counter: 65,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            subHeadingName("Number of chemicals"),

            CustomCounterButton(
              counter: 3,
            ),

            headingName("Pump 1"),
            subHeadingName("Pump size"),
            CustomDropdown(
                dropdownList: pump1SizeList, dropdownName: "ProFeed"),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Calibration"),
                      CustomCounterButton(
                        counter: 100,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Tube life"),
                      CustomCounterButton(
                        counter: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            headingName("Pump 2"),
            subHeadingName("Pump size"),
            CustomDropdown(dropdownList: pump2SizeList, dropdownName: "Large"),

            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Calibration"),
                      CustomCounterButton(
                        counter: 100,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Tube life"),
                      CustomCounterButton(
                        counter: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            headingName("Pump 3"),
            subHeadingName("Pump size"),
            CustomDropdown(dropdownList: pump3SizeList, dropdownName: "Large"),

            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Calibration"),
                      CustomCounterButton(
                        counter: 100,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Tube life"),
                      CustomCounterButton(
                        counter: 100,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            subHeadingName("Dispensing mode"),
            CustomDropdown(
                dropdownList: dispensingModeList, dropdownName: "Conductivity"),

            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Alarm volume"),
                      CustomCounterButton(
                        counter: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Long feed alarm"),
                      CustomCounterButton(
                        counter: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            subHeadingName("Conductivity set point"),

            CustomCounterButton(
              counter: 30,
            ),
            subHeadingName("Detergent pump speed"),
            CustomCounterButton(
              counter: 99,
            ),

            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Rinse delay"),
                      CustomCounterButton(
                        counter: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Rinse pump speed"),
                      CustomCounterButton(
                        counter: 99,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subHeadingName("Rinse run time"),
                  CustomCounterButton(
                    counter: 50,
                  ),
                ],
              ),
            ),

            headingName("Calibration settings"),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Pump 1"),
                      CustomCounterButton(
                        counter: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subHeadingName("Pump 2"),
                      CustomCounterButton(
                        counter: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  subHeadingName("Pump 3"),
                  CustomCounterButton(
                    counter: 30,
                  ),
                ],
              ),
            ),
            headingName("Pump 1 on with"),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  const Text(
                    "Detergent",
                    style: TextStyle(fontSize: 20, color: Color(0xFF148f79)),
                  ),
                  AnimatedToggle(
                    isSwitchOn: true,
                    values: const ['on', 'Off'],
                    onToggleCallback: (index) {
                      istoggleSelected = !istoggleSelected;
                      setState(() {});
                    },
                    toggleName: 'Rinse',
                  ),
                ],
              ),
            ),

            headingName("Radials"),
            subHeadingName("Pump 3 on with"),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CustomRadio(
                    value: 1,
                    groupValue: _value,
                    onChanged: (int? value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                    radialName: 'Rinse',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CustomRadio(
                    value: 2,
                    groupValue: _value,
                    onChanged: (int? value) {
                      setState(() {
                        _value = value!;
                      });
                    },
                    radialName: 'Detergent',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            headingName("Checkboxes"),
            subHeadingName("Label or questions for the list"),
            const SizedBox(
              height: 20,
            ),
            const CustomCheckbox(
              isChecked: true,
            ),

            const CustomCheckbox(
              isChecked: false,
            ),

            const CustomCheckbox(
              isChecked: true,
            ),

            const CustomCheckbox(
              isChecked: false,
            ),
            const CustomCheckbox(
              isChecked: false,
            ),
            const SizedBox(
              height: 300,
            ),
          ],
        ),
      ),
    );
  }

  Widget headingName(String headingText) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            headingText,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        const Expanded(
            child: Divider(
          indent: 20.0,
          endIndent: 10.0,
          thickness: 1,
        )),
      ]),
    );
  }

  Widget subHeadingName(String subHeadingText) {
    return Container(
      margin: const EdgeInsets.only(
        left: 30,
      ),
      child: Text(
        subHeadingText,
        style: const TextStyle(
          fontSize: 18,
          color: Color(0xff7c7c7c),
        ),
      ),
    );
  }
}
