import 'package:edoktor_structure/core/network/network_manager.dart';
import 'package:edoktor_structure/data/repository/car/car_repository_imp.dart';
import 'package:edoktor_structure/domain/model/cars/cars_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import '../../../data/di/dependency_injection.dart';
import '../viewmodel/home_bloc.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final bloc = di<HomeBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomeView"),
        ),
        body: BlocListener<HomeBloc, HomeState>(
          bloc: bloc,
          listener: (context, state) {
            // TODO: implement listener
          },
          child: BlocBuilder<HomeBloc, HomeState>(
            bloc: bloc,
            builder: (context, state) {
              switch (state.homeStateStatus) {
                case HomeStateStatus.initial:
                  bloc.add(FetchData());
                  return Center(
                      child: CircularProgressIndicator(
                    color: Colors.red,
                  ));
                case HomeStateStatus.loading:
                  return Center(
                      child: CircularProgressIndicator(
                    color: Colors.red,
                  ));
                case HomeStateStatus.error:
                  return Center(
                    child: Text(
                      state.failure?.errorMessage ?? "",
                      style: context.textTheme.bodyLarge,
                    ),
                  );
                case HomeStateStatus.completed:
                  return Center(
                    child: Text(
                      state.carsModel?.cars?.length.toString() ?? "",
                      style: context.textTheme.bodyLarge,
                    ),
                  );
                default:
                  return Text("veri yok");
              }
            },
          ),
        ));
  }
}
