import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../Features/home/data/data_sources/home_repo.dart';
import '../../Features/home/data/data_sources/home_repo_impl.dart';
import 'api_service.dart';


final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Dio>(() => Dio());

  getIt.registerSingleton<ApiService>(ApiService());

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt<ApiService>()));
}
