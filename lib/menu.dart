import 'package:flutter/material.dart';

import 'package:ui_exam17/home.dart';

class Menue extends StatefulWidget {
  const Menue({super.key});

  @override
  State<Menue> createState() => _MenueState();
}

class _MenueState extends State<Menue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child:     
      Column(
        children: [
          Expanded(flex: 3,
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(bottom: 5),
              color: Color.fromARGB(255, 64, 253, 70),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           ListTile(
              title: Text("FINTIMES",style: myStyle(22, Colors.black,FontWeight.w500),),
              trailing: IconButton(onPressed: (){
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
          }, icon: Icon(Icons.menu)),
            ),
            SizedBox(height:20),
                  Expanded(
                    child: Container(padding: EdgeInsets.all(4),
                    
                              color: Colors.black,
                              child: Text("Top App'22",style: myStyle(18, Colors.white),)),
                  ),SizedBox(height: 20,),
            RichText(
            text: TextSpan(
              text: 'Introducing the first ',
              style: myStyle(22, Colors.black),
              children: const <TextSpan>[
                TextSpan(text: 'all-in-one', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' to help youput your financial assets inteh best possible opportunities!'),
              ],
            ),
          )
          
                  ],),),
          ),
         Expanded(
          flex: 2,
          child: Container(
             margin: EdgeInsets.only(bottom: 5),
              color: Color.fromARGB(255, 64, 253, 70),
            padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fit Times",style: myStyle(26, Colors.black),),
                  CircleAvatar(child: Icon(Icons.play_arrow,size: 26,))
                ],
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Investment proces",style: myStyle(22, Colors.black),),
                  Icon(Icons.arrow_forward,size: 26,)
                ],
              ),
            ],
          ),
         )),
         Expanded(
          flex: 2,
          child: Container(
             margin: EdgeInsets.only(bottom: 5),
              color: Color.fromARGB(255, 64, 253, 70),
            padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Strategy",style: myStyle(26, Colors.black),),
                  Stack(
                  children: [
                    Positioned(
                      left: 25,
                      child: CircleAvatar(maxRadius: 20,backgroundColor: Colors.teal,
                      child: CircleAvatar(maxRadius: 16,backgroundColor: Colors.white,
                        child: Icon(Icons.menu),
                      ),
                    )),
                    CircleAvatar(maxRadius: 20,backgroundColor: Colors.teal,
                      child: CircleAvatar(maxRadius: 16,backgroundColor: Colors.white,
                        child: Icon(Icons.menu),
                      ),
                    ),
                    SizedBox(width: 70,)
                    
                  ],
                 )
                ],
              ), SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("CHECK OUR",style: myStyle(22, Colors.black),),
                  Icon(Icons.arrow_forward,size: 26,)
                ],
              ),
            ],
          ),
         )),
         Expanded(
          flex: 2,
          child: Container(
         
              color: Color.fromARGB(255, 64, 253, 70),
            padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fit Times",style: myStyle(26, Colors.black),),
                  
                ],
              ),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Investment proces",style: myStyle(22, Colors.black),),
                  Icon(Icons.arrow_forward,size: 26,)
                ],
              ),
            ],
          ),
         )),
         
                 ],
      ), 
      ))
  
    ;
  }
}