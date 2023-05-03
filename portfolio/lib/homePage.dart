import 'package:flutter/material.dart';

import 'package:folio/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  margin: const EdgeInsets.all(30),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: const FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              "LUCAS\n SERBU",
                              style:
                                  TextStyle(fontSize: 240, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.topRight,
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: " Computer  science  student,\n"),
                                  TextSpan(text: "Future"),
                                  TextSpan(
                                    text: "  mobile  developer",
                                    style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Expanded(
                      flex: 2,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Swipe",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        color: secondaryColor,
                        width: 6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Expanded(
        //   child: Container(
        //     margin: const EdgeInsets.all(30),
        //     alignment: Alignment.center,
        //     child: FittedBox(
        //       fit: BoxFit.scaleDown,
        //       child: Image.asset(
        //         "assets/images/phone.png",
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
