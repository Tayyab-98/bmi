import 'package:flutter/material.dart';

import 'cards.dart';
import 'gender.dart';

const bottom_cont = Color(0xffEB1555);
const activeColor = Color(0xff1D1E33);
const inactiveColor = Color(0xfF111128);
const Bottom_Height_Container = 80.0;
enum Gender { male, female }

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color maleCard = inactiveColor;
  Color femaleCard = inactiveColor;
  void isSelceted(Gender selectedgender) {
    if (selectedgender == Gender.male) {
      maleCard = activeColor;
      femaleCard = inactiveColor;
    } else {
      femaleCard = activeColor;
      maleCard = inactiveColor;
    }
  }

  // void update(int gender) {
  //   if (gender == 1) {
  //     if (maleCard == inactiveColor) {
  //       maleCard = activeColor;
  //     } else {
  //       maleCard = inactiveColor;
  //     }
  //   } else if (gender == 2) {
  //     if (femaleCard == inactiveColor) {
  //       femaleCard = activeColor;
  //     } else {
  //       femaleCard = inactiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI")),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelceted(Gender.male);
                          //update(1);
                        });
                      },
                      child: cards(
                          colour: maleCard,
                          cardChild: genderCard(
                              genderName: 'MALE', genderType: Icons.male)),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelceted(Gender.female);

                          // update(2);
                        });
                      },
                      child: cards(
                          colour: femaleCard,
                          cardChild: genderCard(
                              genderName: 'FEMALE', genderType: Icons.female)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: cards(
                  colour: activeColor,
                ))
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: cards(
                  colour: activeColor,
                )),
                Expanded(
                    child: cards(
                  colour: activeColor,
                ))
              ],
            )),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: bottom_cont,
              height: Bottom_Height_Container,
              width: double.infinity,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
