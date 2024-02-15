import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grad_project/features/reception/reservation/data/model/reservation_model.dart';
import 'package:flutter_grad_project/features/reception/reservation/data/repo/reservation_repo.dart';
import 'package:flutter_grad_project/features/reception/reservation/presentation/view_model/reservation_states.dart';

class ReservationCubit extends Cubit<ReservationState> {
  ReservationCubit(this.reservationRepository) : super(ReservationLoading());
  ReservationRepository reservationRepository;
  ReservationModel? reservationModel;

    Future reservationCubit() async {
    emit(ReservationLoading());

    Map<String, dynamic> response = await reservationRepository.addData();
    if (response['success']) {
      emit(ReservationSuccess());
    } else {
      emit(ReservationFailure());
    }
  }
}