import 'package:flutter/material.dart';


import '../../../../core/services/api_service.dart';
import '../../data/models/movie_model.dart';
import 'widgets/movie_details_view_body.dart';

class MovieDetailsView extends StatelessWidget {
  final MovieModel movie;
  const MovieDetailsView({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              '${ApiService.imgBaseURL}${movie.posterPath}',
            ),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        child: SafeArea(
          child: MovieDetailsViewBody(movie: movie),
        ),
      ),
    );
  }
}
