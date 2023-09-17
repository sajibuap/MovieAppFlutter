import 'package:flutter/material.dart';
import '../model/movie.dart';

class MovieDetailsCast extends StatelessWidget {
  final Movie movie;

  const MovieDetailsCast({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          MovieField(field: 'Cast', value: movie.actors),
          MovieField(field: 'Director', value: movie.director),
          MovieField(field: 'Awards', value: movie.awards),
        ],
      ),
    );
  }
}

// for this class need i create a extra class that will help this class

class MovieField extends StatelessWidget {
  final String field;
  final String value;

  const MovieField({Key? key, required this.field, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$field : ',
          style: const TextStyle(
            color: Colors.black38,
            fontSize: 13.0,
            fontWeight: FontWeight.w300,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        )
      ],
    );
  }
}
