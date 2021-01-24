import 'package:flutter/material.dart';
import 'constants.dart';

class Reusablecard extends StatelessWidget {
  Reusablecard({this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: Colors.grey[100],
        child: ListTile(
          title: Text(
            text,
            style: kTextStyle,
          ),
          trailing: Icon(Icons.play_arrow),
        ));
  }
}
