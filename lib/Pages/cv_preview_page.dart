import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Provider/cv_form_provider.dart';

class CvPreviewPage extends StatefulWidget {
  const CvPreviewPage({super.key});

  @override
  State<CvPreviewPage> createState() => _CvPreviewPageState();
}

class _CvPreviewPageState extends State<CvPreviewPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color.fromARGB(255, 202, 126, 247),
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
                Container(
                  padding: EdgeInsets.all(6),
                  height: MediaQuery.of(context).size.height*0.70,
                  width: MediaQuery.of(context).size.width*0.95,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: BoxBorder.all(color: Colors.black)
                  ),
                  child: Stack(
                    children:[ 
                      Image.asset("assets/Images/jobCV.png", fit: BoxFit.fill,),
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
                        top: 245,
                        left: 34,
                        
                        child: Container(
                           height: 17,
                            width: 130,
                            color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Consumer<CvDetails>(
                                builder: (context, provider, child) {
                                  return Text(
                                    provider.userPhoneNumber.toString(), style: TextStyle(
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


          //email      
                      Positioned(
                        top: 263,
                        
                        left: 34,
                        child: Container(
                           height: 17,
                            width: 130,
                            color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Consumer<CvDetails>(
                                builder: (context, provider, child) {
                                  return Text(
                                    provider.userEmail, style: TextStyle(
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

            //address            
                    

                    Positioned(
                        top: 286,
                        left: 34,
                        child: Container(
                           height: 23,
                            width: 130,
                            color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Consumer<CvDetails>(
                                builder: (context, provider, child) {
                                  return Text(
                                    provider.userAddress, style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10,
                                      overflow: TextOverflow.ellipsis
                                     ),
                                     softWrap: true,
                                  );
                                  
                                }, 
                              ),
                            ],
                          ),
                        )
                      ),















                    ],
                  ),
                ),
              ],
            )
          ],
        )
      ),







      backgroundColor: const Color.fromARGB(255, 251, 243, 197),

    );
  }
}