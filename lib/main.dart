import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('Mock D&D Companion App'),
          backgroundColor: Colors.lightGreen,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice4 = 4, dice6 = 6, dice8 = 8, dice12 = 12, dice20 = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: (){
                        setState(() {
                          ChangeValueD4();
                        });
                        },
                        child: Image.asset('images/d4_$dice4.png')
                    ),
                  )),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: (){
                          setState(() {
                            ChangeValueD6();

                          });
                        },
                        child: Image.asset('images/d6_$dice6.png')),
                  )),

                ],
              ),

          ),
        Center(
          child: Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        ChangeValueD8();
                      });
                    },
                    child: Image.asset('images/d8_$dice8.png')
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        ChangeValueD12();

                      });
                    },
                    child: Image.asset('images/d12_$dice12.png')),
              )),

            ],
          ),

        ),
        Center(
          child: Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        ChangeValueD20();
                      });
                    },
                    child: Image.asset('images/d20_$dice20.png')),
              )),
            ],
          ),

        )
      ],
    );

  }

  void ChangeValueD4(){
    dice4 = 1 + Random().nextInt(4);

  }

  void ChangeValueD6(){
    dice6 = 1 + Random().nextInt(6);

  }

  void ChangeValueD8(){
    dice8 = 1 + Random().nextInt(8);

  }

  void ChangeValueD12(){
    dice12 = 1 + Random().nextInt(12);

  }

 void ChangeValueD20(){
    dice20 = 1 + Random().nextInt(20);
 }
}

