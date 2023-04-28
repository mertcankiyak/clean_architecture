import 'package:dartz/dartz.dart';
import 'package:edoktor_structure/core/network/network_manager.dart';
import 'package:edoktor_structure/data/repository/repository_manager.dart';
import 'package:edoktor_structure/domain/model/cars/cars_model.dart';
import 'package:dio/dio.dart';
import '../../../domain/repository/car/car_repository.dart';

class CarRepositoryImpl extends ICarRepository {
  RepositoryManager? repositoryManager;
  CarRepositoryImpl({required this.repositoryManager});

  @override
  Future<CarsModel?> getCars() async {
    CarsModel? cars = await repositoryManager?.fetch(path: "cars", model: CarsModel());
    return cars;
  }
}
