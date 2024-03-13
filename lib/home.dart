// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_exam17/menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(gradient:
       LinearGradient(colors:
       [
         Color.fromARGB(255, 71, 238, 5),
         Color.fromARGB(255, 217, 255, 0),
       ],
       
       begin: Alignment.topCenter,end: Alignment.bottomCenter
       ),
       
       ),
      child: Column(
        children: [
          Expanded(flex: 2,
            child:
          ListTile(title: Text("FINTIMES",style: myStyle(22, Colors.black,FontWeight.w500),),
          trailing: IconButton(onPressed: (){
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Menue()));
          }, icon: Icon(Icons.menu)),),
           ),
           Expanded(flex: 4,
             child: Container(padding: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Everything",style: myStyle(32, Color.fromARGB(255, 133, 138, 138),FontWeight.w700),),
                  Text("about investing plus way more.",style: myStyle(32, Colors.black,FontWeight.w700),),
                ],
              ),
             ),
           ),
           Expanded(
            child: Container(color: Colors.black,
            child: Row(children: [
              Expanded(flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  height: double.infinity,
                margin: EdgeInsets.all(5),
                color: Color.fromARGB(255, 251, 255, 4,),child: Text("Become our member",style: myStyle(22, Colors.black,FontWeight.w500,),),
                
                )),
              Expanded(
                flex: 2,
                child: Container(height: double.infinity,
                  margin: EdgeInsets.only(top: 5,right: 5,bottom: 5),
                  color:Colors.white,
                  child: IconButton(icon:Icon(Icons.add),onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Menue()));
                  },iconSize: 50,)
                  ),
                  
                  ),
            ],),
           ))
        ],
      ),
    ),
    );
  }
}
myStyle(double size,Color clr,[FontWeight? fw]){
  
  return TextStyle(
    fontSize: size,
    color: clr,
    fontWeight: fw
  );
}