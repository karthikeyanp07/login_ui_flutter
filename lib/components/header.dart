import 'package:flutter/material.dart';

Widget getHeader(String header)
{
  return Container(
    margin: EdgeInsets.only(top: 50),
    child: Text(
      header,
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
    ),
  );
}
