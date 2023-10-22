part of 'promo_code_bloc.dart';

@immutable
class PromoCodeState extends Equatable {
  PromoCodeState(
      {this.gettingStatus = ResponseStatus.pure,
      this.creatingStatus = ResponseStatus.pure,
      this.deletingStatus = ResponseStatus.pure,
      this.message = '',
      required this.promoCodes});
  ResponseStatus creatingStatus;
  ResponseStatus gettingStatus;
  ResponseStatus deletingStatus;
  String message;
  List promoCodes;

  PromoCodeState copyWith({
    ResponseStatus? creatingStatus,
    ResponseStatus? gettingStatus,
    ResponseStatus? deletingStatus,
    String? message,
    List? promoCodes,
  }) =>
      PromoCodeState(
          deletingStatus: deletingStatus ?? this.deletingStatus,
          message: message ?? this.message,
          creatingStatus: creatingStatus ?? this.creatingStatus,
          gettingStatus: gettingStatus ?? this.gettingStatus,
          promoCodes: promoCodes ?? this.promoCodes);

  @override
  List<Object?> get props =>
      [message, promoCodes, creatingStatus, gettingStatus, deletingStatus];
}