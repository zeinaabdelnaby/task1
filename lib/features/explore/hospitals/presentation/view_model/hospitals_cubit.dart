import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/features/explore/hospitals/data/model/hospitals_model.dart';
import 'package:flutter_grad_project/features/explore/hospitals/data/repo/hospitals_repo.dart';
import 'package:flutter_grad_project/features/explore/hospitals/presentation/view_model/hospitals_states.dart';


class HospitalsCubit extends Cubit<HospitalsState> {
  HospitalsCubit(this.hospitalsRepository) : super(HospitalsLoading());
  HospitalsRepository hospitalsRepository;
  HospitalsModel? hospitalsModel;
  getHospitalsData() {
    emit(HospitalsLoading());
    hospitalsRepository.getHospitalsData().then((value) {
      print('........${value.toString()}');
      hospitalsModel = HospitalsModel.fromJson(value);
      print('aaaaaaaaaaaaaaaaaaaaaaaaaa');
      emit(HospitalsSuccess());
    }).onError((error, stackTrace) {
      emit(HospitalsFailure());
      print('bbbbbbbbbbbbbbbbbbb${error.toString()}');
    });
  }
}