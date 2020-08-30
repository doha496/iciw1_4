import 'package:flutter/material.dart';
// import 'package:footer/footer.dart';
import '../widgets/appdrawer.dart';

class MyBio extends StatelessWidget {
  static const routeName = '/biopage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ICIW > Profile'),
        backgroundColor: Color.fromRGBO(124, 67, 75, 1),
      ),
      // body: ListView.builder(itemBuilder: null),
      drawer: MyDrawer(),
      // bottomSheet: new Footer(
      //     child: Padding(
      //   padding: new EdgeInsets.all(10),
      //   child: Text('ICIW ©2020, All Rights Reserved.'),
      // )),
      // backgroundColor: Colors.purple[50],
      // ),
    );
  }
}
