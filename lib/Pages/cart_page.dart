

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Provider/home_page_provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color.fromARGB(255, 153, 255, 255),
        title: Text("Cart"),
      ),
      body: SafeArea(
        child:ListView(
          scrollDirection: Axis.vertical,
          children: [

            SizedBox(height: 20,),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Total Porduct Ammount", style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),

                Consumer<ItemCount>(
                  builder: (context, provider,child){ 
                    
             return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(provider.count.toString()),
                
                  SizedBox(width: 200,),
                  Text("Total",  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),)
                  

                ],
               );
              } 
                 ), 


                 SizedBox(height: 35,),

                 Center(
                   child: Consumer<UserDetails>(
                    builder: (context, provider, child){
                      return Stack(
                        children: [ 
                          Container(
                                height: 130,
                                width: 130,
                                decoration: BoxDecoration(
                                color: Colors.amber,
                                shape: BoxShape.circle
                                ),
                                child:  provider.imageFile != null
                                       ? ClipOval(
                                         child: Image.file(
                                          provider.imageFile!,
                                           fit: BoxFit.cover,
                             ),
                        )
                                    : Icon(
                                         Icons.person,
                                          size: 80,
                                        color: Colors.grey,
                                   ),
                        ),

                        Positioned(
                          top: 85,
                          left: 82,
                          child: Consumer<UserDetails>(
                            builder: (context, provider, child){
                            return IconButton(
                              onPressed:(){
                                provider.pickImage();
                                
                              } ,
                               icon: Icon(Icons.edit_square, color:  Colors.grey, size: 26,)
                            );
                           } 
                          )
                        
                        )



                        ],
                      );
                    }
                   
                   ),
                 ),




              SizedBox(height: 35,),

              Center(
                child: Consumer<UserDetails>(
                builder: (context, provider,child){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name: ${provider.userName}",  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),)
                
                    ],
                  );
                
                }
                
                ),


              ),
              SizedBox(height: 20,),

              Center(
                child: Consumer<UserDetails>(
                builder: (context, provider,child){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Age: ${provider.userAge.toString()}",  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),)
                
                    ],
                  );
                
                }
                
                ),

                
              ),

              SizedBox(height: 20,),
              Center(
                child: Consumer<UserDetails>(
                  builder: (context , provider , child){
                    return Text("Skills: ${provider.userSkills}",   style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),);
                  }
                
                
                ),
              )




             
                
          

            ],
           )
            


          ],
        )
      
      ),
    );
  }
}