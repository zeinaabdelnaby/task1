import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/data/model/hospital_model.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/data/repo/hospital_repo.dart';
import 'package:flutter_grad_project/features/explore/info_hospital/presentation/view_model/hospital_states.dart';

class HospitalCubit extends Cubit<HospitalState> {
  HospitalCubit(this.hospitalRepository) : super(HospitalLoading());
  HospitalRepository hospitalRepository;
  HospitalModel? hospitalModel;
  getHospitalData() {
    emit(HospitalLoading());
    hospitalRepository.getHospitalData().then((value) {
      print('........${value.toString()}');
      hospitalModel = HospitalModel.fromJson(value);
      print('aaaaaaaaaaaaaaaaaaaaaaaaaa');
      emit(HospitalSuccess());
    }).onError((error, stackTrace) {
      emit(HospitalFailure());
      print('bbbbbbbbbbbbbbbbbbb${error.toString()}');
    });
  }
}