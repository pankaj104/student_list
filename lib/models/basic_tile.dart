// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BasicTile {
  final String title;
  final Color tileColor;
  final List<BasicTile> tiles;

  const BasicTile({
    required this.title,
    required this.tileColor,
    this.tiles = const [],
  });
}

final basicTiles = <BasicTile>[
  const BasicTile(
      title: 'Wipro',
      tiles: [
        BasicTile(
          title: 'Employee',
          tileColor: Color.fromARGB(255, 221, 224, 226),
          tiles: [
            BasicTile(title: 'Pankaj', tileColor: Colors.white),
            BasicTile(title: 'Pankaj', tileColor: Colors.white),
          ],
        ),
      ],
      tileColor: Color.fromARGB(255, 221, 224, 226)),
  const BasicTile(
    title: 'Wipro Office',
    tiles: [
      BasicTile(title: 'Bangaluru', tileColor: Colors.white),
      BasicTile(title: 'Delhi', tileColor: Colors.white),
      BasicTile(title: 'Kolkata', tileColor: Colors.white),
      BasicTile(title: 'Chennai', tileColor: Colors.white),
    ],
    tileColor: Color.fromARGB(255, 245, 148, 141),
  ),
  const BasicTile(
    title: 'Wipro Job',
    tiles: [
      BasicTile(title: 'Software', tileColor: Colors.white),
      BasicTile(title: 'Testing', tileColor: Colors.white),
      BasicTile(title: 'Technical lead', tileColor: Colors.white),
      BasicTile(title: 'Manager', tileColor: Colors.white),
    ],
    tileColor: Color.fromARGB(255, 226, 157, 238),
  ),
];
