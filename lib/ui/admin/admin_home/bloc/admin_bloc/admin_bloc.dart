import 'package:time_slot/utils/tools/file_importers.dart';

part 'admin_event.dart';
part 'admin_state.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  AdminBloc() : super(AdminState()) {
    on<AddBannerEvent>(addBanner);
    on<RemoveBannerEvent>(removeBanner);
  }

  Future<void> addBanner(AddBannerEvent event, Emitter emit) async {
    emit(state.copyWith(addBannerStatus: ResponseStatus.inProgress));
    final MyResponse myResponse =
        await getIt<AdminRepository>().addBanner(event.path, event.data);
    if (myResponse.statusCode == 200) {
      emit(state.copyWith(addBannerStatus: ResponseStatus.inSuccess));
    } else {
      emit(state.copyWith(
          addBannerStatus: ResponseStatus.inFail, message: myResponse.message));
    }
    emit(state.copyWith(addBannerStatus: ResponseStatus.pure));
  }

  Future<void> removeBanner(RemoveBannerEvent event, Emitter emit) async {
    emit(state.copyWith(deleteBannerStatus: ResponseStatus.inProgress));
    final MyResponse myResponse =
        await getIt<AdminRepository>().removeBanner(event.path, event.data);
    if (myResponse.statusCode == 200) {
      emit(state.copyWith(deleteBannerStatus: ResponseStatus.inSuccess));
    } else {
      emit(state.copyWith(
          deleteBannerStatus: ResponseStatus.inFail,
          message: myResponse.message));
    }
    emit(state.copyWith(deleteBannerStatus: ResponseStatus.pure));
  }
}
