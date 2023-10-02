part of 'user_account_bloc.dart';

abstract class UserAccountEvent {
  const UserAccountEvent();
}

class AddMarketEvent extends UserAccountEvent {
  AddMarketEvent(this.user, this.market);
  UserModel user;
  String market;
}