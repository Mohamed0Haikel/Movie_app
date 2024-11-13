import '../../data/models/movie_model.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final List<MovieModel> movies;

  HomeSuccess(this.movies);
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);
}
