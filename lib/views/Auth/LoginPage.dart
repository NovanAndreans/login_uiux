// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_uiux/views/Auth/RegisterPage.dart';
import 'package:login_uiux/views/HomePage.dart';
import 'package:sweetalert/sweetalert.dart';

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
                child: Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Container(
                    color: Colors.blue.shade700,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 56.0,
                          child: Image.asset('PrincessCard.png'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                           keyboardType: TextInputType.emailAddress,
                            autofocus: false,
                            // initialValue: 'alucard@gmail.com',
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.blue.shade200,
                                  width: 2.0,
                                ),
                              ),
                              hintText: 'Email',
                              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),),
                            ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          autofocus: false,
                          // initialValue: 'some password',
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.blue.shade200,
                                  width: 2.0,
                                ),
                              ),
                            hintText: 'Password',
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RaisedButton(
                          onPressed: () {
                          SweetAlert.show(context,
                          title: "Selamat",
                          subtitle: "Anda Berhasil Login",
                          style: SweetAlertStyle.success);
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                        } ,
                        color: Colors.blue.shade400,
                        child: Text('Login', style: TextStyle(color: Colors.white)),
                        
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        GestureDetector(child: Text('Register / Daftar', style: TextStyle(color: Colors.white),), onTap: (){
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                        })
                      ],
                  ),
                    ),),
                ),
                ),
            ),
            Container(
              color: Colors.blue.shade500,
              child: SizedBox(
                height: 70,
                width: 500,
                child: Center(child: Text('Footer', style: TextStyle(color: Colors.white, fontSize: 20))),
                ),
            ),
          ],
        ),
      ),
    );
  }
}