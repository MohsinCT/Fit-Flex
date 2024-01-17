// ignore_for_file: prefer_const_constructors

import 'package:fitflex_workout/Admin/login.dart';
import 'package:flutter/material.dart';

class UserOrAdmin extends StatelessWidget {
  const UserOrAdmin({super.key});
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/images/backgroundimg.jpeg',
          fit: BoxFit.cover,
          width: mediaQuery.size.width * 10,
          height: mediaQuery.size.height * 10,
        ),
        Center(
          child: Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 236, 229, 229).withOpacity(0.8),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, top: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 90,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image.asset(
                          'assets/images/logo.jpeg',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Fit-Flex',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => AdminLogin()));
                              },
                              icon: Icon(
                                Icons.admin_panel_settings_rounded,
                                color: Color.fromARGB(255, 7, 18, 227),
                              ),
                              iconSize: 70,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Admin',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.person_2,
                                  color: Color.fromARGB(255, 7, 18, 227),
                                ),
                                iconSize: 70,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'User',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
