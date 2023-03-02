//how create a dive?

import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    Color miColor = Color(0xFF9CCC65);
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Food Met",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
