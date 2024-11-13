import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/services/api_service.dart';
import '../../manger/popular_movie/popular_movie_provider.dart';
import '../../manger/popular_movie_state.dart';
import '../movie_details_view.dart';
import 'custom_movie_item.dart';

class FeaturedMovieListView extends StatelessWidget {
  const FeaturedMovieListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PopularMovieProvider>(
      builder: (context, provider, child) {
        final state = provider.state;

        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                final movie = state.movies[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetailsView(movie: movie),
                        ),
                      );
                    },
                    child: CustomMovieImage(
                      imgPath: '${ApiService.imgBaseURL}${movie.posterPath}',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is HomeError) {
          return Center(child: Text(state.message));
        }

        return Container();
      },
    );
  }
}


