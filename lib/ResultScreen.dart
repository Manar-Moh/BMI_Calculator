import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.bmiResult, {Key? key}) : super(key: key);

  static const colorContainer = 0xff159895;
  final double bmiResult ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff002B5B),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff002B5B),
        title: const Text('BMI-Calculator'),
        elevation: 5,
      ),
      body: Column(
        children: [
           Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your BMI is : ${bmiResult.round()}',
                    style: const TextStyle(color: Colors.white,fontSize: 23.0,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 10.0),
                  adviseResult(),
                ],
              ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff002B5B),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                )
              ],
            ),
            // color: const Color(0xff002B5B),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  'Developed by ManarMoh',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget adviseResult() {
    if (bmiResult >= 25) {
      return const Text(
        'You Have A Higher Than Normal Body Weight . Try To Exercise More .',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300));
    } else if (bmiResult > 18.5) {
      return const Text(
          'You Have A Normal Body Weight . Good Job . ',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300));
    } else {
      return const Text(
          'You Have A Lower Than Normal Body Weight . You Can Eat A Bit More .',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300));
    }
  }
}
