import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_slot/ui/user/account/ui/account_page.dart';
import 'package:time_slot/ui/user/main/bloc/page_controller_bloc/page_controller_bloc.dart';
import 'package:time_slot/ui/user/membership/ui/membership_page.dart';
import 'package:time_slot/ui/user/orders/ui/ordersPage.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    List pages = [OrdersPage(), MembershipPage(), AccountPage()];

    return BlocBuilder<PageControllerBloc, PageControllerState>(
      builder: (context, state) {
        return Scaffold(
          body: pages[state.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              context
                  .read<PageControllerBloc>()
                  .add(ChangeCurrentPageEvent(value));
            },
            currentIndex: state.currentIndex,
            selectedItemColor: Colors.deepPurple,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.monetization_on), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          ),
        );
      },
    );
  }
}
