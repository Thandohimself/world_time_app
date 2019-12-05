import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async{

    // simulate a network request for a username
    String username =  await Future.delayed(Duration(seconds: 3), () {
      return 'yoshi';
    });

    // simulate a network request for a bio
    String bio =  await Future.delayed(Duration(seconds: 2), () {
     return  'vegan,rock punk';
    });
    print('$username - $bio');
  }


  @override
  void initState() {
    super.initState();
    print('build function ran');
    getData();
  }
  @override
  Widget build(BuildContext context) {
    print('initState function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {

          });
        },

      ),
    );
  }
}
