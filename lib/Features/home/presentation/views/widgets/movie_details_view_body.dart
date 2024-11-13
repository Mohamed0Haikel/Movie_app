import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../data/models/movie_model.dart';
import 'movie_details_section.dart';
import 'custom_movie_details_app_bar.dart';
import 'similar_movie_section.dart';

class MovieDetailsViewBody extends StatelessWidget {
  final MovieModel movie;
  const MovieDetailsViewBody({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: CustomMovieDetailsAppBar(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: MovieDetailsSection(movie: movie,),
              ),
              const Expanded(
                child: SizedBox(
                  height: 40.0,
                ),
              ),
              const SimilarMoviesSection(),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
