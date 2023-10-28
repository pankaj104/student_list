import 'package:flutter/material.dart';
import 'package:students_list/details_page.dart';
import 'package:students_list/models/basic_tile.dart';

class ExpandableList extends StatefulWidget {
  const ExpandableList({super.key});

  @override
  State<ExpandableList> createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expand List"),
      ),
      body: ListView(
        children: basicTiles.map(buildTile).toList(),
      ),
    );
  }

  Widget buildTile(BasicTile tile, {double leftPadding = 16}) {
    if (tile.tiles.isEmpty) {
      return Container(
        decoration: BoxDecoration(
          color: tile.tileColor,
        ),
        child: ListTile(
          contentPadding: EdgeInsets.only(left: leftPadding),
          title: Text(tile.title),
          minVerticalPadding: 10,
          onTap: (() => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsPage(tile: tile)))),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          color: tile.tileColor,

          // border: const Border(
          //   bottom: BorderSide(color: Colors.purple),
          // ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ExpansionTile(
            tilePadding: EdgeInsets.only(left: leftPadding),
            title: Text(
              tile.title,
            ),
            leading: const Icon(Icons.run_circle),
            children: tile.tiles
                .map((tile) => buildTile(tile, leftPadding: 16 + leftPadding))
                .toList(),
          ),
        ),
      );
    }
  }
}
