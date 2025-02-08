import 'package:crc_manager/floors.dart';
import 'package:crc_manager/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CRCManagerApp());
}

class CRCManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ModePage(),
    );
  }
}

class ModePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF102B3F), // Dark background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            LoginScreen(),
            SizedBox(height: 100),
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Login as text
                  Text(
                    'Login as',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  // Admin Button
                  LoginButton(
                    label: 'Admin',
                    icon: Icons.admin_panel_settings,
                    onPressed: () {
                      // Navigate to admin screen or add functionality here
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                  ),

                  // Guest Button
                  LoginButton(
                    label: 'Guest',
                    icon: Icons.group,
                    onPressed: () {
                      // Navigate to guest screen or add functionality here
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MyHomePage(title: 'CRC Manager')));
                    },
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Logo Section
        CircleAvatar(
          backgroundColor: Color(0xFF102B3F),
          radius: 80,
          backgroundImage: AssetImage(
              'assets/images/VNIT_logo.png'), // Replace with your logo asset path
        ),
        SizedBox(height: 20),
        // Title
        Text(
          'CRC Manager',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class ModeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Login as text
          Text(
            'Login as',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),

          // Admin Button
          LoginButton(
            label: 'Admin',
            icon: Icons.admin_panel_settings,
            onPressed: () {
              // Navigate to admin screen or add functionality here
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),

          // Guest Button
          LoginButton(
            label: 'Guest',
            icon: Icons.group,
            onPressed: () {
              // Navigate to guest screen or add functionality here
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyHomePage(title: 'CRC Manager')));
            },
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  LoginButton({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 150),
        backgroundColor: Color(0xFF102B3F), // Button color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      icon: Icon(icon, color: Colors.white),
      label: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
