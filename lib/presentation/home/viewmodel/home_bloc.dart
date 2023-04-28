import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:edoktor_structure/core/network/network_error.dart';
import 'package:edoktor_structure/domain/model/cars/cars_model.dart';
import 'package:edoktor_structure/domain/usecase/get_cars/get_cars_usecase.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCarsUseCase getCarsUseCase;
  CarsModel? carsModel;
  HomeBloc({required this.getCarsUseCase}) : super(HomeState()) {
    on<FetchData>((event, emit) async {
      emit(state.copyWith(homeStateStatus: HomeStateStatus.loading));
      Either<Failure, CarsModel?>? response = await getCarsUseCase.getCars();
      response?.fold((l) {
        emit(state.copyWith(homeStateStatus: HomeStateStatus.error, carsModel: null, failure: l));
      }, (r) {
        carsModel = r;
        emit(state.copyWith(homeStateStatus: HomeStateStatus.completed, carsModel: carsModel, failure: null));
      });
    });
  }
}
