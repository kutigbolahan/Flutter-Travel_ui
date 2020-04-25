import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travel/itemmodel.dart';

class LocationDetails extends StatelessWidget {
    final List<LocationItemModel> locations = [
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/1657984/pexels-photo-1657984.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/2474689/pexels-photo-2474689.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/1694621/pexels-photo-1694621.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/2166553/pexels-photo-2166553.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/415708/pexels-photo-415708.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/1603650/pexels-photo-1603650.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
    LocationItemModel(
        image:
            "https://images.pexels.com/photos/1098460/pexels-photo-1098460.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        name: "Location"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        borderRadius: BorderRadius.circular(60),
        parallaxEnabled: true,
        panel: Container(
          margin: EdgeInsets.only(
            left: 40,
            right: 40,
          ),
        ),
      ),
    );
  }
}