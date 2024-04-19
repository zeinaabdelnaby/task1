import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/core/api/dio_consumer.dart';
import 'package:flutter_grad_project/features/reception/reservation/data/model/reservation_model.dart';
import 'package:flutter_grad_project/features/reception/reservation/data/repo/reservation_repo.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/view_model/reservation_states.dart';

class ReservationCubit extends Cubit<ReservationState> {
  ReservationCubit(this.reservationRepository) : super(ReservationLoading());

  static ReservationCubit get(context) => BlocProvider.of(context);
  ReservationRepository reservationRepository =
      ReservationRepository(DioConsumer(dio: Dio()));
  ReservationModel? reservationModel;
  DateTime selectedDate = DateTime.now();

  List<String> availableTimes = [];

  getAvailableTime(
      {String? hospitalId,
      String? departmentId,
      String? date,
      String? patientId}) async {
    emit(GetTimeLoading());
    var response = await reservationRepository.addData(
        hospitalId: hospitalId,
        departmentId: departmentId,
        date: date,
        patientId: patientId);
    response.fold(
      (l) {
        emit(GetTimeFailure());
      },
      (r) {
        availableTimes = r.resource!;
        GetTimeSuccess();
      },
    );
  }

  bookNow(
      {String? hospitalId,
      String? departmentId,
      String? date,
      String? patientId}) async {
    emit(ReservationLoading());

    var response2 = await reservationRepository.bookApp(
        hospitalId: hospitalId,
        departmentId: departmentId,
        date: date,
        patientId: patientId);
    response2.fold((l) {
      emit(ReservationFailure());
    }, (r) {
      emit(ReservationSuccess());
    });
  }
}