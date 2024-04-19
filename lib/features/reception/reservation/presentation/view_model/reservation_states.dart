abstract class ReservationState {}

class GetTimeLoading extends ReservationState {}

class GetTimeSuccess extends ReservationState {}

class GetTimeFailure extends ReservationState {}

class ReservationLoading extends ReservationState {}

class ReservationSuccess extends ReservationState {}

class ReservationFailure extends ReservationState {}