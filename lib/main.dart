import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('Dicee'),
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
  int left = 1, right = 1, d20 = 1;
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
                          ChangeValueD6();
                        });
                        },
                        child: Image.asset('images/dice$left.png')
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
                        child: Image.asset('images/dice$right.png')),
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
                    child: Image.asset('images/d20_$d20.png')
                ),
              )
              ),
            ],
          ),

        )
      ],
    );

  }

  void ChangeValueD6(){
    left = 1 + Random().nextInt(6);
    right = 1 + Random().nextInt(6);
  }
 void ChangeValueD20(){
    d20 = 1 + Random().nextInt(20);
 }
}

