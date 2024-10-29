import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url1 = Uri.parse('https://www.threads.net/@gdgoc_hust?hl=vi');


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Go back logic here
          },
        ),
        title: Text(
          'gdgoc_hust',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false, // Centers the title
        actions: [
          IconButton(
            icon: Icon(Icons.send, color: Colors.black),
            onPressed: () {
              // Send button action here
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Overflow menu action here
            },
          ),
        ],
      ),
      
      body: Column(
        children: [
          // Following Row
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                  CircleAvatar(
                    radius: 60, // Profile picture size
                    backgroundImage: NetworkImage('gdgoc_avt.jpg'), 
                  ),
                  SizedBox(height: 10),
                  Text(
                    'GDG-HUST',
                    style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                
                Column(
                  children: [
                    Text(
                      '12',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'bài viết',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '74',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'người theo dõi',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '71',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'đang theo dõi',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Add additional widgets/content here

          Row(children: [
            Padding(padding: const EdgeInsets.only(left: 35.0),
            child: 
              Column(children: [
                InkWell(
                  child: Text('@ gdgoc_hust',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black, // Text color
                      fontWeight: FontWeight.bold, // Font weight
                    ),
                    textAlign: TextAlign.center,),
                  onTap: () => launchUrl(_url1),
                ),
                Text('i have 2 sides',
                style: TextStyle(
                  fontSize: 18,
                  )
                ),
                Text('Xem bản dịch',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  )
                ),
              ],
            ),
            ),
          ],),

          Row(
            children: [
              
            ],
          )

          Expanded(
            child: Center(
              child: Text('Profile Content Here'),
            ),
          ),
        ],
      ),
    );
  }
}