import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/features/explore/home/data/model/home_model.dart';
import 'package:flutter_grad_project/features/explore/home/presentation/view_model/home_cubit/home_states.dart';

import '../../../data/repo/home_repo.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepository) : super(HomeLoading());
  HomeRepository homeRepository;
  HomeModel? homeModel;
  getHomeData() {
    emit(HomeLoading());
    homeRepository.getHomeData().then((value) {
      print('........${value.toString()}');
      homeModel = HomeModel.fromJson(value);
      print('aaaaaaaaaaaaaaaaaaaaaaaaaa');
      emit(HomeSuccess());
    }).onError((error, stackTrace) {
      emit(HomeFailure());

      print('bbbbbbbbbbbbbbbbbbb${error.toString()}');
    });
  }
}
