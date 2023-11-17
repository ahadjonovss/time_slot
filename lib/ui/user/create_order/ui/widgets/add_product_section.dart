// ignore_for_file: type_annotate_public_apis
import 'package:time_slot/utils/tools/file_importers.dart';

class AddProductSection extends StatefulWidget {
  const AddProductSection({super.key});

  @override
  State<AddProductSection> createState() => _AddProductSectionState();
}

class _AddProductSectionState extends State<AddProductSection> {
  TextEditingController deliveryNote = TextEditingController();
  TextEditingController count = TextEditingController();
  bool canAdd = false;

  void changeStatus() {
    final int countOfProduct =
        int.parse(count.text.trim().toString().isEmpty ? '0' : count.text);
    canAdd = deliveryNote.text.length +
                context
                    .read<DataFromAdminBloc>()
                    .state
                    .data!
                    .deliveryNote
                    .length ==
            13 &&
        countOfProduct >= 10 &&
        countOfProduct <=
            context.read<DataFromAdminBloc>().state.data!.maxLimit;
    setState(() {});
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => const ListOfProducts(),
    );
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<CreateOrderBloc, CreateOrderState>(
        builder: (context, state) => SizedBox(
          width: width(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   '${'max_limit'.tr}:   ${context.read<DataFromAdminBloc>().state.data!.maxLimit} ${'piece'.tr}',
                //   style: AppTextStyles.labelLarge(context, color: Colors.red),
                // ),
                // LinearProgressIndicator(
                //   color: AlwaysStoppedAnimation<Color>(Colors.white),
                //   backgroundColor: Colors.deepPurple,
                //   value: 12,
                // ),

                SizedBox(height: height(context) * 0.01),
                Visibility(
                  visible: state.order.products.length != 10,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepPurple),
                                  borderRadius: BorderRadius.circular(6)),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              alignment: Alignment.center,
                              width: width(context) * 0.45,
                              height: height(context) * 0.06,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      '${context.read<DataFromAdminBloc>().state.data!.deliveryNote} -',
                                      style: AppTextStyles.labelLarge(context,
                                          fontSize: 16)),
                                  Expanded(
                                    child: TextField(
                                      onChanged: (value) {
                                        changeStatus();
                                      },
                                      style: AppTextStyles.labelLarge(context),
                                      controller: deliveryNote,
                                      inputFormatters: [
                                        SevenDigitInputFormatter()
                                      ],
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          hintStyle: AppTextStyles.labelLarge(
                                              context,
                                              color: Colors.grey),
                                          hintText: 'delivery_note'.tr,
                                          border: InputBorder.none,
                                          iconColor: Colors.deepPurple),
                                    ),
                                  )
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepPurple),
                                  borderRadius: BorderRadius.circular(6)),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              width: width(context) * 0.18,
                              alignment: Alignment.center,
                              height: height(context) * 0.06,
                              child: TextField(
                                style: AppTextStyles.labelLarge(context),
                                controller: count,
                                onChanged: (value) {
                                  changeStatus();
                                },
                                inputFormatters: [
                                  ThreeDigitInputFormatter(),
                                ],
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    hintStyle: AppTextStyles.labelLarge(context,
                                        color: Colors.grey),
                                    border: InputBorder.none,
                                    hintText: 'count'.tr,
                                    iconColor: Colors.deepPurple),
                              )),
                        ],
                      ),
                      SizedBox(height: height(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: state.order.products.isNotEmpty,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      Colors.deepPurple, // Background color
                                ),
                                onPressed: () {
                                  showBottomSheet(context);
                                },
                                child: Text('edit'.tr)),
                          ),
                          Visibility(
                            visible: canAdd,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      Colors.deepPurple, // Background color
                                ),
                                onPressed: () {
                                  final OrderModel order = context
                                      .read<CreateOrderBloc>()
                                      .state
                                      .order;
                                  if (order.products.fold(
                                              0,
                                              (previousValue, element) =>
                                                  int.parse((previousValue +
                                                          element.count)
                                                      .toString())) +
                                          int.parse(count.text) <=
                                      context
                                          .read<PrivilegeBloc>()
                                          .state
                                          .reserve!
                                          .reserve) {
                                    order.products.add(ProductModel(
                                        count: int.parse(count.text),
                                        deliveryNote:
                                            '${context.read<DataFromAdminBloc>().state.data!.deliveryNote} ${deliveryNote.text}'));
                                    count.clear();
                                    deliveryNote.clear();
                                    changeStatus();
                                    context.read<CreateOrderBloc>().add(
                                        UpdateFieldsOrderEvent(order,
                                            freeLimit: context
                                                .read<UserAccountBloc>()
                                                .state
                                                .user
                                                .freeLimits));
                                  } else {
                                    AnimatedSnackBar(
                                      snackBarStrategy:
                                          RemoveSnackBarStrategy(),
                                      builder: (context) => AppErrorSnackBar(
                                          text:
                                              'in_this_day_reverse_is_not_enough'
                                                  .trParams({
                                        'day':
                                            dateTimeToFormat(state.order.date)
                                                .split(' ')
                                                .first,
                                        'max_limit': context
                                            .read<PrivilegeBloc>()
                                            .state
                                            .reserve!
                                            .reserve
                                            .toString()
                                      })),
                                    ).show(context);
                                  }
                                },
                                child: Text('add'.tr)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height(context) * 0.02)
              ],
            ),
          ),
        ),
      );
}
