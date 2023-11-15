import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery_results_app/models/lottery_data_results_model/lottery_data_results_model.dart';
import 'package:lottery_results_app/presentations/widgets/show_selected_lottery_result_screen.dart';
import '../blocs/lottery_resutls_bloc/lottery_result_bloc.dart';
import 'widgets/progress_indicator.dart';

class LotteryResutlsScreen extends StatelessWidget {
  const LotteryResutlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LotteryResultBloc, LotteryResultState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(
            child: ProgressIndicatorWidget(),
          ),
          loaded: (results) => Scrollbar(
            radius: const Radius.circular(5),
            trackVisibility: true,
            thickness: 10,
            child: GridView.builder(
              itemCount: results.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3 / 2.1, crossAxisCount: 2),
              itemBuilder: (context, index) {
                final result = results[index];
                return GridItemViewWidget(result: result);
              },
            ),
          ),
          error: (error) => Text(error),
        );
      },
    );
  }
}

class GridItemViewWidget extends StatelessWidget {
  final LotteryResult result;

  const GridItemViewWidget({super.key, required this.result});
  // Uri url = Uri.parse(apiUrl+result.viewLink);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (result.viewLink != null) {
          String? url = result.viewLink;
          String date = result.date;
          String lotteryName = result.lotteryName;

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SelectedLotteyResultScreen(date: date,lotteryName: lotteryName,
                selectedLotteryLink: url,
              ),
            ),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: const Color.fromRGBO(248, 244, 242, 0.973),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(246, 18, 96, 223),
              ),
              height: 82,
              width: double.infinity,
              child: Center(
                child: Text(
                  result.lotteryName,
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                result.date,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
