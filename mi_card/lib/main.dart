import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          //we can add margin which is for outside of the widget
          //and padding which is for inside of the widget
          //for more see flutter.dev/docs/development/ui/widgets/layout

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 75.0,
                backgroundImage: AssetImage('images/upasana.jpg'),
              ),

              //using fonts in flutter
              //download from google fonts.com then we get zip file from where we create new folder and
              //put file .ttf where the process is like that of image
              const Text(
                'Upasana Khatiwada',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Color.fromRGBO(178, 223, 219, 1),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
                //to put the line in the middle 
              const SizedBox(
                height: 20.0,
                width: 150.0,
              child:Divider(
               // height: 10.0,
                thickness: 5.0,
                color: Colors.white,
              ),
               ),
              // ignore: avoid_unnecessary_containers
              Container(
                color: Colors.white,
                //to increase the height of the box
                padding: const EdgeInsets.all(10.0),
                //to make it look like a box
                margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Row(
                  children: const <Widget>[
                    //icons class in flutter docs or see material.io
                    //or material palette.com (very useful for choosing colour)
                    Icon(Icons.phone, 
                    color: Color.fromARGB(255, 4, 108, 98)
                    ),
                    SizedBox(width: 10,),
                    Text('+977 98364732687',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 77, 64, 1),
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,

                    )),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(10.0),
                //to make it look like a box
                margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Row(children: const<Widget>[
                  Icon(Icons.email,
                  color: Colors.teal,
                  ),
                  SizedBox(width: 10.0,),
                  Text('upashana1234@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 94, 85),
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',

                  ),
                  ),

                ],),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
