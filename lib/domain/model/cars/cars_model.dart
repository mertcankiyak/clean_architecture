// To parse this JSON data, do
//
//     final carsModel = carsModelFromJson(jsonString);

import 'dart:convert';

import 'package:edoktor_structure/domain/model/base_model.dart';

CarsModel carsModelFromJson(String str) => CarsModel.fromJson(json.decode(str));

String carsModelToJson(CarsModel data) => json.encode(data.toJson());

class CarsModel extends BaseModel {
  List<Car>? cars;

  CarsModel({
    this.cars,
  });

  factory CarsModel.fromJson(Map<String, dynamic> json) => CarsModel(
        cars: json["cars"] == null ? [] : List<Car>.from(json["cars"]!.map((x) => Car.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cars": cars == null ? [] : List<dynamic>.from(cars!.map((x) => x.toJson())),
      };

  @override
  fromJson(Map<String, dynamic> json) {
    return CarsModel.fromJson(json);
  }
}

class Car {
  int? id;
  String? car;
  String? carModel;
  String? carColor;
  int? carModelYear;
  String? carVin;
  String? price;
  bool? availability;

  Car({
    this.id,
    this.car,
    this.carModel,
    this.carColor,
    this.carModelYear,
    this.carVin,
    this.price,
    this.availability,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        id: json["id"],
        car: json["car"],
        carModel: json["car_model"],
        carColor: json["car_color"],
        carModelYear: json["car_model_year"],
        carVin: json["car_vin"],
        price: json["price"],
        availability: json["availability"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "car": car,
        "car_model": carModel,
        "car_color": carColor,
        "car_model_year": carModelYear,
        "car_vin": carVin,
        "price": price,
        "availability": availability,
      };
}
