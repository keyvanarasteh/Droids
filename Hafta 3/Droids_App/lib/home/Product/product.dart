import 'package:flutter/material.dart';

class NewWidget extends StatelessWidget {
  final String resim;
  final String yazi;

  const NewWidget({
    Key? key,
    required this.resim,
    required this.yazi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(resim),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(yazi)
          ],
        ),
      ],
    );
  }
}
