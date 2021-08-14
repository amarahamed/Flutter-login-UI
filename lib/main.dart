import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:login_ui_2/text_animation.dart';
import 'package:login_ui_2/utilities.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    return SafeArea(
      child: Container(
        decoration: scaffoldGraadient,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SlideAnimation(
                    durationInMS: 500,
                    paddingValue: 24,
                    animationChild: Text(
                      'Login',
                      style: largeTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SlideAnimation(
                    durationInMS: 500,
                    paddingValue: 24,
                    animationChild: Text(
                      'Great to have you back',
                      style: mediumTextStyle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          height: 40,
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
                                cursorColor: Color(0xFF001064),
                                textInputAction: TextInputAction.next,
                                cursorWidth: 1.6,
                                cursorHeight: 22,
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
                                cursorColor: Color(0xFF001064),
                                textInputAction: TextInputAction.done,
                                cursorWidth: 1.6,
                                cursorHeight: 22,
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
                          child: SlideAnimation(
                            durationInMS: 1000,
                            paddingValue: 0,
                            animationChild: ElevatedButton(
                              onPressed: () {
                                print('Login button pressed');
                              },
                              child: Text(
                                'LOGIN',
                                style: inputTextStyle.copyWith(
                                    color: Colors.white),
                              ),
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF001064).withOpacity(0.86)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Center(
                            child: InkWell(
                              child: SlideAnimation(
                                durationInMS: 1000,
                                paddingValue: 0,
                                animationChild: Text(
                                  'Forgot Password',
                                  style: linkTextStyle,
                                ),
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
                                  SlideAnimation(
                                    durationInMS: 1000,
                                    paddingValue: 0,
                                    animationChild: Text(
                                      'Don’t have an account yet ?  ',
                                      style: linkTextStyle,
                                    ),
                                  ),
                                  SlideAnimation(
                                    durationInMS: 1000,
                                    paddingValue: 0,
                                    animationChild: Text(
                                      'Sign up',
                                      style: linkTextStyle.copyWith(
                                        color: Color(0xFF4757E9),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                print('Sign up link tapped');
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                  child: Text(
                                    'Privacy Policy',
                                    style: bottomlinkTextStyle,
                                  ),
                                  onTap: () {
                                    print('Privacy policy link pressed');
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  child: Text(
                                    'Cookie Policy',
                                    style: bottomlinkTextStyle,
                                  ),
                                  onTap: () {
                                    print('Cookie policy link pressed');
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  child: Text(
                                    'Copyright Policy',
                                    style: bottomlinkTextStyle,
                                  ),
                                  onTap: () {
                                    print('Copyright policy link pressed');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Sign Up Link
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
