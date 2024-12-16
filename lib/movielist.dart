import 'package:flutter/material.dart';
import 'package:sampleproject/third.dart';
void main() => runApp(const MovieList());

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MyAppState();
}

class _MyAppState extends State<MovieList> {

    List Movie =[
    "Ant Man 3",
    "Aquaman 2",
    "GOTG Vol 3",
    "Shazam 2",
  ];

    List Movie2 =[
      "GOTG Vol 3",
      "Shazam 2",
      "Aquaman 2",
      "Ant Man 3",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 50, 50, 50),
        appBar: 
          AppBar(
            backgroundColor: Colors.black,
            leading:const Icon(Icons.sort ,size: 35, color: Colors.white),
            title:  const Text("DP Cineplex",style:TextStyle(color: Colors.white ,fontWeight: FontWeight.bold)),
            centerTitle: true,
            actions: const [
              Icon(Icons.search,size: 30, color: Colors.white),
              SizedBox(width: 5,),
              Icon(Icons.filter_alt,size: 30, color: Colors.white)
            ],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 8, 15 , 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Playing Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20, )),
                      Text("View All",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 16,)),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(height: 390,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  const EdgeInsets.only(left:8),
                      child: Column(                                             
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  Third(movies: Movie[index]),
                                ),
                              );
                            },
                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child:Image.asset("assets/${Movie[index]}.jpg", height: 280,),
                            )
                          ),
                          const SizedBox(height: 10,),
                           Padding(
                            padding: const EdgeInsets.only(left:8,),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Movie[index], style: const TextStyle(color:Colors.white , fontWeight: FontWeight.bold),),
                              const SizedBox(height: 5,),
                              const Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,),
                                  Text("4.5",style: TextStyle(color:Colors.yellow),)
                                ],
                              ),
                              const SizedBox(height: 5,),
                              const Row(
                                children: [
                                Icon(Icons.access_time_filled_rounded, color:Colors.grey),
                                SizedBox(width: 8,),
                                Text("2hr 30min", style: TextStyle(color: Colors.grey),),
                                ],
                              )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }
                )
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 15 , 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Container(
                          padding: EdgeInsets.all(5),
                           decoration: const BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: const Text("COMMING SOON",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20, letterSpacing: 1 ))
                          ),
                          const Text("View All",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 16,)),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(height: 390,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  const EdgeInsets.only(left:8),
                      child: Column(                                             
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  Third(movies: Movie[index]),
                                ),
                              );
                            },                            child:ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child:Image.asset("assets/${Movie2[index]}.jpg", height: 280,),
                            )
                          ),
                          const SizedBox(height: 10,),
                           Padding(
                            padding: const EdgeInsets.only(left:8,),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Movie2[index], style: const TextStyle(color:Colors.white , fontWeight: FontWeight.bold),),
                              const SizedBox(height: 5,),
                              const Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow,),
                                  Text("4.5",style: TextStyle(color:Colors.yellow),)
                                ],
                              ),
                              const SizedBox(height: 5,),
                              const Row(
                                children: [
                                Icon(Icons.access_time_filled_rounded, color:Colors.grey),
                                SizedBox(width: 8,),
                                Text("2hr 30min", style: TextStyle(color: Colors.grey),),
                                ],
                              )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }
                )
                ),
              ],
            ),
        ),
        ),
      );
  }
}





