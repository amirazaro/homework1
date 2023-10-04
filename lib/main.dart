import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyPro());
}

class MyPro extends StatelessWidget {
   const MyPro({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold( appBar: AppBar (
        title: Text('Students Information'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
          body:ListView (
            children: [
              Info(averageRating: 90, Name: 'ameera', Major: 'IT ', Id: '201094', ),
              Info(averageRating: 60,Name: 'sara', Major: 'CS ', Id: '201114',),
              Info(averageRating: 70,Name: 'leen', Major: 'IT ', Id: '201794',),
              Info(averageRating: 100,Name: 'simsim', Major: 'CS ', Id: '116588',),
              Info(averageRating: 30,Name: 'soso', Major: 'IT ', Id: '111000',),
            ],
          )

      ),
    );
  }
}
class Info extends StatelessWidget {

  final double averageRating ;
  final String Name ;
  final String Major ;
  final String Id ;

  Info({required this.averageRating, required this.Name, required this.Major, required this.Id });
  @override
  Widget build(BuildContext context) {


    return  Card (
        elevation: 10,
        child: Container (
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(5),
          height: 180,
          child: Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(children: [
                    Text('Name : $Name ', style: TextStyle(color: Colors.black, fontSize: 24),),
                  //  Text(' ', style: TextStyle(color: Colors.black, fontSize: 20),),
                  ],),
                  Row(
                    children: [
                      Text('Major : $Major ', style: TextStyle(color: Colors.black, fontSize: 24),),
                    //  Text('  ', style: TextStyle(color: Colors.black, fontSize: 20),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Id : $Id' , style: TextStyle(color: Colors.black, fontSize: 24),),
                  //    Text(' ', style: TextStyle(color: Colors.black, fontSize: 20),),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [Image.asset('image/images.jpg' , height: 100, ),],
                  ),
                  Row(
                    children: [ AverageRatingWidget(averageRating: averageRating)],
                  ),

                ],

              ),

            ],
          ),
        ),

          
      );
  }
}

class AverageRatingWidget extends StatelessWidget {
  final double averageRating ;
   AverageRatingWidget({required this.averageRating });

  @override
  Widget build(BuildContext context) {
    double rating = (averageRating /100) * 5 ;
    return RatingBar.builder(
      initialRating: rating,
      minRating: 0,
      maxRating: 5,
      itemSize: 35,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.black,
      ), onRatingUpdate: (double value) {  },

    );
  }
}

