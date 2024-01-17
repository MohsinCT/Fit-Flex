import 'package:flutter/material.dart';

class AddingWorkouts extends StatelessWidget {
  const AddingWorkouts({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ADD WORKOUTS'

          ),
      ),
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
    ),
    );
  }
}