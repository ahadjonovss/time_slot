part of 'admin_bloc.dart';

abstract class AdminEvent {
  const AdminEvent();
}

class AddBannerEvent extends AdminEvent {
  AddBannerEvent(this.path, this.data);
  String path;
  DataFromAdminModel data;
}

class RemoveBannerEvent extends AdminEvent {
  RemoveBannerEvent(this.path, this.data);
  String path;
  DataFromAdminModel data;
}
