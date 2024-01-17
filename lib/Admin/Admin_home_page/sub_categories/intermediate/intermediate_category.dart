// ignore_for_file: prefer_const_constructors

import 'package:fitflex_workout/Admin/Admin_home_page/sub_categories/intermediate/detail_intermediate.dart';
import 'package:fitflex_workout/utils/constants.dart';
import 'package:flutter/material.dart';

class IntermediateCategory extends StatelessWidget {
  const IntermediateCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return intermediate();
  }

  Widget intermediate() {
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
          'assets/images/intermediate/imge1.jpeg',
          'assets/images/intermediate/imge2.jpeg',
          'assets/images/intermediate/imge3.jpeg',
          'assets/images/intermediate/imge4.jpeg',
          'assets/images/intermediate/imge5.jpeg',
        ];
        List<String> names = [
          'ABS INTERMEDIATE',
          'CHEST INTERMEDIATE',
          'ARM INTERMEDIATE',
          'LEG INTERMEDIATE',
          'SHOULDER & BACK\nINTERMEDIATE'
        ];

        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => DetailPageIntermediate(
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
                      energyLevelIntermediate(),
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
