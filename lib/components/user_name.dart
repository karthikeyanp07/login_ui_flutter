import 'package:flutter/material.dart';

import '../constant.dart';

Widget getUserNameField()
{
  return Container(
    margin: EdgeInsets.only(top: 30),
    height: 60,
    padding: EdgeInsets.only(left: padding, right: padding),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 3)
        ]),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter your mailId",
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
            ),
          ),
        ),
        Icon(
          Icons.done,
          color: Colors.pink,
        )
      ],
    ),
  );
}
