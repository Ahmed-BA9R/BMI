import 'dart:math';

import 'package:bmi/SCREEN2.dart';
import 'package:flutter/material.dart';
class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int bc=0xff26263c;
  int rc=0xffdc4168;
  int cl=0xff1d2136;
  bool male=true;
  double hight=120;
  int age=20;
  int weight=60;
  int result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(cl),
      appBar: AppBar(title: Text('BMI CALC')),
      body: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        male=true;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Icon(Icons.male,size: 70,color: Colors.white),
                        Text('Male',style: TextStyle(
                            color: Colors.white,fontSize: 20,
                            fontWeight: FontWeight.bold),)
                      ],),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: male? Color(rc) :Color(bc)),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        male=false;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.female,size: 70,color: Colors.white),
                          Text('Female',style: TextStyle(
                              color: Colors.white,fontSize: 20,
                              fontWeight: FontWeight.bold),)
                        ],),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: !male? Color(rc) :Color(bc)),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(borderRadius:
              BorderRadius.circular(15),
                  color: Color(bc)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hight',style: TextStyle(
                      color: Colors.white,fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  Row(crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic ,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('${hight.round()}',style: TextStyle(
                      color: Colors.white,fontSize: 30,
                      fontWeight: FontWeight.bold),),
                    SizedBox(width: 5,),
                    Text('cm',style: TextStyle(
                      color: Colors.white,fontSize: 15,
                      fontWeight: FontWeight.bold),),
                  ],),
                  Slider(value: hight,
                      max: 250,
                      min: 50,
                      activeColor: Color(rc),
                      inactiveColor: Colors.grey,
                      onChanged: (value){setState(() {
                        hight=value;
                      });})
                ],
              ),
            ),
          )),
          Expanded(child: Padding (
            padding: const EdgeInsets.all(15),
            child: Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(15),
                      color: Color(bc)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text('Age',style: TextStyle(color: Colors.white
                        ,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('$age',style: TextStyle(color: Colors.white
                        ,fontSize: 40,fontWeight: FontWeight.bold),),
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      FloatingActionButton(onPressed: (){
                        setState(() {
                          if(age>0){age--;}
                          else age=0;
                        });
                      },backgroundColor: Colors.grey,
                        child: Icon(Icons.remove),mini: true,heroTag: 'age-'),
                      SizedBox(width: 10),
                      FloatingActionButton(onPressed: (){
                        setState(() {
                          age++;
                        });
                      },backgroundColor: Colors.grey,
                        child: Icon(Icons.add),mini: true,heroTag: 'age+'),
                    ],)
                  ],),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(15),
                      color: Color(bc)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text('Weight',style: TextStyle(color: Colors.white
                        ,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('$weight',style: TextStyle(color: Colors.white
                        ,fontSize: 40,fontWeight: FontWeight.bold),),
                    Row(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      FloatingActionButton(onPressed: (){setState(() {
                        if(weight>0){weight=weight-1;}
                        else weight=0;
                      });
                      },backgroundColor: Colors.grey,
                        child: Icon(Icons.remove),mini: true,heroTag: 'weight-'),
                      SizedBox(width: 10),
                      FloatingActionButton(
                          onPressed: (){setState(() {
                        weight=weight+1;
                      });},backgroundColor: Colors.grey,
                        child: Icon(Icons.add),mini: true,heroTag: 'weight+'),
                    ],)
                  ],),
                ),
              ),
            ],),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
            child: Container(
              decoration: BoxDecoration(borderRadius:
              BorderRadius.circular(10),
                  color: Color(rc)),
              width: double.infinity,
              height: 50,
              child: MaterialButton(
                  onPressed: (){
                   var result=weight/pow(hight/100, 2);
                    print(result);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) {
                          return Screen2(
                            age: age,
                            male: male,
                            result: result.round(),
                          );
                        }));
                  },
                  child: Text('Calcculate',style: TextStyle(color: Colors.white))),
            ),
          )
        ],
      ),
    );
  }
}
