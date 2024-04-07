import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/features/reception/reservation/data/model/reservation_model.dart';
import 'package:flutter_grad_project/features/reception/reservation/data/repo/reservation_repo.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/view_model/reservation_states.dart';

class ReservationCubit extends Cubit<ReservationState> {
  ReservationCubit(this.reservationRepository) : super(ReservationLoading());
  ReservationRepository reservationRepository;
  ReservationModel? reservationModel;

  Future reservationCubit(
      {String? hospitalId,
      String? departmentId,
      String? date,
      String? patientId}) async {
    emit(ReservationLoading());
    print("add date");
    Map<String, dynamic> response = await reservationRepository.addData(
        hospitalId: hospitalId,
        departmentId: departmentId,
        date: date,
        patientId: patientId);
        Map<String, dynamic> response2 = await reservationRepository.bookApp(
        hospitalId: hospitalId,
        departmentId: departmentId,
        date: date,
        patientId: patientId);
    print("response : $response");
    if (response['success']) {
      reservationModel = ReservationModel.fromJson(response);
      print("object : ${reservationModel?.resource}");
      emit(ReservationSuccess());
    } else {
      emit(ReservationFailure());
    }
  }
}
