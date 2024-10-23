import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/repo/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiServise>(ApiServise(Dio()));
  getIt.registerSingleton<HomeServise>(HomeServise(getIt.get<ApiServise>()));
}
