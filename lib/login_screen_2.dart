import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen2 extends StatelessWidget {
  final Color? backgroundColor1;
  final Color? backgroundColor2;
  final Color? highlightColor;
  final Color? foregroundColor;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose{
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
}

  LoginScreen2({
    Key? k,
    this.backgroundColor1 = Colors.black,
    this.backgroundColor2 = Colors.black,
    this.highlightColor = Colors.black45,
    this.foregroundColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.centerLeft,
              end: new Alignment(1.0, 0.0), // 10% of the width, so there are ten blinds.
              colors: [Colors.black, Colors.black], // whitish to gray
               // repeats the gradient over the canvas
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 110.0, bottom: 50.0),
                child: Center(
                  child: new Column(
                    children: <Widget>[
                      Container(
                        height: 128.0,
                        width: 128.0,
                        child: new Image.asset('assets/images/clover.png'),
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: new Text(
                          "Minegree User",
                          style: TextStyle(color: this.foregroundColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 40.0, right: 40.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: this.foregroundColor!, width: 0.5, style: BorderStyle.solid),
                  ),
                ),
                padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                      child: Icon(
                        Icons.alternate_email,
                        color: this.foregroundColor,
                      ),
                    ),
                    new Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.green),
                        cursorColor: Colors.green,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'minegree@example.com',
                          hintStyle: TextStyle(color: this.foregroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: this.foregroundColor!, width: 0.5, style: BorderStyle.solid),
                  ),
                ),
                padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 00.0),
                      child: Icon(
                        Icons.lock_open,
                        color: this.foregroundColor,
                      ),
                    ),
                    new Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.green),
                        cursorColor: Colors.green,
                        obscureText: true,
                        textAlign: TextAlign.center,
                          decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '*********',
                          hintStyle: TextStyle(color: this.foregroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 30.0),
                alignment: Alignment.center,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new FlatButton(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                        color: this.highlightColor,
                        onPressed: signin,
                        child: Text(
                          "Log In",
                          style: TextStyle(color: this.foregroundColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
                alignment: Alignment.center,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new FlatButton(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                        color: Colors.transparent,
                        onPressed: () => {},
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(color: this.foregroundColor!.withOpacity(0.5)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              new Expanded(
                child: Divider(),
              ),
              new Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0, bottom: 20.0),
                alignment: Alignment.center,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new FlatButton(
                        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                        color: Colors.transparent,
                        onPressed: () => {
                          Navigator.pushNamed(context, '/register')
                        },
                        child: Text(
                          "Don't have an account? Create One",
                          style: TextStyle(color: this.foregroundColor!.withOpacity(0.5)),
                        ),
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

Future signin() async{
  await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password){
    email: emailController.text.trim();
    password: passwordController.text.trim();
}
}