import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery_results_app/blocs/app_navigation/app_navigation_bloc.dart';

class CustomBottomNavBarWidget extends StatelessWidget {
  const CustomBottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(selectedItemColor:Colors.white,unselectedItemColor:Colors.white , 
      currentIndex: 3,
      onTap: (index) {
        switch (index) {
          case 0:
            BlocProvider.of<AppNavigationBloc>(context)
                .add(const AppNavigationEvent.navigateToHome());
            break;
          case 1:
            BlocProvider.of<AppNavigationBloc>(context)
                .add(const AppNavigationEvent.navigateToSearch());

            break;
          case 2:
            BlocProvider.of<AppNavigationBloc>(context)
                .add( AppNavigationEvent.navigateToScan(context));

            break;
          case 3:
            BlocProvider.of<AppNavigationBloc>(context)
                .add(const AppNavigationEvent.navigateToPrediction());
            break;
          default:
            BlocProvider.of<AppNavigationBloc>(context)
                .add(const AppNavigationEvent.navigateToHome());

            break;
        }
      },
      backgroundColor: const Color.fromARGB(246, 18, 96, 223),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.white,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner,
              color: Colors.white,
            ),
            label: 'Scan'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.remove_red_eye,
              color: Colors.white,
            ),
            label: 'Prediction'),
      ],
    );
  }
}
