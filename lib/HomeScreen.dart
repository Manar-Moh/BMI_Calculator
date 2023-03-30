import 'dart:math';

import 'package:bmi/ResultScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static const colorContainer = 0xff159895;
  Color colorSelected = const Color(0xff1A5F7A);
  int counterAge =  10;
  int counterWeight =  60;
  double counterHeight =  120;
  bool isMale = true;

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
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isMale = true;
                      }),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: isMale? colorSelected :const Color(colorContainer),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.male,size: 100.0,color: Colors.white),
                              Text('Male',style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                    ),
                  ),
                  const SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() {
                        isMale = false;
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          color: isMale?const Color(colorContainer): colorSelected,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.female,size: 100.0,color: Colors.white),
                            Text('Female',style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(colorContainer),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Height',style: TextStyle(color: Colors.white,fontSize: 23.0,fontWeight: FontWeight.w500),),
                          const SizedBox(height: 5.0,),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('${counterHeight.round()}',style: const TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.w500),),
                              const Text('CM',style: TextStyle(color: Colors.white,fontSize: 15.0,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          Slider(
                              value: counterHeight,
                              min: 80.0,
                              max: 200.0,
                              activeColor: const Color(0xff002B5B),
                              inactiveColor: Colors.white,
                              onChanged: (value){
                                setState(() {
                                  counterHeight = value;
                                });
                              }
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color(colorContainer),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Age',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            const SizedBox(height: 5.0,),
                            Text('$counterAge',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(height: 5.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if(counterAge >= 5) {
                                        counterAge--;
                                      }
                                    });
                                  },
                                  mini: true,
                                  heroTag: 'age-',
                                  backgroundColor: const Color(0xff002B5B),
                                  child: const Icon(Icons.remove),
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      if(counterAge < 90) {
                                        counterAge++;
                                      }
                                    });
                                  },
                                  backgroundColor: const Color(0xff002B5B),
                                  mini: true,
                                  heroTag: 'age+',
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ),
                  const SizedBox(width:20.0 ,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(colorContainer),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Weight',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          Text('$counterWeight',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    if(counterWeight >= 10) {
                                      counterWeight--;
                                    }
                                  });
                                },
                                backgroundColor: const Color(0xff002B5B),
                                mini: true,
                                heroTag: 'weight-',
                                child: const Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    if(counterWeight < 200) {
                                      counterWeight++;
                                    }
                                  });
                                },
                                backgroundColor: const Color(0xff002B5B),
                                mini: true,
                                heroTag: 'weight+',
                                child: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
           child: MaterialButton(
             height: 50.5,
             onPressed: (){
               double result = (counterWeight / pow(counterHeight / 100, 2));
               Navigator.push(
                 context,
                  MaterialPageRoute(builder: (context) => ResultScreen(result),),
               );
             },
             child: const Text(
               'Calculate',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20.0,
               ),
             ),
           ),
         ),
        ],
      ),
    );
  }
}
