// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'home.dart';
import 'managephonenumber.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/sos.png'),
                const SizedBox(height: 16.0),
              ],
            ),
            const SizedBox(height: 50.0),

            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),

            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide(width:3, color:Colors.brown)),
                elevation: MaterialStateProperty.all(2),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    )),
                backgroundColor: MaterialStateProperty.all(Colors.red),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold)),

              ),
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child: const Text('Sign Up',style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              style: ButtonStyle(
                  side: MaterialStateProperty.all(BorderSide(width:3, color:Colors.brown)),
                  elevation: MaterialStateProperty.all(2),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                  )),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),

              ),


            ),

          ],
        ),
      ),
    );
  }
}
