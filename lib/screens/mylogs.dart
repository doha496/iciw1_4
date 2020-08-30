import 'package:flutter/material.dart';
import '../widgets/appdrawer.dart';

class Mylogs extends StatelessWidget {
  static const routeName = '/mylogs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ICIW > Logs'),
        backgroundColor: Color.fromRGBO(124, 67, 75, 1),
      ),
      // body: ListView.builder(itemBuilder: null),
      drawer: MyDrawer(),
    );
  }
}
