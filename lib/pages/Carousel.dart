import 'package:flutter/material.dart';
import "package:carousel_slider/carousel_slider.dart";

class Carousel extends StatelessWidget {
// const Carousel({ Key? key }) : super(key: key);

List<String> carouselimages = [
    "baesline_access_time_black_24",
    "baseline_check_green_24"
]  ; 


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body:ListView(
          children: [
               new Container(
                     height: 250,
  width: 50,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: new NetworkImage("https://picsum.photos/250?image=9"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 0.0, height: 16.0),
                    new Container(
                     height: 250,
  width: 50,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: new NetworkImage("https://picsum.photos/250?image=9"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  SizedBox(width: 0.0, height: 16.0),
                    new Container(
                     height: 250,
  width: 50,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: new NetworkImage("https://picsum.photos/250?image=9"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  SizedBox(width: 0.0, height: 16.0),
                    new Container(
                     height: 250,
  width: 50,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: new NetworkImage("https://picsum.photos/250?image=9"),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
          ]
      )
      
      
   
    );
  }
}


