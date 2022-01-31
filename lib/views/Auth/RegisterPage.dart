// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sweetalert/sweetalert.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Register Page')),
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
                          radius: 39.0,
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
                              subtitle: "Anda yakin sudah mengisi form dengan benar ?",
                              style: SweetAlertStyle.confirm,
                              showCancelButton: true, onPress: (bool isConfirm) {
                            if (isConfirm) {
                              SweetAlert.show(context,
                                  subtitle: "Mendaftarkan.....",
                                  style: SweetAlertStyle.loading);
                              new Future.delayed(new Duration(seconds: 3), () {
                                SweetAlert.show(context,
                                    subtitle: "Success!", style: SweetAlertStyle.success);
                              });
                            } else {
                              SweetAlert.show(context,
                                  subtitle: "Dibatalkan!", style: SweetAlertStyle.error);
                            }
                            // return false to keep dialog
                            return false;
                          });
                        } ,
                        color: Colors.blue.shade400,
                        child: Text('Daftar', style: TextStyle(color: Colors.white)),
                        
                        )
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