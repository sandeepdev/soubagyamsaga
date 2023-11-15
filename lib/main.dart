import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery_results_app/blocs/app_navigation/app_navigation_bloc.dart';
import 'package:lottery_results_app/blocs/lottery_resutls_bloc/lottery_result_bloc.dart';
import 'package:lottery_results_app/blocs/search_result_bloc/search_result_bloc.dart';
import 'package:lottery_results_app/presentations/home_screen.dart';
import 'repositoris/lottery_results_repository.dart';

void main() async {
  // fetchSelectedLottery();
  runApp(const MyApp());
  // fetchAndExtractTextFromPDF();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LotteryResultBloc(repo: LotteryResultsRepo())
              ..add(const resultLoaded()),
          ),
          BlocProvider(
            create: (context) => AppNavigationBloc()..add(const AppNavigationEvent.navigateToHome()),
          ),
          BlocProvider(
            create: (context) => SearchResultBloc(),
          )
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              // This is the theme of your application.
              //
              // TRY THIS: Try running your application with "flutter run". You'll see
              // the application has a blue toolbar. Then, without quitting the app,
              // try changing the seedColor in the colorScheme below to Colors.green
              // and then invoke "hot reload" (save your changes or press the "hot
              // reload" button in a Flutter-supported IDE, or press "r" if you used
              // the command line to start the app).
              //
              // Notice that the counter didn't reset back to zero; the application
              // state is not lost during the reload. To reset the state, use hot
              // restart instead.
              //
              // This works for code too, not just values: Most code changes can be
              // tested with just a hot reload.
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: HomeScreen()));
  }
}
