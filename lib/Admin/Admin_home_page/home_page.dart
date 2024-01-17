// ignore_for_file: prefer_const_constructors

import 'package:fitflex_workout/Admin/Admin_home_page/7x4_challange.dart';
import 'package:fitflex_workout/Admin/Admin_home_page/sub_categories/advanced/advanced_category.dart';
import 'package:fitflex_workout/Admin/Admin_home_page/sub_categories/beginner/beginner_category.dart';
import 'package:fitflex_workout/Admin/Admin_home_page/sub_categories/intermediate/intermediate_category.dart';
import 'package:fitflex_workout/Admin/Admin_home_page/workout_results.dart';
import 'package:fitflex_workout/Admin/adding_workouts.dart';
import 'package:fitflex_workout/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      bottomNavigationBar: curvedNavgationbar(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'HOMEWORKOUT',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (ctx) => AddingWorkouts()));
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        width: mediaQuery.size.width,
        height: mediaQuery.size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.admin_panel_settings,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Admin',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: results(context),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '7x4CHALLENGE',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    fullBody(context),
                    SizedBox(
                      width: 20,
                    ),
                    lowerbody(context),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'BEGINNER',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(0.9)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Column(
                  children: const [
                    BeginnerCatagory(),
                    Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Text(
                            'INTERMEDIATE',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    IntermediateCategory(),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text(
                            'ADVANCED',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    AdvancedCategory()
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
