import 'package:flutter/material.dart';

class MovieBottomPoster extends StatelessWidget {
  final List<String> posters;

  const MovieBottomPoster({Key? key, required this.posters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'Movie Posters',
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
        ),
        Container(
          height: 160,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (ctx, index) => const SizedBox(
              width: 10.0,
            ),
            itemCount: posters.length,
            itemBuilder: (context, indx) {
              return ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                child: Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: 170,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: NetworkImage(posters[indx]))),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
