
import 'package:flutter/material.dart';
//basic
class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return 
Scaffold(
          appBar: AppBar(
            title: const Text("My first app" , style: TextStyle(color: Colors.white),),
            backgroundColor:  Color.fromARGB(255, 255, 0, 255),
            centerTitle: true,
          ),
          body: Center(
            child: Text("Hello world",
            style: TextStyle(fontSize: 22, color: Colors.pink),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: const Icon(Icons.add,color: Color.fromARGB(255, 255, 255, 255),),
            backgroundColor: Colors.red[600],   ), 
);
  }
}