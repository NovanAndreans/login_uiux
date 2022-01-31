import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:login_uiux/views/Auth/LoginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // Navbar
          Container(
            color: Colors.blue,
            width: 500,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(child: CircleAvatar(child: Icon(Icons.logout), backgroundColor: Colors.green), onTap: (){
                   Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                },),
                CircleAvatar(child: Icon(Icons.person), backgroundColor: Colors.green),
                CircleAvatar(child: Icon(Icons.info), backgroundColor: Colors.red.shade300),
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
                      dismissible: DismissiblePane(onDismissed: () {}),

                      // All actions are defined in the children parameter.
                      children: const [
                        // A SlidableAction can have an icon and/or a label.
                        SlidableAction(
                          // onPressed: doNothing,
                          backgroundColor: Color(0xFFFE4A49),
                          foregroundColor: Colors.white,
                          icon: Icons.settings,
                          label: 'Pengaturan',
                        ),
                        SlidableAction(
                          // onPressed: doNothing,
                          backgroundColor: Color(0xFF21B7CA),
                          foregroundColor: Colors.white,
                          icon: Icons.share,
                          label: 'Share',
                        ),
                      ],
                    ),

                    // The end action pane is the one at the right or the bottom side.
                    endActionPane: const ActionPane(
                      motion: DrawerMotion(),
                      children: [
                        SlidableAction(
                          // An action can be bigger than the others.
                          flex: 2,
                          // onPressed: doNothing,
                          backgroundColor: Color(0xFF7BC043),
                          foregroundColor: Colors.white,
                          icon: Icons.archive,
                          label: 'Archive',
                        ),
                        SlidableAction(
                          // onPressed: doNothing,
                          backgroundColor: Color(0xFF0392CF),
                          foregroundColor: Colors.white,
                          icon: Icons.save,
                          label: 'Save',
                        ),
                      ],
                    ),

                    // The child of the Slidable is what the user sees when the
                    // component is not dragged.
                    child: const ListTile(title: Text('Lainnya')),
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
                          CircleAvatar(child: Icon(Icons.download)),
                          CircleAvatar(child: Icon(Icons.share))
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(child: Icon(Icons.headphones)),
                          CircleAvatar(child: Icon(Icons.mic))
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
                      width: 250,
                      height: 185,
                      color: Colors.blue.shade400,
                      child: Text('data'),
                    ),
                    Container(
                      width: 250,
                      height: 185,
                      color: Colors.blue.shade700,
                      child: Text('data'),
                    )
                  ],
                ),
        ),
        // end content
        Container(
          width: 500,
          height: 43,
          color: Colors.blue.shade900,
          child: Center(child: Text('By. Novan Andre Andriansyah Putra', style: TextStyle(color: Colors.white),)),
        )
        ],
      ),
    );
  }
}