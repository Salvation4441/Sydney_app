import 'package:flutter/material.dart';
import 'package:src_app/screens/dashboard/law/lawScreen.dart';
import 'package:src_app/screens/dashboard/widget/dashCard.dart';

class DashboardScreen extends StatelessWidget {
  static String routeName ='/dashboard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashboardBody(),
    );
  }
}
class DashboardBody extends StatefulWidget {
  @override
  _DashboardBodyState createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 5,top: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icons/logo.png',
                    width: 100,
                    height: 100,
                  ),
                  Text(
                      'STU SRC DASHBOARD',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[900]
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                DashCard(
                  press: () {
                    print('Hello');
                  },
                  image: 'assets/icons/calender.png',
                  name: 'Calender',
                ),
                DashCard(
                  press: (){},
                  image: 'assets/icons/news.png',
                  name: 'News',
                ),

              ],
            ),
            Row(
              children: [
                DashCard(
                  press: () { },
                  image: 'assets/icons/graduated.png',
                  name: 'Executives',
                ),
                DashCard(
                  press: (){},
                  image: 'assets/icons/event.png',
                  name: 'Events',
                ),

              ],
            ),
            Row(
              children: [
                DashCard(
                  press: () { },
                  image: 'assets/icons/course.png',
                  name: 'E-Library',
                ),
                DashCard(
                  press: (){
                    Navigator.pushNamed(context, LawScreen.routeName);
                  },
                  image: 'assets/icons/ba.png',
                  name: 'Constitution',
                ),

              ],
            ),
            Row(
              children: [
                DashCard(
                  press: () { },
                  image: 'assets/icons/calender.png',
                  name: 'Student Portal',
                ),
                DashCard(
                  press: (){},
                  image: 'assets/icons/download.png',
                  name: 'Downloads',
                ),

              ],
            )

          ],
        ),
      ),
    );
  }
}

