import 'package:flutter/material.dart';
import 'package:movie_app/config/config.dart';
import 'package:movie_app/model/movie_models.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({super.key, required this.movieModel});

  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            movieModel.title,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Rating: '
            '${movieModel.voteAverage}',
          ),
          Text(
            'Overview: '
            '${movieModel.overview}',
          )
        ],
      ),
    );
  }
}
