import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return dicee();
  }
}

class dicee extends StatefulWidget {
  const dicee({super.key});

  @override
  State<dicee> createState() => _diceeState();
}

class _diceeState extends State<dicee> {
  int left_dice = 1;
  int right_dice = 1;

  void dice_changeleft() {
    setState(() {
      left_dice = Random().nextInt(6) + 1;
    });
  }

  void dice_changeright() {
    setState(() {
      right_dice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(
            "diceee Game",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(60),
          color: Colors.indigo.shade200,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 350,
                    width: 350,
                    color: Colors.green.shade700,
                    child: TextButton(
                      child: Image.asset('assets/images/dice$left_dice.png'),
                      onPressed: () {
                        dice_changeleft();
                      },
                    ),
                  ),
                  Container(
                    height: 350,
                    width: 350,
                    color: Colors.green.shade700,
                    child: TextButton(
                      child: Image.asset('assets/images/dice$right_dice.png'),
                      onPressed: () {
                        dice_changeright();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.black,
                    ),
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            dice_changeleft();
                            dice_changeright();
                          });
                        },
                        child: Text(
                          'SPIN',
                          style: TextStyle(
                              fontFamily: ('Italic.ttf'),
                              fontSize: 40,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
