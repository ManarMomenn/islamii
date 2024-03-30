import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset('assets/images/main _background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),

    );
  }
}
