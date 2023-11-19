// ignore_for_file: cascade_invocations

import 'package:flutter/cupertino.dart';
import 'package:time_slot/ui/admin/control/ui/sub_pages/widgets/stores_view.dart';
import 'package:time_slot/utils/tools/file_importers.dart';

class AllMarketsPage extends StatelessWidget {
  const AllMarketsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AdaptiveTheme.of(context).theme.backgroundColor,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  context.read<StoresBloc>().add(GetAllStoresEvent());
                },
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ))
          ],
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepPurple,
          title: Text('markets'.tr,
              style: AppTextStyles.labelLarge(context,
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700)),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                labelColor: AdaptiveTheme.of(context).theme.hintColor,
                indicatorColor: Colors.deepPurple,
                dividerColor: Colors.transparent,
                tabs: [
                  Tab(text: 'unconfirmed'.tr),
                  Tab(text: 'confirmed'.tr),
                ],
              ),
              SizedBox(height: height(context) * 0.02),
              BlocBuilder<StoresBloc, StoresState>(
                builder: (context, state) {
                  if (state.gettingStatus == ResponseStatus.pure) {
                    context.read<StoresBloc>().add(GetAllStoresEvent());
                  } else if (state.gettingStatus == ResponseStatus.inSuccess) {
                    final List<StoreModel> curData = state.stores.cast();
                    curData.sort((a, b) => b.createdAt.compareTo(a.createdAt));
                    return Expanded(
                      child: TabBarView(children: [
                        StoresView(splitStores(curData, false)),
                        StoresView(splitStores(curData, true)),
                      ]),
                    );
                  }
                  return const CupertinoActivityIndicator();
                },
              ),
            ],
          ),
        ),
      );
}
