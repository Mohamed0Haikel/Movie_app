import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../manger/popular_movie_state.dart';
import '../../manger/top_rated_movie/top_rated_movie_provider.dart';
import 'movies_list_view_item.dart';

class MoviesListView extends StatelessWidget {
  const MoviesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TopRatedMovieProvider>(
      builder: (context, provider, child) {
        final state = provider.state;

        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeSuccess) {
          return ListView.builder(
            // shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.movies.length,
            itemBuilder: (context, index) {
              final movie = state.movies[index];
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 10.0,
                ),
                child: MoviesListViewItem(movie: movie,),
              );
            },
          );
        } else if (state is HomeError) {
          return Center(child: Text(state.message));
        }

        return Container();
      },
    );
  }
}


// ListView.builder(
//       // shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       padding: EdgeInsets.zero,
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return const Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: 30.0,
//             vertical: 10.0,
//           ),
//           child: MoviesListViewItem(),
//         );
//       },
//     )