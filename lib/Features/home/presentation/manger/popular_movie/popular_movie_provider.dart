import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../../core/services/service_locator.dart';
import '../../../data/data_sources/home_repo.dart';
import '../../../data/models/movie_model.dart';
import '../popular_movie_state.dart';



class PopularMovieProvider with ChangeNotifier {
  final HomeRepo homeRepo = getIt<HomeRepo>();
  HomeState _state = HomeInitial();

  HomeState get state => _state;

  Future<void> fetchPopularMovies() async {
    _state = HomeLoading();
    notifyListeners();

    final Either<Failure, List<MovieModel>> result = await homeRepo.getPopularMovies();

    result.fold(
      (failure) {
        _state = HomeError(failure.errorMessage);
      },
      (movies) {
        _state = HomeSuccess(movies);
      },
    );

    notifyListeners();
  }

  Future<void> fetchTopRatedMovies() async {
    _state = HomeLoading();
    notifyListeners();

    final Either<Failure, List<MovieModel>> result = await homeRepo.getTopRatedMovies();

    result.fold(
      (failure) {
        _state = HomeError(failure.errorMessage);
      },
      (movies) {
        _state = HomeSuccess(movies);
      },
    );

    notifyListeners();
  }
}
