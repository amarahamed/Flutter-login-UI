// Top
            Expanded(
              flex: 5,
              child: Padding(
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
            ),

            //
            // Bottom
            Expanded(
              flex: 9,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(80),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: inputFieldColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.fromLTRB(14, 60, 14, 0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: inputFieldColor,
                                border: InputBorder.none,
                                labelText: 'Username',
                                labelStyle: inputTextStyle,
                              ),
                            ),
                            Container(
                              color: Color(0xFFCCCCCC).withOpacity(0.6),
                              height: 1.6,
                              width: double.infinity,
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: inputFieldColor,
                                border: InputBorder.none,
                                labelText: 'Password',
                                labelStyle: inputTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('LOGIN',
                              style:
                                  inputTextStyle.copyWith(color: Colors.white)),
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFF001064).withOpacity(0.86)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(child: Text('Forgot Password ?')),
                    ),
                  ],
                ),
              ),
            ),