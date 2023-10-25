// ignore_for_file: prefer_expression_function_bodies, cascade_invocations

import 'package:time_slot/ui/user/orders/ui/widgets/order_text_widget.dart';
import 'package:time_slot/utils/tools/file_importers.dart';

class SelectDatesSection extends StatefulWidget {
  const SelectDatesSection({super.key});

  @override
  State<SelectDatesSection> createState() => _SelectDatesSectionState();
}

class _SelectDatesSectionState extends State<SelectDatesSection> {
  @override
  Widget build(BuildContext context) {
    final calendarController = CleanCalendarController(
      minDate: DateTime.now().add(const Duration(days: 2)),
      maxDate: DateTime.now().add(const Duration(days: 11)),
      onRangeSelected: (firstDate, secondDate) {},
      rangeMode: false,
      onDayTapped: (date) {
        final OrderModel order = context.read<CreateOrderBloc>().state.order;
        order.date = date;
        context.read<CreateOrderBloc>().add(UpdateFieldsOrderEvent(order));
      },
      // readOnly: true,
      onPreviousMinDateTapped: (date) {},
      onAfterMaxDateTapped: (date) {},
      initialFocusDate: DateTime.now().add(const Duration(days: 2)),
      initialDateSelected: DateTime.now().add(const Duration(days: 2)),
      // endDateSelected: DateTime(2022, 3, 20),
    );
    return Column(children: [
      BlocBuilder<CreateOrderBloc, CreateOrderState>(
        builder: (context, state) {
          return OrderTextWidget(
              icon: Icons.attach_money,
              context: context,
              type: 'price_per_one',
              value: [].isEmpty ? '0 UZS' : '0 UZS');
        },
      ),
      SizedBox(
        height: height(context) * 0.45,
        width: width(context),
        child: Theme(
          data: AdaptiveTheme.of(context).theme,
          child: ScrollableCleanCalendar(
            calendarController: calendarController,
            layout: Layout.BEAUTY,
            calendarCrossAxisSpacing: 0,
          ),
        ),
      ),
      const SizedBox(height: 8),
    ]);
  }
}
