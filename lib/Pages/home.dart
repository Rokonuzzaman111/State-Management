import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ButtonStyle buttonstyle = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 255, 236, 180),
    foregroundColor: Colors.black
  );



  //set State
  int count = 0;



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("State Management Learning"),
        backgroundColor: const Color.fromARGB(255, 122, 255, 215),
        toolbarHeight: 35,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          
          SizedBox(height: 25,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 177, 174, 174),
                  border: BoxBorder.all(color: Colors.blueGrey, width: 1.8)
                ),
                child: Center(child: Text(count.toString()))
                ),

              SizedBox(height: 10,),
              
              ElevatedButton(
                style: buttonstyle,
                onPressed: (){
                  setState(() {
                    count++;
                    
                  });

              
               }, 
               child: Text("Plus")
              ),

              SizedBox(height: 5,),
               ElevatedButton(
                style: buttonstyle,
                onPressed: (){
                  setState(() {
                    count--;
                    
                  });

              
               }, 
               child: Text("Minus")
              )



            ],
          ),

          SizedBox(height: 20,),
          Text("Others")







        ],
      ),


    );
  }
}