import 'package:flutter/material.dart';
import 'main.dart';

class Planos extends StatelessWidget {
  const Planos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.white,
        child: const SafeArea(
          child: Voltar(),
        ),
      ),
    );
  }
}


class Voltar extends StatelessWidget {
  const Voltar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight * 0.1,
      child: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.001,
            left: screenWidth * 0.01,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 40, 
                color: Color(0xFFDD7514), 
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                      (Route<dynamic> route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


