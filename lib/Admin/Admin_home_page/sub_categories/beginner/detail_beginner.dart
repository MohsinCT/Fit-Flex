import 'package:flutter/material.dart';

class DetailpageBeginner extends StatelessWidget {
  final String imageName;
  final String name;

  const DetailpageBeginner(
      {super.key, required this.imageName, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        },
        icon:const Icon(Icons.arrow_back,
        color: Colors.white,
        ),
        ),
      ),
      body: Column(
        children: [
          Stack(children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.srcOver),
              child: Image.asset(
                imageName,
                width: double.infinity,
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33, top: 130),
              child: Text(
                name,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )
          ])
        ],
      ),
    );
  }
}
