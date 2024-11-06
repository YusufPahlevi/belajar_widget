import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halaman Login'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Builder(
              builder: (context) {
                return Column(
                  children: [ 
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterLogo(
                          size:50
                        ),
                        Text(
                          'Flutter',
                          style: TextStyle(fontSize: 35, color: Colors.blue),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                        
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                    
                    ),
                    const SizedBox(height: 20,),
                    const Text('forgot password?',style: TextStyle(color: Colors.red),),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
                      ),
                      onPressed: () {
                        print('login berasil');
                      },                  
                      child: const Text('Login'), 
                    ),
                    Container(
                      margin: EdgeInsets.all(50),
                      child: const Text('new user? get account'),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
