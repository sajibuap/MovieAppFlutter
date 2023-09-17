import 'package:flutter/material.dart';
import 'package:movieapp/model/movie.dart';
import 'package:movieapp/ui/moviedetailcast.dart';
import 'package:movieapp/ui/movieposter.dart';
import 'package:movieapp/ui/moviethumbnail.dart';
import './moviebottomposter.dart';

class MovieListViewDetail extends StatelessWidget {
  //passing data between two screens
  final String movieName;
  final Movie movideobject;

  const MovieListViewDetail(
      {Key? key, required this.movieName, required this.movideobject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail page'),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
        children: [
          MovieDetailsThumbnaile(thumbnail: movideobject.images[0].toString()),
          MoviePoster(movie: movideobject),
          HorizontalLine(),
          MovieDetailsCast(movie: movideobject),
          HorizontalLine(),
          MovieBottomPoster(posters: movideobject.images),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
          //   child: Divider(
          //     color: Colors.grey,
          //     height: 0.5,
          //   ),
          // )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget HorizontalLine() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 13.0),
      child: Container(
        height: 0.5,
        color: Colors.grey.shade400,
      ),
    );
  }
}
