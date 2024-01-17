// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:fitflex_workout/Admin/Admin_home_page/sub_categories/advanced/detail_advanced.dart';
import 'package:fitflex_workout/utils/constants.dart';
import 'package:flutter/material.dart';

class AdvancedCategory extends StatelessWidget {
  const AdvancedCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return advanced();
  }

  Widget advanced() {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 9.0,
        childAspectRatio: 2.7,
      ),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        List<String> images = [
          'assets/images/advanced/imgea1.jpeg',
          'assets/images/advanced/imgea2.jpeg',
          'assets/images/advanced/imgea3.jpeg',
          'assets/images/advanced/imgea4.jpeg',
          'assets/images/advanced/imgea5.jpeg',
        ];
        List<String> names = [
          'ABS ADVANCED',
          'CHEST ADVANCED',
          'ARM ADVANCED',
          'LEG ADVANCED',
          'SHOULDER & BACK\nADVANCED'
        ];

        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => DetailpageAdvanced(
                    imageName: images[index], name: names[index])));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Stack(children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.srcOver),
                  child: Image.asset(
                    images[index],
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Row(
                    children: [
                      energyLevelAdvanced(),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(43.0),
                      child: Text(
                        names[index],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
