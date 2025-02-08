import 'package:crc_manager/rooms.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20));
  }

  // Function to create a container with text
  Widget customContainer(String text) {
    return InkWell(
      onTap: () {
        // Handle tap event
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FloorDetailPage(floorNumber: text),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$text tapped!'),
            duration: const Duration(seconds: 1),
          ),
        );
      },
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 80,
          width: 300,
          decoration: myBoxDecoration(),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF102B3F),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Floors',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            customContainer('1'),
            customContainer('2'),
            customContainer('3'),
            customContainer('4'),
            customContainer('5'),
            customContainer('6'),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFCADCFC),
    );
  }
}
