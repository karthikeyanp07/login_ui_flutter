import 'package:flutter/material.dart';
import 'components/common_button.dart';
import 'components/header.dart';
import 'components/password.dart';
import 'components/user_name.dart';

class SignUp extends StatefulWidget
{
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp>
{
  bool isChecked = true;

  @override
  Widget build(BuildContext context)
  {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    getHeader("Sign Up"),
                    getUserNameField(),
                    getPasswordField(),
                    LoginHelpActionWidget(),
                    getButton("Sign Up"),
                    getCreateAccountWidget(context)
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.white,
          ),
        );
      },
    );
  }

  Widget getCreateAccountWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 6),
            child: Text(
              "Already have an account?",
              style: TextStyle(color: Colors.black),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              "Sign In",
              style: TextStyle(color: Colors.pink),
            ),
          ),
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
    return PrivacyPolicyAccept();
  }
}

class PrivacyPolicyAccept extends State<LoginHelpActionWidget>
{
  bool _isChecked = true;

  @override
  Widget build(BuildContext context)
  {
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
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
                  "By signing up you accept the ",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  "Term of service ",
                  style: TextStyle(color: Colors.pink, fontSize: 12),
                ),
                Text(
                  "and ",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.pink, fontSize: 12),
                )
              ],
            )
          ],
        ));
  }

  void onChecked(bool value) {
    setState(() {
      _isChecked = !_isChecked;
    });
  }
}
