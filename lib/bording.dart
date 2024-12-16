import 'package:flutter/material.dart';

class BORDING extends StatefulWidget {
  const BORDING({super.key});

  @override
  State<BORDING> createState() => _MyAppState();
}

class _MyAppState extends State<BORDING> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("BORDING PASS", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        ),
        body:   const Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("CAI",
                  style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
                    child:             
                    Divider(color: Colors.white,thickness: 2,),
                    ),
                  Icon(Icons.airplane_ticket_rounded,color: Colors.white,size: 45,),
                  SizedBox(
                    width: 40,
                    child:             
                    Divider(color: Colors.white,thickness: 2,),
                    ),
                  Text("ASW",
                  style: TextStyle(color: Colors.white,fontSize: 45,fontWeight: FontWeight.bold),
                  ),
                  ],
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                  child:Column(
                    children: [
                       Padding(
                         padding: EdgeInsets.all(10.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("PASSANGER", style: TextStyle(color: Colors.blue,fontSize:20 )),
                             Text("DEPARTURE", style: TextStyle(color: Colors.blue,fontSize:20 )),
                          ],
                          ),
                       ),
                      Padding(
                         padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Mazen", style: TextStyle(color: Colors.black,fontSize:20 )),
                             Text("Mohamed", style: TextStyle(color: Colors.black,fontSize:20 )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                  child:Column(
                    children: [
                       Padding(
                         padding: EdgeInsets.all(10.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("FLIGHT", style: TextStyle(color: Colors.blue,fontSize:20 )),
                            Text("GATE", style: TextStyle(color: Colors.blue,fontSize:20 )),
                             Text("SEAT", style: TextStyle(color: Colors.blue,fontSize:20 )),
                          ],
                          ),
                       ),
                      Padding(
                         padding: EdgeInsets.all(10.0),
                        child: Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("SK7823", style: TextStyle(color: Colors.black,fontSize:20 )),
                              Text("24A", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize:20 )),
                              Text("16", style: TextStyle(color: Colors.black,fontSize:20 )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
