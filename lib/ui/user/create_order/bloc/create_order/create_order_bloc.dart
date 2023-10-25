import 'package:time_slot/utils/tools/file_importers.dart';

part 'create_order_event.dart';
part 'create_order_state.dart';

class CreateOrderBloc extends Bloc<CreateOrderEvent, CreateOrderState> {
  CreateOrderBloc()
      : super(CreateOrderState(OrderModel(
            finishedAt: DateTime.now(),
            createdAt: DateTime.now(),
            date: DateTime(2021, 12, 12),
            products: [],
            orderId: generateRandomID(true)))) {
    on<UpdateFieldsOrderEvent>(updateFields);
    on<AddOrderEvent>(addOrder);
  }

  void updateFields(UpdateFieldsOrderEvent event, Emitter emit) {
    emit(state.copyWith(newOrder: event.order, isUpdated: !state.isUpdated));
  }

  Future<void> addOrder(AddOrderEvent event, Emitter emit) async {
    emit(state.copyWith(addingStatus: ResponseStatus.inProgress));
    if (orderValidator(event.order).isEmpty) {
      final MyResponse myResponse = await getIt<CreateOrderRepository>()
          .addOrder(event.order, event.user);
      if (!myResponse.message.isNull) {
        emit(state.copyWith(
            addingStatus: ResponseStatus.inFail, message: myResponse.message));
      } else {
        emit(state.copyWith(
            addingStatus: ResponseStatus.inSuccess,
            newOrder: OrderModel(
                finishedAt: DateTime.now(),
                createdAt: DateTime.now(),
                products: [],
                date: DateTime.now())));
      }
    } else {
      emit(state.copyWith(
          addingStatus: ResponseStatus.inFail,
          message: orderValidator(event.order)));
    }
    emit(state.copyWith(addingStatus: ResponseStatus.pure));
  }
}
