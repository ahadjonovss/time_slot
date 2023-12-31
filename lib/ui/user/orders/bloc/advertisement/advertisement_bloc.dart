import '../../../../../utils/tools/file_importers.dart';


class AdvertisementBloc extends Bloc<AdvertisementEvent, AdvertisementState> {
  AdvertisementBloc()
      : super(AdvertisementState(
            message: '', status: ResponseStatus.pure, banners: [], index: 0)) {
    on<GetBannersEvent>(getBanners);
    on<ChangeIndexEvent>(changeIndex);
  }

  getBanners(event, emit) async {
    emit(state.copyWith(status: ResponseStatus.inProgress));
   MyResponse myResponse = await getIt<AdvertisementRepository>().getBanners();
    if (myResponse.statusCode! == 200) {
      emit(state.copyWith(banners: myResponse.data, status: ResponseStatus.inSuccess));
    } else {
      emit(state.copyWith(status: ResponseStatus.inFail, message: myResponse.message));
    }
  }

  changeIndex(event, emit) async {
    emit(state.copyWith(index: event.index));
  }
}
