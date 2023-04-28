import 'package:dartz/dartz.dart';
import 'package:edoktor_structure/domain/model/cars/cars_model.dart';

abstract class ICarRepository {
  Future<CarsModel?> getCars();
}
