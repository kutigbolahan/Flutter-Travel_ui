import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel/homepage.dart';
import 'package:travel/itemmodel.dart';

class LocationDetails extends StatelessWidget {
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
      body: SlidingUpPanel(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        parallaxEnabled: true,
        panel: Container(
          margin: EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50),
                Chip(
                  label: Text(
                    'Africa',
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
                Text(
                  'Discover\nAfrica',
                  style:
                      TextStyle(fontSize: 60, color: Colors.black, height: 1),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Top Locations of Africa',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF3640ff),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Africa is the world's second-largest and second-most populous continent, after Asia. At about 30.3 million km² including adjacent islands, it covers 6% of Earth's total surface area and 20% of its land area. With 1.3 billion people as of 2018, it accounts for about 16% of the world's human population. "),
                ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: locations.map((e) {
                    return Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFfff9ed),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image(
                              image: NetworkImage(e.image),
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(e.name),
                        ],
                      ),
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        ),
        body: Stack(
          
                  children:<Widget>[ 
                   
                    Center(
            child: Image(
              image:NetworkImage(
                 "https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
              ),
              width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top:18.0),
             child: FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
             }, 
             
             child: Icon(Icons.arrow_back)),
           ),
                  ]),
      ),
    );
  }
}
