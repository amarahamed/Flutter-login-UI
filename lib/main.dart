import 'package:flutter/material.dart';
import 'package:login_ui_2/utilities.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: LoginBody(),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return SafeArea(
      child: Container(
        decoration: scaffoldGraadient,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(24, 42, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Login',
                    style: largeTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Great to have you back',
                    style: mediumTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 68,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(80),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF001064).withOpacity(0.12),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              TextField(
                                decoration: textFieldDecoration.copyWith(
                                  hintText: 'Username',
                                ),
                              ),
                              Container(
                                height: 1.6,
                                color: Color(0xFFCCCCCC).withOpacity(0.6),
                                width: double.infinity,
                              ),
                              TextField(
                                obscureText: true,
                                decoration: textFieldDecoration.copyWith(
                                    hintText: 'Password'),
                              ),
                            ],
                          ),
                        ), // Text Field Container
                        SizedBox(
                          height: 34,
                        ),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              print('Login button pressed');
                            },
                            child: Text(
                              'LOGIN',
                              style:
                                  inputTextStyle.copyWith(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF001064).withOpacity(0.86)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: InkWell(
                              child: Text(
                                'Forgot Password',
                                style: linkTextStyle,
                              ),
                              onTap: () {
                                print('Forgot password link tapped');
                              },
                            ),
                          ),
                        ), // Forgot Password link
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: InkWell(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Don’t have an account yet ?  ',
                                    style: linkTextStyle,
                                  ),
                                  Text(
                                    'Sign up',
                                    style: linkTextStyle.copyWith(
                                      color: Color(0xFF4757E9),
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                print('Sign up link tapped');
                              },
                            ),
                          ),
                        ), // Sign Up Link
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
