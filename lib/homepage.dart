import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              Image(
                image: NetworkImage( "https://images.pexels.com/photos/2186581/pexels-photo-2186581.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
                )
            ],
          ),
        )
        ),
    );
  }
}