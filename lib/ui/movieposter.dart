import 'package:flutter/material.dart';
import 'package:movieapp/model/movie.dart';
import 'package:movieapp/ui/moviedetailsheader.dart';

class MoviePoster extends StatelessWidget {
  final Movie movie;

  const MoviePoster({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        children: [
          CreatePoster(posterImage: movie.images[0].toString()),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(child: MovieDetailsHeader(movie: movie)),
        ],
      ),
    );
  }
}

class CreatePoster extends StatelessWidget {
  final String posterImage;

  const CreatePoster({Key? key, required this.posterImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderradius = const BorderRadius.all(Radius.circular(10.0));

    return Card(
      elevation: 5.0,
      child: ClipRRect(
        borderRadius: borderradius,
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(posterImage), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
