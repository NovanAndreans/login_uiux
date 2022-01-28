import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Login Page')),
      ),
      body: Container(
        // color: Colors.blue.shade200,
        child: Column(
          children: [
            Container(
              color: Colors.blue.shade200,
              child: 
              SizedBox(
                height: 560,
                width: 500,
                ),
            ),
            Container(
              color: Colors.blue.shade500,
              child: SizedBox(
                height: 70,
                width: 500,
                child: Center(child: Text('Footer', style: TextStyle(color: Colors.white, fontSize: 20), )),
                ),
            ),
          ],
        ),
      ),
    );
  }
}