import 'package:flutter/material.dart';
import 'package:movie_app/Features/home/data/models/movie_model.dart';

import 'widgets/movie_details_view_body.dart';

class MovieDetailsView extends StatelessWidget {
  final MovieModel movie;
  const MovieDetailsView({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: MovieDetailsViewBody(movie: movie),
      ),
    );
  }
}
