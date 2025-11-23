import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F1E8),
      appBar: AppBar(
        centerTitle: true,
        elevation: 4,
        shadowColor: Colors.brown,
        backgroundColor: Color(0xFFF7F1E8),
        title: Text(
          'Counter App',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "$count",
          style: TextStyle(
            color: Colors.brown,
            fontSize: 50,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.brown,
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Icon(Icons.add, color: Colors.white),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            backgroundColor: Colors.brown,
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            child: Icon(Icons.refresh, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
