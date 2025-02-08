import 'package:flutter/material.dart';

// New page to display the floor details
class FloorDetailPage extends StatelessWidget {
  final String floorNumber;

  const FloorDetailPage({super.key, required this.floorNumber});

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    );
  }

  // Function to create a container with text
  Widget customContainer(BuildContext context, String text) {
    String room = '$floorNumber-$text';
    return InkWell(
      onTap: () {
        // Handle tap event
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('$room tapped!'),
            duration: const Duration(seconds: 1),
          ),
        );
      },
      child: Material(
        elevation: 8,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 120,
          width: 350,
          decoration: myBoxDecoration(),
          alignment: Alignment.center,
          child: Text(
            'CRC $room',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
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
            'Floor $floorNumber',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Classrooms',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            customContainer(context, '1'),
            customContainer(context, '2'),
            customContainer(context, '3'),
            customContainer(context, '4'),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFCADCFC),
    );
  }
}
