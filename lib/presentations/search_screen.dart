import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottery_results_app/blocs/search_result_bloc/search_result_bloc.dart';
import 'package:lottery_results_app/const.dart';
import 'package:lottery_results_app/presentations/widgets/progress_indicator.dart';

import 'widgets/show_selected_lottery_result_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchForm();
  }
}

class SearchForm extends StatelessWidget {
  SearchForm({super.key, this.scannedBarcode});
  final String? scannedBarcode;
  final TextEditingController numberController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  // final _formKey = GlobalKey<FormState>();
  Radius containerRadius = const Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultBloc, SearchResultState>(
      builder: (context, state) {
        Widget? lotteryResultWidget;
        if (state is Loading) {
          lotteryResultWidget = const SearchScreenProgressIndicatorWidget();
        } else if (state is ButtonPressed) {
          lotteryResultWidget = Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 400,
            ),
            child: CongratualtionsWidget(
                date: state.date,
                lotteyName: state.lotteryName,
                url: state.selectedLotteryLink,
                containerRadius: containerRadius,
                result: state.result),
          );
        }
        return SingleChildScrollView(
          child: Stack(
            children: [
              Form(
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 50, right: 50, top: 100),
                      child: Column(
                        children: [
                          TextField(
                            readOnly: true,
                            controller: dateController,
                            onTap: () async {
                              // Show the date picker.
                              final selectedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2020),
                                lastDate: DateTime.now(),
                              );
                              if (selectedDate != null) {
                                final formattedDate =
                                    "${selectedDate.day.toString().padLeft(2, '0')}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.year}";
                                BlocProvider.of<SearchResultBloc>(context).add(
                                    SearchResultEvent.dateSelected(
                                        formattedDate));
                                dateController.text = formattedDate;
                              }
                            },
                            decoration: InputDecoration(
                              icon: const Icon(
                                Icons.edit_calendar_rounded,
                                color: primecolor,
                              ),
                              contentPadding: const EdgeInsets.only(left: 15),
                              labelText: dateController.text.isNotEmpty
                                  ? dateController
                                      .text // Use the controller's value
                                  : 'Select Date',
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                  borderRadius: borderrds,
                                  borderSide: const BorderSide(
                                    color: primecolor,
                                  )),
                              labelStyle: formfieldtextstyle,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onChanged: (value) {
                              final lotteryNumber =
                                  scannedBarcode ?? numberController.text;
                              BlocProvider.of<SearchResultBloc>(context).add(
                                  SearchResultEvent.numberEntered(
                                      lotteryNumber));
                            },
                            controller: scannedBarcode != null
                                ? TextEditingController(text: scannedBarcode)
                                : numberController,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.only(left: 44),
                                labelText: 'Enter Number',
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                labelStyle: formfieldtextstyle,
                                border: OutlineInputBorder(
                                  borderRadius: borderrds,
                                )),
                          ),
                          //  if (errorTextWidget != null) errorTextWidget,

                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: ElevatedButton(
                                onPressed: () async {
                                  {
                                    final lotteryNumber =
                                        scannedBarcode ?? numberController.text;
                                    BlocProvider.of<SearchResultBloc>(context)
                                        .add(SearchResultEvent.numberEntered(
                                            lotteryNumber));
                                    FocusScope.of(context).unfocus();
                                    BlocProvider.of<SearchResultBloc>(context)
                                        .add(const SearchResultEvent
                                            .checkPressed());
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(150, 60),
                                    backgroundColor: primecolor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0))),
                                child: const Text(
                                  'Check',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )),
                          ),
                        ],
                      ))),
              if (lotteryResultWidget != null) lotteryResultWidget,
            ],
          ),
        );
      },
    );
  }
}

class CongratualtionsWidget extends StatelessWidget {
  const CongratualtionsWidget({
    super.key,
    required this.containerRadius,
    this.result,
    required this.url,
    required this.date,
    required this.lotteyName,
  });

  final Radius containerRadius;
  final List<String>? result;
  final String url;
  final String date;
  final String lotteyName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: primecolor,
              borderRadius: BorderRadius.only(
                  topLeft: containerRadius, topRight: containerRadius)),
          alignment: Alignment.center,
          height: 55,
          width: 360,
          child: Text(result?[0] ?? '',
              style: const TextStyle(fontSize: 23, color: Colors.white)),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: containerRadius, bottomRight: containerRadius)),
          alignment: Alignment.center,
          height: 60,
          width: 360,
          child: Text(
            result != null ? result![1] : 'no result avalilable',
            style: const TextStyle(fontSize: 23),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SelectedLotteyResultScreen(
                    date: date,
                    lotteryName: lotteyName,
                    selectedLotteryLink: url,
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            child: const Text(
              'See Full Result',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}

class SearchScreenProgressIndicatorWidget extends StatelessWidget {
  const SearchScreenProgressIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(top: 420),
        child: ProgressIndicatorWidget(),
      ),
    );
  }
}
