import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget {
  final int result ;
  final int age ;
  final bool male ;
  Screen2({
    required this.result,
    required this.age,
    required this.male,
  }) {
  }
  int bc=0xff26263c;
  int rc=0xffdc4168;
  int cl=0xff1d2136;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(cl),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text('Your Result',style: TextStyle(
              color: Colors.white,
              fontSize: 20,))),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(borderRadius:
          BorderRadius.circular(15),
              color: Color(bc)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(result < 18.5 ? 'Underweight' :
    result < 25 ? 'Normal' :
    result < 30 ? 'average' : 'Obese',style: TextStyle(
                color:result < 18.5 ? Colors.green :
                result < 25 ? Colors.amberAccent :
                result < 30 ? Colors.orange : Colors.redAccent,
                fontSize: 20,)),
              Spacer(),
              Text('Age : $age',style: TextStyle(
                color: Colors.white,
                fontSize: 20,)),
              Spacer(),
              Text('Gender : ${male? 'Male':'Female'}',style: TextStyle(
                color: Colors.white,
                fontSize: 20,)),
              Spacer(),
              Text('$result',style: TextStyle(
                color: Colors.white,
                fontSize: 50,)),
              Spacer(),
              Text('mmmmmmmmmm good ',style: TextStyle(
                color: Colors.white,
                fontSize: 10,)),
              Spacer(),
            ],),
          ),
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
                  Navigator.pop(context);
                },
                child: Text('Recalcculate',style: TextStyle(color: Colors.white))),
          ),
        )
      ],
      ),
    );
  }
}
