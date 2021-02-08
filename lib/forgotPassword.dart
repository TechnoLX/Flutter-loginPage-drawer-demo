import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color mainTheme = Color(0xFFF50074);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: mainTheme,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/password.png',
                height: size.height * 0.45,
              ),
              Container(
                width: size.width * 0.8,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: TextField(
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: mainTheme,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'Email or Username',
                    fillColor: Colors.white,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: size.width * 0.8,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {},
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.pink[50],
                  child: Text('Send Reset Link',
                      style: TextStyle(
                          color: mainTheme,
                          fontSize: 18.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
