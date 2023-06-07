import 'package:bmr_calculator/constants/constants.dart';
import 'package:bmr_calculator/screens/result.dart';
import 'package:bmr_calculator/widgets/arrow_buttons.dart';
import 'package:bmr_calculator/widgets/calculate.dart';
import 'package:bmr_calculator/widgets/calculate_button.dart';
import 'package:bmr_calculator/widgets/container_button.dart';
import 'package:bmr_calculator/widgets/label_text.dart';
import 'package:bmr_calculator/widgets/number_text.dart';
import 'package:bmr_calculator/widgets/text_and_number.dart';
import 'package:bmr_calculator/widgets/tooltip_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int age = 20;
  int height = 150;
  int weight = 45;
  int? toggleIndex = 0;
  String? selectedActivityLevel;
  String? bmrResult;
  String? bmiResult;
  Color? activityCardColor;
  String? interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMR & BMI Calculator',
          style: kButtonTextStyle.copyWith(fontSize: 25.0),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                //Large Area Starts Here
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurStyle: BlurStyle.outer,
                            color: Colors.grey,
                            offset: Offset(0.0, 0.54), //(x,y)
                            blurRadius: 4.0,
                          ),
                        ],
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(10)),

                    //1st Row
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            //Arrows and age
                            Row(
                              children: [
                                ArrowButtons(
                                  onPressedUp: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  onPressedDown: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                const SizedBox(width: 10.0),
                                TextAndNumber(
                                  label: 'AGE',
                                  passedNumber: age,
                                )
                              ],
                            ),
                            //Gender Label and Radio Buttons
                            Column(
                              children: [
                                Row(
                                  children: [
                                    TextLabel(
                                      textLabel: 'GENDER',
                                    ),
                                    const SizedBox(width: 5.0),
                                    ToolTipWidget(
                                      toolTipMessage: 'Male/Female?',
                                      iconSize: 20.0,
                                    )
                                  ],
                                ),
                                const SizedBox(height: 15.0),
                                ToggleSwitch(
                                  minHeight: 50,
                                  minWidth: 50,
                                  totalSwitches: 2,
                                  initialLabelIndex: toggleIndex,
                                  icons: [Icons.male, Icons.female],
                                  activeFgColor: Colors.white,
                                  inactiveFgColor: Colors.white,
                                  activeBgColors: [
                                    [
                                      Colors.indigo,
                                      Colors.blue,
                                      Colors.lightBlue,
                                      Colors.indigo
                                    ],
                                    [
                                      Colors.orange,
                                      Colors.pink,
                                      Colors.pink.shade400,
                                      Colors.orange
                                    ]
                                  ],
                                  inactiveBgColor: Colors.grey,
                                  animate: true,
                                  curve: Curves.easeInCirc,
                                  onToggle: (index) {
                                    toggleIndex = index;
                                  },
                                ),
                              ],
                            )
                          ],
                        ),

                        //2nd Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                ArrowButtons(
                                  onPressedUp: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  onPressedDown: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                const SizedBox(width: 10.0),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        TextLabel(
                                          textLabel: 'WEIGHT',
                                        ),
                                        const SizedBox(width: 5.0),
                                        ToolTipWidget(
                                          toolTipMessage: 'Weight in Kilograms',
                                          iconSize: 20.0,
                                        ),
                                      ],
                                    ),
                                    NumberText(
                                      passedNumber: weight,
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        TextLabel(
                                          textLabel: 'HEIGHT',
                                        ),
                                        const SizedBox(width: 5.0),
                                        ToolTipWidget(
                                          toolTipMessage:
                                              'Height in Centimeters',
                                          iconSize: 20.0,
                                        )
                                      ],
                                    ),
                                    NumberText(
                                      passedNumber: height,
                                    )
                                  ],
                                ),
                                const SizedBox(width: 10.0),
                                ArrowButtons(
                                  onPressedUp: () {
                                    setState(() {
                                      height++;
                                    });
                                  },
                                  onPressedDown: () {
                                    setState(() {
                                      height--;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextLabel(
                              textLabel: 'ACTIVITY LEVEL',
                            ),
                            const SizedBox(width: 5.0),
                            ToolTipWidget(
                              toolTipMessage: 'How much Exercise you do?',
                              iconSize: 25.0,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ContainerButton(
                              buttonLabel: 'Sedentary',
                              buttonIcon: Icons.chair,
                              onPressedActivityLevel: () {
                                setState(() {
                                  selectedActivityLevel = 'sedentary';
                                });
                              },
                              activityButtonColor:
                                  selectedActivityLevel == 'sedentary'
                                      ? kActiveColor
                                      : kInActiveColor,
                            ),
                            ContainerButton(
                              buttonLabel: 'Lightly Active',
                              buttonIcon: Icons.directions_walk,
                              onPressedActivityLevel: () {
                                setState(() {
                                  selectedActivityLevel = 'lightly';
                                });
                              },
                              activityButtonColor:
                                  selectedActivityLevel == 'lightly'
                                      ? kActiveColor
                                      : kInActiveColor,
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ContainerButton(
                              buttonLabel: 'Moderately Active',
                              buttonIcon: Icons.sports_gymnastics,
                              onPressedActivityLevel: () {
                                setState(() {
                                  selectedActivityLevel = 'moderately';
                                });
                              },
                              activityButtonColor:
                                  selectedActivityLevel == 'moderately'
                                      ? kActiveColor
                                      : kInActiveColor,
                            ),
                            ContainerButton(
                              buttonLabel: 'Active',
                              buttonIcon: FontAwesomeIcons.personRunning,
                              onPressedActivityLevel: () {
                                setState(() {
                                  selectedActivityLevel = 'active';
                                });
                              },
                              activityButtonColor:
                                  selectedActivityLevel == 'active'
                                      ? kActiveColor
                                      : kInActiveColor,

                              // activityButtonColor: activityButtonColor,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ContainerButton(
                              buttonLabel: 'Very active',
                              buttonIcon: FontAwesomeIcons.dumbbell,
                              // activityButtonColor: activityButtonColor,
                              onPressedActivityLevel: () {
                                setState(() {
                                  selectedActivityLevel = 'very';
                                });
                              },
                              activityButtonColor:
                                  selectedActivityLevel == 'very'
                                      ? kActiveColor
                                      : kInActiveColor,
                            ),
                          ],
                        ),
                        CalculateButton(
                          buttonTitle: 'CALCULATE',
                          onPressed: () {
                            Calculate calc = Calculate(
                              age: age,
                              height: height,
                              weight: weight,
                              selecteGender: toggleIndex,
                              selectedActivityLevel: selectedActivityLevel,
                            );
                            bmiResult = calc.bmi();
                            bmrResult = calc.bmr();
                            interpretation = calc.getInterpretation();
                            print(interpretation);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Result(
                                  result: bmrResult,
                                  bmiResult: bmiResult,
                                  interpretation: interpretation,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

enum ActivityLevels { sedentary, lightly, moderately, active, very }
enum Gender { male, female }
