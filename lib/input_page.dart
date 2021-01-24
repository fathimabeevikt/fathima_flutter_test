import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class inputpage extends StatefulWidget {
  @override
  _inputpageState createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[400],
          title: Text("HOME"),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: Column(
            children: [
              TabBar(
                indicatorColor: Colors.purple[800],
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.purple[400],
                labelPadding: EdgeInsets.zero,
                labelStyle:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                tabs: [
                  Expanded(child: Tab(text: 'ACCOUNT DETAILS')),
                  Tab(
                    text: 'PRODUCTS',
                  ),
                  Tab(text: 'LATEST OFFERS'),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('image/avatar-black.png'),
                ),
                SizedBox(
                  width: 50,
                  height: 100,
                ),
                Column(
                  children: [
                    Text('Person Name', style: kTextStyle),
                    Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 12, fontFamily: 'RobotoMono'),
                    ),
                  ],
                )
              ]),
              SizedBox(
                height: 60,
              ),
              Reusablecard(
                text: 'User Details',
              ),
              Reusablecard(text: 'Favourites'),
              Reusablecard(text: 'Orders'),
              Reusablecard(text: 'Complaints'),
              Reusablecard(text: 'Notifications'),
              Reusablecard(text: 'Customer Care'),
            ],
          ),
        ),
      ),
    );
  }
}
