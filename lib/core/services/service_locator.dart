import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Features/home/data/data_sources/home_repo.dart';
import '../../Features/home/data/data_sources/home_repo_impl.dart';
import '../database/cache_helper.dart';
import '../utils/functions/functions.dart';
import 'api_service.dart';


final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<Dio>(() => Dio());

  getIt.registerSingleton<ApiService>(ApiService());

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt<ApiService>()));

  getIt.registerLazySingleton<CacheHelper>(() => CacheHelper());

  getIt.registerSingleton<Functions>(Functions());

  getIt.registerSingletonAsync<SharedPreferences>(() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs;
  });
}
