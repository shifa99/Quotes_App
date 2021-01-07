import 'package:flutter/material.dart';
import 'package:weather_app/Screens/Quotes.dart';
import 'package:weather_app/Widgets/buildWelcomepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes:
      {
       Quotes.routeName:(context)=>Quotes(),
     },
     home:WelcomePage() ,
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height:MediaQuery.of(context).size.height*0.18,),
        BuildWelcomePage(),
        SizedBox(height:MediaQuery.of(context).size.height*0.25,),
        FlatButton(onPressed: ()
        {
          Navigator.pushNamed(context, Quotes.routeName);
        }, child: Container(
          margin: EdgeInsets.only(left:15),
          padding: EdgeInsets.only(top:13,bottom:13),
          width: MediaQuery.of(context).size.width*0.8,
          decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
          child: Text('Let''\'s Go',
          style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.white),
          textAlign: TextAlign.center,
          ),
        ),
        )
      ],
      ),
    );
  }
}