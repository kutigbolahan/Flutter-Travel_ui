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
                image: NetworkImage('https://images.unsplash.com/photo-1575999080555-3f7a698dd8d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80'),//'https://images.unsplash.com/photo-1534329539061-64caeb388c42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=281&q=80'),//"https://images.pexels.com/photos/2186581/pexels-photo-2186581.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
                width: MediaQuery.of(context).size.width ,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(top:100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Chip(
                              label: Text('Asia',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              ),
                              backgroundColor: Color(0xFF3640ff),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Discover')
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ],
          ),
        )
        ),
    );
  }
}