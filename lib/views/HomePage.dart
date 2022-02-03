import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:login_uiux/views/Auth/LoginPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_uiux/views/ProfilePage.dart';
import 'package:login_uiux/views/plugins/Bootstrap/Bootstrap_Alert.dart';
import 'package:login_uiux/views/plugins/Bootstrap/Bootstrap_InputText.dart';
import 'package:login_uiux/views/plugins/Bootstrap/Bootstrap_Layout.dart';
import 'package:login_uiux/views/plugins/Bootstrap/Bootstrap_Modal.dart';
import 'package:login_uiux/views/plugins/Bootstrap/Bootstrap_Select.dart';
import 'package:login_uiux/views/plugins/Bootstrap/Bootstrap_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const instagram = FaIcon(FontAwesomeIcons.instagram);
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
                  CircleAvatar(child: Icon(Icons.info), backgroundColor: Colors.red.shade300),
                  GestureDetector(child: CircleAvatar(child: Icon(Icons.person), backgroundColor: Colors.green), onTap: (){
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfilePage()));
                  },),
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
            color: Colors.blue.shade400,
            child: Column(
              children: [
                Slidable(
                   // Specify a key if the Slidable is dismissible.
                      key: const ValueKey(0),
        
                      // The start action pane is the one at the left or the top side.
                      startActionPane: ActionPane(
                        // A motion is a widget used to control how the pane animates.
                        motion: const DrawerMotion(),
        
                        // A pane can dismiss the Slidable.
                        // dismissible: DismissiblePane(onDismissed: () {}),
        
                        // All actions are defined in the children parameter.
                        children: const [
                          // A SlidableAction can have an icon and/or a label.
                          SlidableAction(
                            // onPressed: doNothing,
                            backgroundColor: Color(0xFF0392CF),
                            foregroundColor: Colors.white,
                            icon: FontAwesomeIcons.instagram,
                            label: 'IG',
                          ),
                          SlidableAction(
                            // onPressed: doNothing,
                            backgroundColor: Color(0xFF21B7CA),
                            foregroundColor: Colors.white,
                            icon: Icons.facebook,
                            label: 'FB',
                          )
                        ],
                      ),
        
                      // The end action pane is the one at the right or the bottom side.
                      endActionPane: const ActionPane(
                        motion: DrawerMotion(),
                        children: [
                          // SlidableAction(
                          //   // An action can be bigger than the others.
                          //   flex: 2,
                          //   // onPressed: doNothing,
                          //   backgroundColor: Color(0xFF7BC043),
                          //   foregroundColor: Colors.white,
                          //   icon: Icons.archive,
                          //   label: 'Archive',
                          // ),
                          SlidableAction(
                            // onPressed: doNothing,
                            backgroundColor: Color(0xFF0392CF),
                            foregroundColor: Colors.white,
                            icon: FontAwesomeIcons.github,
                            label: 'Github',
                          ),
                        ],
                      ),
        
                      // The child of the Slidable is what the user sees when the
                      // component is not dragged.
                      child: const ListTile(title: Text('Social Media')),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 350,
                height: 350,
                child: Calendar(
                        // weekendOpacityEnable: true,
                        previous: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    spreadRadius: 1.5,
                                    blurRadius: 5,
                                    offset: Offset(2.0, 0.0))
                              ]),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 16,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        next: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    spreadRadius: 1.5,
                                    blurRadius: 5,
                                    offset: Offset(2.0, 0.0))
                              ]),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        space: 20,
                        onSelected: print,
                        backgroundColor: Colors.blue.shade200,
                        activeColor: Colors.blue.shade700,
                        textStyleDays: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.black),
                        textStyleWeekDay:
                            TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                        titleStyle:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        selectedStyle:
                            TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
              ),
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 175,
                    color: Colors.blue.shade300,
                    child: FlutterAnalogClock(
                      dateTime: DateTime.now(),
                      dialPlateColor: Colors.white,
                      hourHandColor: Colors.black,
                      minuteHandColor: Colors.black,
                      secondHandColor: Colors.black,
                      numberColor: Colors.black,
                      borderColor: Colors.black,
                      tickColor: Colors.black,
                      centerPointColor: Colors.black,
                      showBorder: true,
                      showTicks: true,
                      showMinuteHand: true,
                      showSecondHand: true,
                      showNumber: true,
                      borderWidth: 8.0,
                      hourNumberScale: .10,
                      hourNumbers: ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XII'],
                      isLive: true,
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 175,
                    color: Colors.blue.shade400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(child: CircleAvatar(child: Icon(Icons.ramen_dining)), onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BootstrapInput()));
                            },),
                            GestureDetector(child: CircleAvatar(child: Icon(Icons.fastfood)), onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BootstrapAlert()));
                            },)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(child: CircleAvatar(child: Icon(Icons.dining)), onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BootstrapButton()));
                            },),
                            GestureDetector(child: CircleAvatar(child: Icon(Icons.restaurant)), onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BootstrapPage()));
                            },)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(child: CircleAvatar(child: Icon(Icons.free_breakfast)), onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BootstrapModal()));
                            },),
                            GestureDetector(child: CircleAvatar(child: Icon(Icons.emoji_food_beverage)), onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BootstrapSelect()));
                            },)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 185,
                        color: Colors.blue.shade400,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              color: Colors.purple.shade300,
                              height: 55,
                              width: 90,
                            ),
                            Container(
                              color: Colors.purple,
                              height: 55,
                              width: 90,
                            ),
                            Container(
                              color: Colors.purple.shade800,
                              height: 55,
                              width: 90,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 185,
                        color: Colors.blue.shade700,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                margin: const EdgeInsets.only(top: 10.0, left: 10),
                                  color: Colors.pink.shade200,
                                  height: 80,
                                  width: 172,
                                ),
                                Container(
                                margin: const EdgeInsets.only(top: 10.0, right: 10),
                                  color: Colors.pink,
                                  height: 80,
                                  width: 172,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                margin: const EdgeInsets.only(top: 10.0, left: 10),
                                  color: Colors.pink.shade400,
                                  height: 80,
                                  width: 172,
                                ),
                                Container(
                                margin: const EdgeInsets.only(top: 10.0, right: 10),
                                  color: Colors.pink.shade800,
                                  height: 80,
                                  width: 172,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
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