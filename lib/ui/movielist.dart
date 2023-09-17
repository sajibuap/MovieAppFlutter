import 'package:flutter/material.dart';
import 'package:movieapp/model/movie.dart';
import 'package:movieapp/ui/movielistviewdetail.dart';

class MovieList extends StatelessWidget {
  final List<Movie> Moviedetails = Movie.getMovie();

  // final List movieList = [
  //   'Interesteller',
  //   'the king',
  //   'tent',
  //   'commando',
  //   'rambo',
  //   'home alone',
  //   'home alone 2',
  //   'home alone 3',
  //   'the kinght',
  //   'sita ramam',
  //   'Major',
  //   'the dictator',
  //   'the equilaizer',
  //   'the equilaizer 2',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text('MOVIE zoneBD'),
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
          itemCount: Moviedetails.length,
          itemBuilder: (BuildContext ctx, int index) {
            return Stack(
              children: [
                movieCard(Moviedetails[index], context),
                Positioned(
                    top: 10.0,
                    child: movieImages(Moviedetails[index].images[2]))
              ],
            );
            // return Card(
            //   child: ListTile(
            //     leading: CircleAvatar(
            //       child: Container(
            //           width: 300,
            //           height: 300,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(13.9),
            //               image: DecorationImage(
            //                   fit: BoxFit.cover,
            //                   image: NetworkImage(
            //                     Moviedetails[index].images[index],
            //                   ))),
            //           child: null),
            //     ),
            //     title: Text(Moviedetails[index].title),
            //     trailing: Text('...'),
            //     onTap: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => MovieListViewDetail(
            //                     movieName: Moviedetails[index].title,
            //                     movideobject: Moviedetails[index],
            //                   )));
            //     },
            //   ),
            // );
          }),
    );
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(left: 60.0),
        width: MediaQuery.of(context).size.width,
        height: 130.0,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 10.0, left: 54.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          movie.title,
                          style: const TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0),
                        ),
                      ),
                      Text('Rating: ${movie.imdRating} / 10',
                          style: movieFontStyle()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Released: ${movie.releasedYear}',
                          style: movieFontStyle()),
                      Text(movie.runtime, style: movieFontStyle()),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (BuildContext context) {
        return MovieListViewDetail(movieName: movie.title, movideobject: movie);
      })),
    );
  }

  Widget movieImages(String imageURL) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(imageURL), fit: BoxFit.cover)),
    );
  }

// code for text style

  TextStyle movieFontStyle() {
    return const TextStyle(
        color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14.0);
  }
}
