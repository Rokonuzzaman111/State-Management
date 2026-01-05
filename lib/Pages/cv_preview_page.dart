

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Provider/cv_form_provider.dart';



class CvPreviewPage extends StatefulWidget {
  const CvPreviewPage({super.key});

  @override
  State<CvPreviewPage> createState() => _CvPreviewPage();

}

class _CvPreviewPage extends State<CvPreviewPage> {



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color.fromARGB(255, 154, 105, 119),
        title: Text(
          "Professional CV Template",
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 22
          ),
        ),
      ),

      body: SafeArea(
        
          child: ListView(
            
            children: [
              SizedBox(height: 25,),
              Column(
                children: [
                  Text(
                    "Here is your CV",
                   style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
                  ),

                  SizedBox(height: 10,),

               Container(
                    height: MediaQuery.of(context).size.height*0.70,
                    width: MediaQuery.of(context).size.width*100,
                   // color: Colors.amber,
                        child: Center(
                           child: Container(
                             height: 604,
                             width: 427,
                             color: Colors.grey,

                             child:  Stack(
                        children:[ 
                          Image.asset("assets/Images/jobCV.png"),
                          Positioned(
                            top:35,
                            left: 26,
                            child: Consumer<CvDetails>(
                              builder: (context, provider, child) {
                                
                              return Container(
                               height: 106,
                               width: 106,
                               decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 4)
                                
                               ),
                               child: provider.imageFile != null
                                           ? ClipOval(
                                             child: Image.file(
                                              provider.imageFile!,
                                               fit: BoxFit.cover,
                                 ),
                            )
                                        : Icon(
                                             Icons.person,
                                              size: 80,
                                            color: Colors.white,
                                       ),
                              
                               );
                              },
                            )
                          ),
                              
                          
                              
                        
                              //first name
                          Positioned(
                            top: 141,
                           
                             child:  Container(
                                  height: 20,
                                  width: 165,
                                //  color: Colors.amber,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Consumer<CvDetails>(
                                        builder: (context, provider, child) {
                                          return Text(
                                            provider.useFirstName, style: TextStyle(
                                              color: Color(0xFF608abf),
                                              fontSize: 12,
                                            ),
                                          );
                                          
                                        }, 
                                      ),
                                    ],
                                  ),
                                ),
                              
                          
                          ),
                              
                              
                              //last name
                          Positioned(
                            top: 157,
                            
                            child: Container(
                               height: 20,
                                width: 165,
                                //color: Colors.amber,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.useLastName, style: TextStyle(
                                          color: Color(0xFF608abf),
                                          fontSize: 12,
                                        ),
                                      );
                                      
                                    }, 
                                  ),
                                ],
                              ),
                            )
                          ),
                              
                              
                              //role
                          
                          Positioned(
                            top: 173,
                            
                            child: Container(
                               height: 20,
                                width: 165,
                               // color: Colors.amber,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.userRole, style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                         )
                                      );
                                      
                                    }, 
                                  ),
                                ],
                              ),
                            )
                          ),
                              
                              
                              //number
                              
                           Positioned(
                            top: 244.5,
                            left: 34,
                            
                            child: Container(
                               height: 17,
                                width: 130,
                               // color: Colors.amber,
                              child: 
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.userPhoneNumber.toString(), style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                         )
                                      );
                                      
                                    }, 
                                  ),
                               
                            )
                          ),
                              
                              
                                //email      
                          Positioned(
                            top: 261,
                            
                            left: 34,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 10),
                               height: 20,
                                width: 130,
                                //color: Colors.amber,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                
                                children: [
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.userEmail, style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                         )
                                      );
                                      
                                    }, 
                                  ),
                                ],
                              ),
                            )
                          ),
                              
                                  //address            
                        
                              
                        Positioned(
                            top: 280,
                            left: 34,
                            child: Container(
                               height: 40,
                                width: 130,
                               // color: Colors.amber,
                              child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.userAddress, style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 8,
                                         
                                         ),
                                         softWrap: true,
                                         maxLines: 3,
                                      );
                                      
                                    }, 
                                  ),
                                ],
                              ),
                            )
                          ),
                              
                              
                          //about me    
                              
                              
                            Positioned(
                            top: 341,
                            left: 18,
                            child: Container(
                               height: 100,
                                width: 130,
                               // color: Colors.amber,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.userInfo,
                                          maxLines: 8, 
                                          overflow: TextOverflow.ellipsis, 
                                         softWrap: true,
                                        
                                        
                                         style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 8,
                                         
                                         ),
                                         
                                        
                                      );
                                      
                                    }, 
                                  ),
                                ],
                              ),
                            )
                          ),


                              //Skills
                          Positioned(
                            top: 470,
                            left: 34,
                            child: Container(
                               height: 120,
                                width: 113,
                              //  color: Colors.amber,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 16,
                                    width: 113,
                                  //  color: Colors.blueGrey,
                                     child: 
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.skill1, style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                         )
                                      );
                                      
                                    }, 
                                  ),
                                  ),
                              
                                  SizedBox(height: 3,),
                              
                              
                                  Container(
                                    height: 16,
                                    width: 113,
                                   // color: Colors.blueGrey,
                                    child: 
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.skill2, style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                         )
                                      );
                                      
                                    }, 
                                  ),
                                  ),
                              
                                  SizedBox(height: 3,),
                              
                                  
                                  Container(
                                    height: 16,
                                    width: 113,
                                  //  color: Colors.blueGrey,
                                    child: 
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.skill3, style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                         )
                                      );
                                      
                                    }, 
                                  ),
                                  ),
                              
                              
                                   SizedBox(height: 3,),
                              
                                  
                                  Container(
                                    height: 16,
                                    width: 113,
                                   // color: Colors.blueGrey,
                                    child: 
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.skill4, style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                         )
                                      );
                                      
                                    }, 
                                  ),
                                  ),
                              
                                SizedBox(height: 3,),
                              
                                  
                                  Container(
                                    height: 16,
                                    width: 113,
                                   // color: Colors.blueGrey,
                                    child: 
                                  Consumer<CvDetails>(
                                    builder: (context, provider, child) {
                                      return Text(
                                        provider.skill5, style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 9,
                                         )
                                      );
                                      
                                    }, 
                                  ),
                                  ),
                              
                              
                                 
                              
                              
                                 
                                ],
                              ),
                            )
                          ),
                              
                              
                          Positioned(
                            top: 473,
                            left: 20,
                            child: Icon(Icons.circle, size: 8, color: Colors.grey,),
                          
                          ),
                              
                              
                           Positioned(
                            top: 492,
                            left: 20,
                            child: Icon(Icons.circle, size: 8, color: Colors.grey,),
                          
                          ),
                              
                          Positioned(
                            top: 511,
                            left: 20,
                            child: Icon(Icons.circle, size: 8, color: Colors.grey,),
                          
                          ),
                              
                           Positioned(
                            top: 530,
                            left: 20,
                            child: Icon(Icons.circle, size: 8, color: Colors.grey,),
                          
                          ),
                              
                           Positioned(
                            top: 549,
                            left: 20,
                            child: Icon(Icons.circle, size: 8, color: Colors.grey,),
                          
                          ),
                              
                        
                              
                              
                        ],
                        ),
                     ),
                 ),
               ),






                  SizedBox(height: 20,),
                  ElevatedButton(
              onPressed: (){},
                child: Text("Save as PDF"),
            )

                ],
              )
            ],
          ),
        
      ),







      backgroundColor: const Color.fromARGB(255, 251, 243, 197),

    );
  }
}


















