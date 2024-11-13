import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../manger/popular_movie/popular_movie_provider.dart';
import '../manger/top_rated_movie/top_rated_movie_provider.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PopularMovieProvider>(
          create: (_) => PopularMovieProvider()..fetchPopularMovies(),
        ),
        ChangeNotifierProvider<TopRatedMovieProvider>(
          create: (_) => TopRatedMovieProvider()..fetchTopRatedMovies(),
        ),
      ],
      child: const Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}


// return ChangeNotifierProvider(
//       create: (_) => PopularMovieProvider()..fetchPopularMovies(),
//       child: const Scaffold(
//         body: HomeViewBody(),
//       ),
//     );