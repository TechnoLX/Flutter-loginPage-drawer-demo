import 'package:NewApp/mainScreen.dart';
import 'package:flutter/material.dart';
import 'forgotPassword.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color mainTheme = Color(0xFFF50074);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/login.png',
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
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_rounded,
                      color: mainTheme,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: mainTheme,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'Enter Your Password',
                    fillColor: Colors.white,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                alignment: Alignment.centerRight,
                width: size.width * 0.8,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()));
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: mainTheme,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: size.width * 0.8,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.pink[50],
                  child: Text('LOGIN',
                      style: TextStyle(
                          color: mainTheme,
                          fontSize: 18.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                width: size.width * 0.8,
                child: Text('--Or Sign In with--',
                    style: TextStyle(
                      color: mainTheme,
                      fontSize: 15.0,
                    )),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      width: size.width * 0.35,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: () {},
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.pink[50],
                        child: Text('FACEBOOK',
                            style: TextStyle(
                                color: mainTheme,
                                fontSize: 16.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      width: size.width * 0.35,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: () {},
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.pink[50],
                        child: Text('GMAIL',
                            style: TextStyle(
                                color: mainTheme,
                                fontSize: 16.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
