import 'package:flutter/material.dart';
import 'components/common_button.dart';
import 'components/header.dart';
import 'components/password.dart';
import 'signup.dart';
import 'components/social_network.dart';
import 'components/user_name.dart';

class SignIn extends StatefulWidget
{
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn>
{
  bool isChecked = true;

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return SafeArea(
            child: Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      getHeader("Sign In"),
                      getUserNameField(),
                      getPasswordField(),
                      LoginHelpActionWidget(),
                      getButton("Sign In"),
                      getDivider(),
                      getSocialNetworkLoginWidget(),
                      getCreateAccountWidget(context)
                    ],
                  ),
                ),
              ),
              backgroundColor: Colors.white,
            ),
          );
        },
      ),
    );
  }

  Widget getDivider()
  {
    return Container(
      margin: EdgeInsets.only(top: 25, bottom: 25),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              height: 1,
              decoration: BoxDecoration(color: Colors.black),
            ),
          ),
          Text(
            "or",
            style: TextStyle(color: Colors.black),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 5, right: 5),
              height: 1,
              decoration: BoxDecoration(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCreateAccountWidget(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 6),
            child: Text(
              "Don't have an account?",
              style: TextStyle(color: Colors.black),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            child: Text(
              "Sign Up",
              style: TextStyle(color: Colors.pink),
            ),
          )
        ],
      ),
    );
  }
}

class LoginHelpActionWidget extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()
  {
    return LoginHelpActionWidgetState();
  }
}

class LoginHelpActionWidgetState extends State<LoginHelpActionWidget>
{
  bool _isChecked = true;

  @override
  Widget build(BuildContext context)
  {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      this._isChecked = !this._isChecked;
                    });
                  },
                  activeColor: Colors.pink,
                  checkColor: Colors.white,
                ),
                Text(
                  "Remember Me",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Text(
              "Forgot Password",
              style: TextStyle(color: Colors.black),
            )
          ],
        ));
  }

  void onChecked(bool value) {
    setState(() {
      _isChecked = !this._isChecked;
    });
  }
}
