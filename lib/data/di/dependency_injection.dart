import 'package:edoktor_structure/core/network/network_manager.dart';
import 'package:edoktor_structure/data/repository/repository_manager.dart';
import 'package:edoktor_structure/domain/usecase/get_cars/get_cars_usecase.dart';
import 'package:edoktor_structure/presentation/home/viewmodel/home_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import '../repository/car/car_repository_imp.dart';

final di = GetIt.instance;

Future<void> setupDi() async {
  //Network - Service
  di.registerLazySingleton<Dio>(() => NetworkManager.instance.dio);
  di.registerLazySingleton<RepositoryManager>(() => RepositoryManager(dio: di<Dio>()));
  di.registerLazySingleton<CarRepositoryImpl>(() => CarRepositoryImpl(repositoryManager: di<RepositoryManager>()));

  //Usecase
  di.registerFactory<GetCarsUseCase>(() => GetCarsUseCase(iCarRepository: di<CarRepositoryImpl>()));

  //Viewmodel - Bloc
  di.registerFactory<HomeBloc>(() => HomeBloc(getCarsUseCase: di<GetCarsUseCase>()));
}
