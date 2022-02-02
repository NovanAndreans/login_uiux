import 'package:flutter/material.dart';
import 'package:login_uiux/views/Auth/LoginPage.dart';
import 'package:login_uiux/views/HomePage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Navbar
            Container(
              color: Colors.blue,
              width: 500,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(child: CircleAvatar(child: Icon(Icons.info), backgroundColor: Colors.green), onTap: (){
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                  },),
                  CircleAvatar(child: Icon(Icons.person), backgroundColor: Colors.red.shade300),
                  GestureDetector(child: CircleAvatar(child: Icon(Icons.logout), backgroundColor: Colors.green), onTap: (){
                     Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                  },),
                ],
              ),
            ),
            // end Navbar

            // content
            Container(
              color: Colors.blue.shade300,
              // margin: const EdgeInsets.only(top: 25.0),
              child: Image.asset('clashRoyale.png'),
            ),
            Container(
              width: MediaQuery.of(context).size.width*1.0,
              padding: const EdgeInsets.all(16.0),
              color: Colors.blue.shade100,
              // margin: const EdgeInsets.only(top: 5.0, right: 25, bottom: 5, left: 25),
              child: Text('Clash Royale is a tower rush video game which pits players in games featuring two or four players (1v1 or 2v2) in which the objective is to destroy the most opposing towers, with the destruction of the Kings Tower being an instantaneous win. After three minutes, if both of the players/teams have an equal number of crowns or none at all the match continues into a 2-minute overtime period and the player who destroys an opposing tower wins instantaneously. If no towers are destroyed during overtime, there is a tiebreaker, where all towers rapidly lose health, and the tower with the least health is destroyed. If two towers have the same health, there is a draw. After an update in late 2018, leaving a 2v2 match multiple times prevents the player from playing 2v2 with random players',style: TextStyle(
                        height: 1.96 
                      )),
            ),
            // end content
          // footer
          Container(
            width: 500,
            height: 43,
            color: Colors.blue.shade900,
            child: Center(child: Text('By. Novan Andre Andriansyah Putra', style: TextStyle(color: Colors.white),)),
          ),
          // end footer
          ],
        ),
      ),
    );
  }
}