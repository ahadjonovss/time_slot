// ignore_for_file: inference_failure_on_function_invocation

import 'package:flutter/cupertino.dart';
import 'package:time_slot/utils/tools/file_importers.dart';

class UserStores extends StatefulWidget {
  UserStores({required this.markets, super.key});
  List markets;

  @override
  State<UserStores> createState() => _UserStoresState();
}

class _UserStoresState extends State<UserStores> {
  @override
  Widget build(BuildContext context) =>
      BlocListener<UserAccountBloc, UserAccountState>(
          listener: (context, state) {
            if (state.addStoreStatus == ResponseStatus.inProgress) {
              showLoadingDialog(context);
            }
            if (state.addStoreStatus == ResponseStatus.inFail) {
              Navigator.pop(context);
              AnimatedSnackBar(
                snackBarStrategy: RemoveSnackBarStrategy(),
                builder: (context) => AppErrorSnackBar(
                  text: state.message,
                ),
              ).show(context);
            } else if (state.addStoreStatus == ResponseStatus.inSuccess) {
              Navigator.pop(context);
              AnimatedSnackBar(
                snackBarStrategy: RemoveSnackBarStrategy(),
                builder: (context) => AppSnackBar(
                  color: AppColors.c7FCD51,
                  text: 'added_successfully'.tr,
                  icon: '',
                ),
              ).show(context);
              setState(() {});
            }
          },
          child: Container(
            width: width(context),
            padding: EdgeInsets.symmetric(
                horizontal: 16.h, vertical: widget.markets.isEmpty ? 10 : 6),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('markets'.tr,
                        style:
                            AppTextStyles.labelLarge(context, fontSize: 15.sp)),
                    const Spacer(),
                    if (widget.markets.length != 5)
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple, // Background color
                          ),
                          onPressed: () {
                            showCupertinoDialog(
                                context: context,
                                builder: (context) => AddStoreDialog(
                                    user: context
                                        .read<UserAccountBloc>()
                                        .state
                                        .user!));
                          },
                          child: Text(
                            'add'.tr,
                            style: TextStyle(fontSize: 12.sp),
                          )),
                  ],
                ),
                Visibility(
                  visible: widget.markets.isEmpty,
                  child: Text('no_markets_yet'.tr,
                      style: AppTextStyles.labelLarge(context,
                          fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                SizedBox(height: height(context) * 0.01),
                ...List.generate(
                    widget.markets.length,
                    (index) =>
                        StoreItem(index: index, title: widget.markets[index])),
              ],
            ),
          ));
}
