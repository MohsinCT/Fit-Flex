import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

Widget energyLevelBeginner() {
  return const Row(
    children: [
      Icon(
        Icons.circle,
        color: Colors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: Colors.grey,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: Colors.grey,
        size: 20.0,
      ),
    ],
  );
}

Widget energyLevelIntermediate() {
  return const Row(
    children: [
      Icon(
        Icons.circle,
        color: Colors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: Colors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: Colors.grey,
        size: 20.0,
      ),
    ],
  );
}

Widget energyLevelAdvanced() {
  return const Row(
    children: [
      Icon(
        Icons.circle,
        color: Colors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: Colors.green,
        size: 20.0,
      ),
      Icon(
        Icons.circle,
        color: Colors.green,
        size: 20.0,
      ),
    ],
  );
}
 Widget curvedNavgationbar(){
  return CurvedNavigationBar(
        items: const [
          Icon(Icons.timer),
          Icon(Icons.bar_chart),
          Icon(Icons.settings)
        ],
         color: Colors.white,
        backgroundColor: Colors.transparent,
        height: 60,
  );
 }
