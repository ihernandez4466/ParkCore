import 'package:flutter/material.dart';
import 'package:parkcore_app/navigate/menu_drawer.dart';
import 'package:parkcore_app/navigate/parkcore_button.dart';

class FormSuccess extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget showSnackBar(){
    return IconButton(
      icon: Icon(
        Icons.cake,
        size: 50.0,
        color: Color(0xFF7E57C2),
      ),
      onPressed: () {
        _scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text(
            'Thank you!',
            style: TextStyle(
              color: Color(0xFFB085F5),
              fontSize: 20,
            ),
          ),
          duration: Duration(seconds: 5),
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Form Submitted. Success!'),
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        actions: <Widget>[
          LogoButton(),
        ],
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/parkcore_logo_green2.jpg',
                height: 150,
                fit:BoxFit.fill,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'PARKCORE',
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'find a spot. go nuts.',
              style: Theme.of(context).textTheme.display1,
            ),
            SizedBox(height: 10),
            showSnackBar(),
            SizedBox(height: 20),
            Text(
              'thank you for joining the scurry!',
              style: Theme.of(context).textTheme.display2,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                'assets/parkcore_logo_green2.jpg',
                height: 150,
                fit:BoxFit.fill,
              ),
            ),
          ],
        )
      ),
    );
  }
}