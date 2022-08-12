// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pics/src/models/image_model.dart';

class BuildList extends StatelessWidget {
  final List itemToList;

  BuildList(this.itemToList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemToList.length,
        itemBuilder: (context, int index) {
          return _buildItem(itemToList[index]);
        });
  }

  Widget _buildItem(item) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Image.network(item.url),
            ),
            Text(item.title),
          ],
        ));
  }
}
