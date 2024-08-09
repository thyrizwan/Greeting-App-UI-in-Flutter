import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeting App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello, World!',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Welcome to Flutter!',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    width: 280,
                    height: 280,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://storage.googleapis.com/cms-storage-bucket/9abb63d8732b978c7ea1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade50,
                        foregroundColor: Colors.green.shade700),
                    onPressed: () {
                      final myMessage = SnackBar(
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          'Button Pressed!',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: Colors.green.shade50,
                        duration: Duration(seconds: 3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(myMessage);
                    },
                    child: Text('A Message For You'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
