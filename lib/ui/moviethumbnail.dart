import 'package:flutter/material.dart';

class MovieDetailsThumbnaile extends StatelessWidget {
  final String thumbnail;

  const MovieDetailsThumbnaile({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 170.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(thumbnail), fit: BoxFit.cover)),
            ),
            const Icon(
              Icons.play_circle_outline,
              size: 100,
              color: Colors.white,
            )
          ],
        ),

        // last in first out

        Container(
          height: 80,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0x00f5f5f5),
              Color(0xfff5f5f5),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
        )
      ],
    );
  }
}
