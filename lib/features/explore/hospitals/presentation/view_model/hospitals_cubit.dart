import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/features/explore/hospitals/data/model/hospitals_model.dart';
import 'package:flutter_grad_project/features/explore/hospitals/data/repo/hospitals_repo.dart';
import 'package:flutter_grad_project/features/explore/hospitals/presentation/view_model/hospitals_states.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/data/model/hospital_model.dart';


class HospitalsCubit extends Cubit<HospitalsState> {
  HospitalsCubit(this.hospitalsRepository) : super(HospitalsLoading());
  HospitalsRepository hospitalsRepository;
  HospitalModel? hospitalModel;
  getHospitalsData(String depId) {
    emit(HospitalsLoading());
    hospitalsRepository.getHospitalsData(depId).then((value) {
      print('........${value.toString()}');
      hospitalModel = HospitalModel.fromJson(value);
      print('aaaaaaaaaaaaaaaaaaaaaaaaaa');
      emit(HospitalsSuccess());
    }).onError((error, stackTrace) {
      emit(HospitalsFailure());
      print('bbbbbbbbbbbbbbbbbbb${error.toString()}');
    });
  }
}