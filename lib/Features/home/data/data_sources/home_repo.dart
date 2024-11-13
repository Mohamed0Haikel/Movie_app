import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../models/movie_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieModel>>> getPopularMovies();
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies();
}