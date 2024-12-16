import 'package:flutter/material.dart';
import 'movielist.dart';

void main() => runApp(const Getstart());

class Getstart extends StatefulWidget {
  const Getstart({super.key});

  @override
  State<Getstart> createState() => _MyAppState();
}

class _MyAppState extends State<Getstart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpeg'),
              fit: BoxFit.cover,
              opacity: 0.4,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'DP Cineplex',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Grab your tickets now',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  MovieList(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    textStyle: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.black,
                    ),
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
