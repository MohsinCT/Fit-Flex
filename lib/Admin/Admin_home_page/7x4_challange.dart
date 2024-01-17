// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter/material.dart';

Widget fullBody(BuildContext context) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  return Container(
    width: mediaQuery.size.width * 0.8,
    height: 230,
    decoration: const BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.srcOver),
            child: Image.asset(
              'assets/images/fullbody.jpeg',
              fit: BoxFit.cover,
              width: 350,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'FULL BODY 7x4 \nCHALLENGE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 45),
                child: Text(
                  'Start your body-toning journey to target all muscle groups\nand build your dream body in 4 weeks!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 120),
                    ),
                    child: const Text(
                      'START',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget lowerbody(BuildContext context) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  return Container(
    width: mediaQuery.size.width * 0.8,
    height: 230,
    decoration: const BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.srcOver),
            child: Image.asset(
              'assets/images/lowerbody.jpeg',
              fit: BoxFit.cover,
              width: 350,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'LOWER BODY 7x4 \nCHALLENGE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 45),
                child: Text(
                  'In just 4 weeks,power up your legs,boost lower body\nstrength,and enhance your overall strength!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 120),
                    ),
                    child: const Text(
                      'START',
                      style: TextStyle(color: Colors.black),
                    )),
              )
            ],
          )
        ],
      ),
    ),
  );
}
