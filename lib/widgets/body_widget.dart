import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  final List<int> randomNumbers;
  final List<String> imageUrl = [
    "assets/images/bar.png",
    "assets/images/cerise.png",
    "assets/images/cloche.png",
    "assets/images/diamant.png",
    "assets/images/fer-a-cheval.png",
    "assets/images/pasteque.png",
    "assets/images/sept.png"
  ];

  BodyWidget({super.key, imageUrl, required this.randomNumbers});

  List<Widget> getImages(List<int> randomNumbers) {
    return [
      Image.asset(imageUrl[randomNumbers[0]], width: 50, height: 50,),
      Image.asset(imageUrl[randomNumbers[1]], width: 50, height: 50,),
      Image.asset(imageUrl[randomNumbers[2]], width: 50, height: 50,)
    ];
  }

    @override
    Widget build(BuildContext context) {
      return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: getImages(randomNumbers)/*[
            Image.asset("assets/images/sept.png", width: 50, height: 50,),
            Image.asset("assets/images/sept.png", width: 50, height: 50,),
            Image.asset("assets/images/sept.png", width: 50, height: 50,),
          ]*/
        ),
      );
    }
}