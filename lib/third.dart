import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  final String movies;

  Third({required this.movies});

  final List<String> formats = [
    "2D",
    "3D",
    "4DX",
    "IMAX",
  ];

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  int selectedIndex = 0; // Tracks the selected format


       List days = [
    "S",
    "M",
    "T",
    "W",
    "Th",
    "F",
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Movie image section
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.9,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage("assets/${widget.movies}.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.6,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top row: Back and action icons
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.share_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.favorite_outline,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Bottom row: Movie title
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                          left: 10,
                          right: 10,
                        ),
                        child: Text(
                          widget.movies,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Formats:",
                            style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.w600,
                            ),
                          ),
                        const SizedBox(width: 10),
                          SizedBox(
                            height: 25,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.formats.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 8 ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: selectedIndex == index
                                          ? Colors.yellow
                                          : Colors.black,
                                      border: Border.all(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        widget.formats[index],
                                        style: TextStyle(
                                          color: selectedIndex == index
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text("Select Date", style: TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                       const SizedBox(height: 8),
                      // Formats options
                      SizedBox(
                        height: 70,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? Colors.yellow
                                      : Colors.black,
                                ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '${days[index]}',
                                        style: TextStyle(
                                          color: selectedIndex == index
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "${index + 8}",
                                        style: TextStyle(
                                          color: selectedIndex == index
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.yellow,),
                          Text("City Complex Cinema", style: TextStyle(color: Colors.white , fontWeight: FontWeight.w600),),
                          Spacer(),
                          Text("Hall A" , style: TextStyle(color: Colors.white70 )),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Text("Select Time", style: TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                       const SizedBox(height: 8),
                      // Formats options
                      SizedBox(
                        height: 30,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? Colors.yellow
                                      : Colors.grey,
                                ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "${index + 8} : 30 AM",
                                        style: TextStyle(
                                          color: selectedIndex == index
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 15,),
                      const Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.yellow,),
                          Text("City Complex Cinema", style: TextStyle(color: Colors.white , fontWeight: FontWeight.w600),),
                          Spacer(),
                          Text("Hall B" , style: TextStyle(color: Colors.white70 )),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Text("Select Time", style: TextStyle(color:Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
                       const SizedBox(height: 8),
                      // Formats options
                      SizedBox(
                        height: 30,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? Colors.yellow
                                      : Colors.grey,
                                ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "${index + 11} : 30 AM",
                                        style: TextStyle(
                                          color: selectedIndex == index
                                              ? Colors.black
                                              : Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Material(
                        color: const Color.fromARGB(255, 205, 184, 0).withOpacity(0.9),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width,
                            child: const Center(
                              child: Text(
                                "Book Ticket",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
