import 'package:flutter/material.dart';
import 'package:travel/itemmodel.dart';
import 'package:travel/locationdetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final List<LocationItemModel> locations = [
    LocationItemModel(
        image:
            "https://images.unsplash.com/photo-1570371874918-034cf0c28cc6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=401&q=80",
        name: "Nigeria"),
    LocationItemModel(
        image:
            "https://images.unsplash.com/photo-1511965675262-c4e1e6ac3f06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=667&q=80",
        name: "Tanzania"),
    LocationItemModel(
        image:
            "https://images.unsplash.com/photo-1566288592443-0a0d6853dddc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80",
        name: "Egypt"),
    LocationItemModel(
        image:
            "https://images.unsplash.com/photo-1519659528534-7fd733a832a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=626&q=80",
        name: "Kenya"),
    LocationItemModel(
        image:
            "https://images.unsplash.com/photo-1551523577-51f7c17957cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
        name: "Mozambique"),
    LocationItemModel(
        image:
            "https://images.unsplash.com/photo-1585801861896-bf4a67e74d35?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80",
        name: "Cape-Verde"),
    LocationItemModel(
        image:
            "https://images.unsplash.com/photo-1529528070131-eda9f3e90919?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=375&q=80",
        name: "South Africa"),
  ];
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
                              label: Text('Africa',
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
                              Text('Discover\nAfrica',
                              style: TextStyle(
                                fontSize: 60,
                                color: Colors.white,
                                height: 1,
                                shadows: [
                                  Shadow(
                                    blurRadius: 50,
                                    color: Color(0xFF000000),
                                offset: Offset(0, 0),
                                  )
                                ]
                              ),
                              )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:200),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left:20),
                            child: Text('Visit Africa',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white
                            ),
                            
                            ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:20),
                              height: 200,
                              child: ListView.builder(
                                itemCount: locations.length,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index){
                                  return InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationDetails()));
                                    },
                                    child: Container(
                                      width: 170,
                                      margin: EdgeInsets.only(left:20, right:20),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 40,
                                            color: Color(0x99000000),
                                          offset: Offset(4, 20),
                                          )
                                        ]
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(16),
                                            child: Image(
                                              image:NetworkImage(locations[index].image),
                                              width: 170,
                                              height: 170,
                                              fit: BoxFit.cover,
                                               ),
                                          ),
                                          Text(locations[index].name)
                                        ],
                                      ),
                                    ),
                                  );

                                },
                                
                                ),
                            )
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