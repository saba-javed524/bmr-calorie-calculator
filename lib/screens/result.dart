import 'package:bmr_calculator/widgets/calculate_button.dart';
import 'package:bmr_calculator/widgets/label_text.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';

class Result extends StatelessWidget {
  String? result;
  String? bmiResult;
  String? interpretation;

  Result({this.result, this.bmiResult, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMR & BMI Result',
          style: kButtonTextStyle.copyWith(fontSize: 25.0),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Hi! Your calculated Body Mass Index is $bmiResult, and Basal Metablolic Rate is $result! The suggested number of calories you should per day are $result.\n Good Luck!',
              style: kTopTextStyle,
              textAlign: TextAlign.center,
            ),
            //BMI starts here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BMI:',
                  style: kSmallTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      Text(
                        bmiResult.toString(),
                        style:
                            kNumberLabelStyle.copyWith(color: Colors.black87),
                      ),
                      Text(
                        interpretation!,
                        textAlign: TextAlign.center,
                        style: kTopTextStyle.copyWith(
                          fontSize: 15.0,
                          color: kGreyColor,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            //BMI ends here
            //BMR starts here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BMR:',
                  style: kSmallTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [
                      Text(
                        result.toString(),
                        style:
                            kNumberLabelStyle.copyWith(color: Colors.black87),
                      ),
                      Text(
                        'Calories Per Day',
                        textAlign: TextAlign.center,
                        style: kTopTextStyle.copyWith(
                          fontSize: 15.0,
                          color: kGreyColor,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            CalculateButton(
              buttonTitle: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            //BMR ends here
          ],
        ),
      ),
    );
  }
}
