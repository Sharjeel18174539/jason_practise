import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfbfcff),
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text('Training',
                style: TextStyle(fontSize: 30,
                color: Color(0xFF302f51),
                  fontWeight: FontWeight.w700,
                ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                size: 20,
                color: Color(0xFF3b3c5c),
                ),
                SizedBox(width: 10,),
                Icon(Icons.calendar_today_outlined,
                size: 20,
                  color: Color(0xFF3b3c5c),
                ),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios,
                  size: 20,
                  color: Color(0xFF3b3c5c),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('Your Program',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF414160),
                ),
                ),
                Expanded(child: Container()),
                Text('Details',
                style: TextStyle(fontSize: 20,color: Color(0xFF6588f4),
                ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward,
                size: 20,
                color: Color(0xFF3b3c5c),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xff0f17ad).withOpacity(0.8),
                      Color(0xFF6985e8).withOpacity(0.9),
                    ]
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(80),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF6985e8).withOpacity(0.2),
                    offset: Offset(5, 10),
                    blurRadius: 10,
                  )
                ]
              ),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Next Workout',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(height: 5,),
                    Text('Legs Toning',
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    SizedBox(height: 5,),
                    Text('and Glutes Workout',
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.timer,
                            size: 20,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10,),
                            Text('60 min', style: TextStyle(fontSize: 20, color: Colors.white),
                            ),

                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff0f17ad),
                                blurRadius: 10,
                                offset: Offset(4, 10)
                              )
                            ]
                          ),
                        ),
                        Icon(Icons.play_circle_fill,
                          size: 60,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


