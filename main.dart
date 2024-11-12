import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Root widget
      home: Scaffold(
        appBar: AppBar(

          title: Container(child: Text('Container Widget',style: TextStyle(
            color:Colors.white
          ),),
            color: const Color.fromARGB(255, 2, 69, 214),
            alignment: Alignment.center,
            width:2200,
            height: 100,
            
            
          )
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
               Center(
        child: Container(
          height: 200,
          width: 850,
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 16, 58, 197),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color.fromARGB(255, 17, 106, 223)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Title: Flutter Tutoral',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Divider(color: Colors.black),
              const Text(
                'Description: This is a card-like layout using a Container widget. It has padding, margin, and a box shadow.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('visit to read more')))
            ],
          ),
        ),
      ),
  
       
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}