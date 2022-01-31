import 'package:flutter/material.dart';
import 'package:sweetalert/sweetalert.dart';

class SwalFire extends StatelessWidget {
  const SwalFire({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SwalFire'),),
      body: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            RaisedButton(
              child: Text("Basic"),
              onPressed: () {
                SweetAlert.show(context, title: "Just show a message");
              },
            ),
            RaisedButton(
              child: Text("Subtitle"),
              onPressed: () {
                SweetAlert.show(context,
                    title: "Just show a message",
                    subtitle: "Sweet alert is pretty");
              },
            ),
            RaisedButton(
              child: Text("Success"),
              onPressed: () {
                SweetAlert.show(context,
                    title: "Just show a message",
                    subtitle: "Sweet alert is pretty",
                    style: SweetAlertStyle.success);
              },
            ),
            RaisedButton(
              child: Text("Error"),
              onPressed: () {
                SweetAlert.show(context,
                    title: "Just show a message",
                    subtitle: "Sweet alert is pretty",
                    style: SweetAlertStyle.error);
              },
            ),
          ],
        ),
        Row(
          children: <Widget>[
            RaisedButton(
              child: Text("Confirm"),
              onPressed: () {
                SweetAlert.show(context,
                    title: "Just show a message",
                    subtitle: "Sweet alert is pretty",
                    style: SweetAlertStyle.confirm,
                    showCancelButton: true, onPress: (bool isConfirm) {
                  if (isConfirm) {
                    SweetAlert.show(context,
                        style: SweetAlertStyle.success, title: "Success");
                    // return false to keep dialog
                    return false;
                  }
                });
              },
            ),
            RaisedButton(
              child: Text("Confirm 2"),
              onPressed: () {
                SweetAlert.show(context,
                    subtitle: "Do you want to delete this message",
                    style: SweetAlertStyle.confirm,
                    showCancelButton: true, onPress: (bool isConfirm) {
                  if (isConfirm) {
                    SweetAlert.show(context,
                        subtitle: "Deleting...",
                        style: SweetAlertStyle.loading);
                    new Future.delayed(new Duration(seconds: 2), () {
                      SweetAlert.show(context,
                          subtitle: "Success!", style: SweetAlertStyle.success);
                    });
                  } else {
                    SweetAlert.show(context,
                        subtitle: "Canceled!", style: SweetAlertStyle.error);
                  }
                  // return false to keep dialog
                  return false;
                });
              },
            ),
            
          ],
        ),
      ],
    ),
    );
  }
}