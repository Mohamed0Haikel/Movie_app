import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/services/api_service.dart';
import '../models/movie_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<MovieModel>>> getPopularMovies() async {
    try {
      final response = await apiService.get('/movie/popular');
      final movies = (response.data['results'] as List)
          .map((json) => MovieModel.fromJson(json))
          .toList();
      return Right(movies);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure('Unexpected error occurred: $e'));
    }
  }

  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies() async {
    try {
      final response = await apiService.get('/movie/top_rated');
      final movies = (response.data['results'] as List)
          .map((json) => MovieModel.fromJson(json))
          .toList();
      return Right(movies);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioError(e));
    } catch (e) {
      return Left(ServerFailure('Unexpected error occurred: $e'));
    }
  }
}