part of 'home_bloc.dart';

enum HomeStateStatus { initial, loading, error, completed }

class HomeState {
  HomeStateStatus? homeStateStatus;
  Failure? failure;
  CarsModel? carsModel;

  HomeState({this.homeStateStatus = HomeStateStatus.initial, this.carsModel, this.failure});

  HomeState copyWith({
    HomeStateStatus? homeStateStatus,
    Failure? failure,
    CarsModel? carsModel,
  }) {
    return HomeState(
        homeStateStatus: homeStateStatus ?? this.homeStateStatus,
        failure: failure ?? this.failure,
        carsModel: carsModel ?? this.carsModel);
  }
}
