import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frederick Roberto Wifani 123210190', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman')),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: MyBody(),
      ),
    );
  }
}

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  String nama = '';
  String notes = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            'Nama Character: $nama',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
          ),
          SizedBox(height: 10),
          Text(
            'Notes: $notes',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Times New Roman'),
          ),
          SizedBox(height: 20),
          TextField(
            onChanged: (value) {
              setState(() {
                nama = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'Masukkan Nama',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            onChanged: (value) {
              setState(() {
                notes = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'Masukkan Notes',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(80.0, 0.0, 0.0, 0.0), // Padding untuk tombol pertama
                child: ElevatedButton(
                  onPressed: () {
                    // Implementasi logika untuk button pertama
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Button 1'),
                          content: Text('Anda menekan tombol pertama'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Button 1'),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 0.0, 80.0, 0.0), // Padding untuk tombol kedua
                child: ElevatedButton(
                  onPressed: () {
                    // Implementasi logika untuk button kedua
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Button 2'),
                          content: Text('Anda menekan tombol kedua'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Button 2'),
                ),
              ),
            ],
          ),





          SizedBox(height: 20),
          GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            children: [
              Image.asset(
                'assets/spongebob.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/squidward.png',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/krabs.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/sandy.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/plankton.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/puff.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/orangtua.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/larry.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/pearl.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/gary.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/mermaid.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'assets/king.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
