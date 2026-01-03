import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Pages/cart_page.dart';
import 'package:state_management/Pages/cv_form_page.dart';


import 'package:state_management/Provider/home_page_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController ageController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController userAgeController = TextEditingController();
  TextEditingController userSkillsController = TextEditingController();


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
                  controller: ageController,
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
                 
                    
                    
                  
                    ),

                    SizedBox(height: 15,),
                      ElevatedButton(
                    style: buttonstyle,
                    onPressed: () {
                      if (ageController.text.isNotEmpty) {
                       
                        provider.checkEligible(int.parse(ageController.text));
                      }
                    },
                    child: const Text("Submit"),
                  ),



               ],
             );
              },
           ),


           SizedBox(height: 20,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Shoping", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),

             Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(context.watch<ItemCount>().count.toString()),
                
                  SizedBox(width: 200,),
                  Text("Total",  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),)
                  

                ],
               ),
            
              SizedBox(height: 25,),

             
                
             Row(
               children: [

                 ElevatedButton(
                      style: buttonstyle,
                      onPressed: (){
                        if(context.read<ItemCount>().count<5){
                          context.read<ItemCount>().addItem();
                          

                        }
                         //Provider.of<ItemCount>(context, listen: false).addItem();
                      }, 
                      child: Icon(Icons.add)
                      ),

                      SizedBox(width: 10,),

                        ElevatedButton(
                      style: buttonstyle,
                      onPressed: (){
                        if(context.read<ItemCount>().count>0){
                        context.read<ItemCount>().removeItem();
                        }
                         //Provider.of<ItemCount>(context, listen: false).removeItem();
                      }, 
                      child: Icon(Icons.remove)
                      ),


               ],
             ),

                  

              



              SizedBox(height: 30,),

               Consumer<UserDetails>(
            builder: (context, provider, child) {
              
            
             return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                   child: TextField(
                    controller: userNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(8),
                           borderSide: BorderSide(
                             color: Colors.grey,
                             width: 1.5,
                           ),
                         ),
                   
                        
                        
                        
                         label:Text("Enter full name")
                      ),
                                
                      
                    
                      ),
                 ),

                

               ],
             );
              },
           ),
           SizedBox(height: 20,),


             Consumer<UserDetails>(
            builder: (context, provider, child) {
              
            
             return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                   child: TextField(
                    controller: userAgeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(8),
                           borderSide: BorderSide(
                             color: Colors.grey,
                             width: 1.5,
                           ),
                         ),
                   
                        
                        
                        
                        label:Text("Enter age")
                      ),
                                
                      
                    
                      ),
                 ),

                

               ],
             );
              },
           ),

           SizedBox(height: 20,),

           Consumer<UserDetails>(
            builder: (context, provider, child){
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: TextField(
                   controller: userSkillsController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(8),
                           borderSide: BorderSide(
                             color: Colors.grey,
                             width: 1.5,
                           ),
                         ),
                   
                        
                        
                        
                        label:Text("Enter your skills")
                      ),


                ),
              );

            }
           
           ),



           SizedBox(height: 20,),

           Consumer<UserDetails>(
            builder: (context, provider, child){
             return Center(
               child: ElevatedButton(
                style: buttonstyle,
                onPressed: (){
                  provider.pickImage();
               
                 }, 
               child: Text("Choose an Image")
               ),
              );
             },
           ),




           SizedBox(height: 20,),







             Center(
               child: ElevatedButton(
                        style: buttonstyle,
                        onPressed: (){
                         
                         // context.read<UserDetails>().inputUserName(newUsername : userNameController.text); not Recommanded
                          Provider.of<UserDetails>(context, listen: false).inputUserName(newUsername : userNameController.text);
                          Provider.of<UserDetails>(context, listen: false).inputUserAge(newUserAge: int.parse(userAgeController.text));
                          Provider.of<UserDetails>(context, listen: false).inputUserSkills(newUserSkills: userSkillsController.text);
                          
                        }, 

                        child: Text("Save")
                        ),
             ),







              SizedBox(height: 35,),

              ElevatedButton(
                style: buttonstyle,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));

              }, 
              child: Center(child: Text("Next Page", ))
              )


            ],
           ),



            SizedBox(height: 35,),

              ElevatedButton(
                style: buttonstyle,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CvFormPage()));

              }, 
              child: Center(child: Text("CV Form Page", ))
              )

          







        ],
      ),


    );
  }
}