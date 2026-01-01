import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Provider/home_page_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String ageInput="";

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
         /* Column(
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
          */


           Consumer<HomePageProvider>(
            builder: (context, provider, child) {
              
            
             return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [

                Text(
                  provider.eligibilityMessage.toString(),
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,

                    
                    color: (provider.isEligible == true) ? const Color.fromARGB(255, 6, 255, 56) : const Color.fromARGB(255, 255, 0, 0)
                  ),
                ),

                 TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(8),
                         borderSide: BorderSide(
                           color: Colors.grey,
                           width: 1.5,
                         ),
                       ),
                 
                      
                      
                      
                      hintText: "Enter your age"
                    ),
                    onChanged: (value) {
                     ageInput = value;
                    },
                    
                    
                  
                    ),

                    SizedBox(height: 15,),
                      ElevatedButton(
                    style: buttonstyle,
                    onPressed: () {
                      if (ageInput.isNotEmpty) {
                       
                        provider.checkEligible(int.parse(ageInput));
                      }
                    },
                    child: const Text("Submit"),
                  ),



               ],
             );
              },
           ),
          







        ],
      ),


    );
  }
}