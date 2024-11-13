import 'package:flutter/material.dart';

import '../../../../../core/services/api_service.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/movie_model.dart';
import 'movie_rating.dart';
import 'movie_action.dart';
import 'custom_movie_item.dart';

class MovieDetailsSection extends StatelessWidget {
  final MovieModel movie;
  const MovieDetailsSection({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.18,
          ),
          child: CustomMovieImage(imgPath: '${ApiService.imgBaseURL}${movie.posterPath}',),
        ),
        const SizedBox(
          height: 40.0,
        ),
        Text(
          movie.title,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 3.0,
        ),
        Opacity(
          opacity: .9,
          child: Text(
            movie.releaseDate,
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Opacity(
          opacity: .9,
          child: Text(
            movie.overview,
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 14.0,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37.0,
        ),
        // const MoviesAction(),
      ],
    );
  }
}
