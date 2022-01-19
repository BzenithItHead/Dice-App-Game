import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int leftDiceNumber =1;
  int rightDiceNumber =1;

  void roll(){
    setState(() {
      leftDiceNumber =Random().nextInt(6)+1;
      rightDiceNumber =Random().nextInt(6)+1;
    });
  }
//hazrat ali amer nam
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text('Dice App Game')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage('images/dice_$leftDiceNumber.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image(
                      image: AssetImage('images/dice_$rightDiceNumber.png'),
                    ),
                  ),
                ),
              ],
            ),
            RaisedButton(
              onPressed:roll,
              child: Text('Play', style:TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold)),
              color: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
