import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ui_first_project/Pages/LoginPage.dart';
import 'package:ui_first_project/Pages/MainPage.dart';

class MySignUpPage extends StatefulWidget {
  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  bool _issubmitting = false;
  int _groupValue = -1;
  late String _username, _email, _password, _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FittedBox(
                        child: Image.asset(
                          'images/Login.png',
                          width: MediaQuery.of(context).size.width,
                          //height:  MediaQuery. of(context). size.height,
                          fit: BoxFit.none,
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Text("SignUp",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 40,
                          decoration: TextDecoration.none,
                        )),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 15, right: 30, left: 30),
                    child: _showUsernameInput(),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, right: 30, left: 30),
                    child: _showEmailInput(),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, right: 30, left: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: RadioListTile(
                                      value: 0,
                                      groupValue: _groupValue,
                                      title: Text("Male"),
                                      onChanged: (newValue) => setState(() {
                                        _groupValue = newValue!;
                                        print(newValue);
                                      }),
                                      activeColor: Colors.green,
                                      selected: false,
                                    ),
                                  ),
                                  Expanded(
                                    child: RadioListTile(
                                      value: 1,
                                      groupValue: _groupValue,
                                      title: Text("Female"),
                                      onChanged: (newValue) => setState(() {
                                        _groupValue = newValue!;

                                        print(newValue);
                                      }),
                                      activeColor: Colors.green,
                                      selected: false,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 10, right: 30, left: 30),
                    child: _showPasswordInput(),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 4, right: 30, left: 30),
                    child: TextButton(
                      child: const Text(
                        'Forgot you password?',
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 4, right: 30, left: 30),
                    child: SizedBox(
                      width: 400,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF23233C),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 120, vertical: 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          'SingUP',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          final form = _formKey.currentState;
                          if (form!.validate()) {
                            form.save();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage()));
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 4, right: 30, left: 30),
                    child: TextButton(
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Have an existing ? '),
                            TextSpan(
                                text: 'sign in',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyLoginPage()));
                      },
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(top: 1),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 100),
                            child: SizedBox(
                              width: 100,
                              height: 75,
                              child: IconButton(
                                icon: Image.asset(
                                  'images/F.png',
                                  fit: BoxFit.scaleDown,
                                ),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 2),
                            child: SizedBox(
                              width: 100,
                              height: 75,
                              child: IconButton(
                                icon: Image.asset(
                                  'images/G.png',
                                  fit: BoxFit.scaleDown,
                                ),
                                color: Colors.white,
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FittedBox(
                        child: Image.asset(
                          'images/Login2.png',
                          width: MediaQuery.of(context).size.width,
                          //height:  MediaQuery. of(context). size.height,
                          fit: BoxFit.none,
                        ),
                      )
                    ],
                  ),
                ]))));
  }

  Widget _showUsernameInput() {
    return Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child: TextFormField(
            onSaved: (val) => _username = val!,
            validator: (val) => val!.length < 6 ? 'Username too short' : null,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                hintText: 'Enter username, min length 6',
                icon: Icon(Icons.face, color: Colors.grey))));
  }

  Widget _showEmailInput() {
    return Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child: TextFormField(
            onSaved: (val) => _email = val!,
            validator: (val) => !val!.contains('@') || !val!.contains('.')
                ? 'Invalid Email'
                : null,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter a valid email',
                icon: Icon(Icons.mail, color: Colors.grey))));
  }

  Widget _showPasswordInput() {
    return Padding(
        padding: EdgeInsets.only(top: 1.0),
        child: TextFormField(
            onSaved: (val) => _password = val!,
            validator: (val) => val!.length < 6 ? 'Password too short' : null,
            obscureText: _obscureText,
            decoration: InputDecoration(
                suffixIcon: GestureDetector(
                    onTap: () {
                      _obscureText = !_obscureText;
                    },
                    child: Icon(_obscureText
                        ? Icons.visibility
                        : Icons.visibility_off)),
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter password, min length 6',
                icon: Icon(Icons.lock, color: Colors.grey))));
  }
}
