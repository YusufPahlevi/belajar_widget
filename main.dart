import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF075E54),
            title: Text('WhatsApp'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
            bottom: TabBar(
              indicatorColor: Colors.greenAccent[400],
              indicatorWeight: 6.0,
              labelPadding: EdgeInsets.all(10.0),
              tabs: <Widget>[
                Icon(Icons.camera_alt),
                Text('CHAT'),
                Text('STATUS'),
                Text('PANGGILAN'),
              ],
            ),
          ),
        
          body: TabBarView(
            children: <Widget>[
              Center(child: Text('camera')),
              ListTile(
                leading: ClipRRect( 
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image(image: NetworkImage('https://www.makintau.com/wp-content/uploads/2020/02/vanda-margraf-image.png'))),
                title: Text('+62-455-989-0987'),
                subtitle: Text('Apakah besok ada tugas?'),
                trailing: Text(
                  '18.05',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Center(child: Text('Status')),
              ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image(image: NetworkImage('https://www.makintau.com/wp-content/uploads/2020/02/vanda-margraf-image.png'))),
                title: Text('+62-455-989-0987'),
                subtitle: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back, size: 16.0, color: Colors.green),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('Kemarin 21.25')),
                  ],
                ),
                trailing: Icon(Icons.call, color: Colors.green),
              )
            ],
          ),
        ),
      ),
    );
  }
}