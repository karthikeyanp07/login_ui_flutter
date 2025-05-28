import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget getSocialNetworkLoginWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 40),
        child: CircleAvatar(
          backgroundColor: Colors.blue,
          child: FaIcon(
            FontAwesomeIcons.facebookF,
            color: Colors.white,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 40),
        child: CircleAvatar(
          backgroundColor: Colors.red,
          child: FaIcon(
            FontAwesomeIcons.google,
            color: Colors.white,
          ),
        ),
      ),
      CircleAvatar(
        backgroundColor: Colors.black,
        child: FaIcon(
          FontAwesomeIcons.xTwitter,
          color: Colors.white,
        ),
      ),
    ],
  );
}