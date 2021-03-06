import 'package:flutter/material.dart';
import 'package:iciw1_4/providers/bgimg.dart';
import 'add_diary.dart';
import 'biopage.dart';
import 'chat.dart';
import 'contact_dr.dart';
import 'meds.dart';
import 'mood.dart';
import 'mylogs.dart';
import 'quotd.dart';
import 'settings.dart';
import '../widgets/appdrawer.dart';

class MYHomepage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 234, 255, 1),
      appBar: AppBar(
        centerTitle: true,
        title: Text('ICIW'),
        // fontFamily: 'Georgia',
        backgroundColor: Color.fromRGBO(124, 67, 75, 1),
      ),
      drawer: MyDrawer(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Container(
            //     decoration: BoxDecoration(
            //         image: DecorationImage(
            //             image: BGimage(),
            // fit: BoxFit.cover))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                HomeOpt('My Profile', MyBio.routeName),
                HomeOpt('My Log', Mylogs.routeName),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                HomeOpt('My Diary', MyDiary.routeName),
                HomeOpt('#QOUTD', MyQuotes.routeName),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                HomeOpt('#mood', Mymoods.routeName),
                HomeOpt('Meds', MyMeds.routeName),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                HomeOpt('Contact Doctor', ContactDr.routeName),
                HomeOpt('Chat', MyChat.routeName),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  HomeOpt('Settings', SettingS.routeName),
                ]),
          ]),
      bottomNavigationBar: BottomAppBar(
        child: Text(
          'ICIW ©2020, All Rights Reserved',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        color: Color.fromRGBO(124, 67, 75, 1),
      ),
    );
  }
}

class HomeOpt extends StatelessWidget {
  final String optName;
  final String routeName;

  HomeOpt(this.optName, this.routeName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50,
        width: 200,
        padding: EdgeInsets.all(3),
        child: new Container(
          decoration: new BoxDecoration(
              color: Color.fromRGBO(124, 67, 75, 1),
              borderRadius: BorderRadius.circular(30.0)),
          child: Center(
              child: Text(
            optName,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(routeName);
        print(routeName);
      },
    );
  }
}
