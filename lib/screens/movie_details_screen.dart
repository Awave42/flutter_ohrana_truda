import 'package:flutter/material.dart';
import 'package:ohrana_truda_1/model/movie.dart';

class MovieDetailsScreen extends StatelessWidget {
  final Movie movie;

  MovieDetailsScreen(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 17.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
