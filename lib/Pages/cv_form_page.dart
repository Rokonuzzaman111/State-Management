import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Pages/cv_choose.dart';

import 'package:state_management/Provider/cv_form_provider.dart';
class CvFormPage extends StatefulWidget {
  const CvFormPage({super.key});

  @override
  State<CvFormPage> createState() => _CvFormPageState();
}

class _CvFormPageState extends State<CvFormPage> {

  final _formKey = GlobalKey<FormState>();
  



  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userRoleController = TextEditingController();
  TextEditingController userPhoneNumberController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userAddressController = TextEditingController();
    TextEditingController userInfoController = TextEditingController();
  TextEditingController skill1Controller = TextEditingController();
  TextEditingController skill2Controller = TextEditingController();
  TextEditingController skill3Controller = TextEditingController();
  TextEditingController skill4Controller = TextEditingController();
  TextEditingController skill5Controller = TextEditingController();
  
  






   ButtonStyle buttonstyle = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 255, 236, 180),
    foregroundColor: Colors.black
  );


  ButtonStyle buttonstyle1 = ElevatedButton.styleFrom(
    backgroundColor:  Colors.grey
   
  );




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color.fromARGB(255, 154, 105, 119),
        title: Text(
          "Form Page",
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 22
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 5,),
            Form(
              key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                        "CV Form Fill Up",
                         style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20
                         ),
                         
                      ),
                  ),
                  
              
              
              
                  Divider(),
                  SizedBox(height: 5,),
              
              
              
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                        "Personal Details",
                         style: TextStyle(
                          color: Color.fromARGB(255, 109, 112, 105),
                          fontSize: 20
                         ),
                         
                      ),
                  ),
                  
              
              
              
              
                  SizedBox(height: 7,),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      controller: firstNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        label: Text("Enter First Name"),
                        border: OutlineInputBorder(),
                        
                      ),
                        validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "First Name is required";
                          }
                         return null;
                    },
              
                    ),
                  ),
              
              
                   
                  Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      controller: lastNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        label: Text("Enter Last Name"),
                        border: OutlineInputBorder(),
                        
                        
                      ),
                      
                      validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Last Name is required";
                          }
                       return null;
                    },
              
                    ),


                  ),
              
              
                   Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      controller: userRoleController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        label: Text("Enter Role"),
                        border: OutlineInputBorder(),
                        
                      ),
                      validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "What's Role Will You Appying";
                          }
                       return null;
                    },
              
                    ),
                    
                  ),
              
                  
              
              
              
              
              
                
                SizedBox(height: 10,),
                   
                       Row(
                         children: [
                           Padding(
                             padding:  EdgeInsets.only(left: 12),
                             child: Consumer<CvDetails>(
                              builder: (context, provider, child) {
                                return  GestureDetector(
                                  onTap: () {
                                    provider.pickImage();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 160,
                                    
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color.fromARGB(255, 209, 205, 205),
                                    ),
                                    child: Center(child: Text("Click Here (Photo)", style: TextStyle(color:Colors.blue) ,))
                                    ),
                                );
                              },
                             ),
                           ),

                           SizedBox(width: 10,),
                           Text(
                            "Choose a Picture For Your CV",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
                           )
                         ],
                       ),
                     
              
                     SizedBox(height: 45,),
              
                      Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                        "Contact Details",
                         style: TextStyle(
                          color: Color.fromARGB(255, 109, 112, 105),
                          fontSize: 20
                         ),
                         
                      ),
                  ),
                
              
                   Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      controller: userPhoneNumberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: Text("Enter Phone Number"),
                        border: OutlineInputBorder(),
                        
                      ),
                      validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Mobile Number is required";
                          }
                       return null;
                    },
              
                    ),

                  ),
              
              
              
                  
                  Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      controller: userEmailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        label: Text("Enter e-mail"),
                        border: OutlineInputBorder(),
                        
                      ),
                      validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Email is required";
                          }
                       return null;
                    },
              
                    ),
                  ),
              
              
                   Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      controller: userAddressController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        label: Text("Enter address"),
                        border: OutlineInputBorder(),
                        
                      ),
                      validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Address is required";
                          }
                       return null;
                    },
              
                    ),
                  ),

                  SizedBox(height: 45,),
                       Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                        "About Your Performance",
                         style: TextStyle(
                          color: Color.fromARGB(255, 109, 112, 105),
                          fontSize: 20
                         ),
                         
                      ),
                  ),
                  SizedBox(height:10,),




                   Container(
                    padding: EdgeInsets.all(12),
                    child: TextFormField(
                      maxLines: 3,
                      controller: userInfoController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        label: Padding(
                          padding:  EdgeInsets.only(bottom: 40),
                          child: Text("Enter Your Performance"),
                        ),
                        
                        border: OutlineInputBorder(),
                        
                        
                      ),
                     /* validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Address is required";
                          }
                       return null;
                    },
              */
                    ),
                    
                  ),



                    SizedBox(height: 45,),
              
                      Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                        "Add Your Skills",
                         style: TextStyle(
                          color: Color.fromARGB(255, 109, 112, 105),
                          fontSize: 20
                         ),
                         
                      ),
                  ),



                    Container(
                    padding: EdgeInsets.only(left: 10, right: 130, top: 10),
                    child: TextFormField(
                      controller: skill1Controller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.volunteer_activism_outlined),
                        label: Text("1."),
                        border: OutlineInputBorder(),
                        
                      ),
                     /* validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Address is required";
                          }
                       return null;
                    },
              */
                    ),
                  ),


                    Container(
                    padding: EdgeInsets.only(left: 10, right: 130, top: 10),
                    child: TextFormField(
                      controller: skill2Controller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.volunteer_activism_outlined),
                        label: Text("2."),
                        border: OutlineInputBorder(),
                        
                      ),
                     /* validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Address is required";
                          }
                       return null;
                    },
              */
                    ),
                  ),


                    Container(
                    padding: EdgeInsets.only(left: 10, right: 130, top: 10),
                    child: TextFormField(
                      controller: skill3Controller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.volunteer_activism_outlined),
                        label: Text("3."),
                        border: OutlineInputBorder(),
                        
                      ),
                    /*  validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Address is required";
                          }
                       return null;
                    },
              */
                    ),
                  ),


                    Container(
                    padding: EdgeInsets.only(left: 10, right: 130, top: 10),
                    child: TextFormField(
                      controller: skill4Controller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.volunteer_activism_outlined),
                        label: Text("4."),
                        border: OutlineInputBorder(),
                        
                      ),
                     /* validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Address is required";
                          }
                       return null;
                    },
              */
                    ),
                  ),


                    Container(
                    padding: EdgeInsets.only(left: 10, right: 130, top: 10),
                    child: TextFormField(
                      controller: skill5Controller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.volunteer_activism_outlined),
                        label: Text("5."),
                        border: OutlineInputBorder(),
                        
                      ),
                    /*  validator: (value) {
                         if (value == null || value.isEmpty) {
                            return "Address is required";
                          }
                       return null;
                    },
              */
                    ),
                  ),

                  














              
              
              
                ],
              ),
            ),

            
            SizedBox(height: 40,),

           
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   ElevatedButton(
                              style: buttonstyle,
                              onPressed: (){
                                if(_formKey.currentState!.validate()){

                                
                              Provider.of<CvDetails>(context, listen: false).inputFirstName(userNewFirstName: firstNameController.text);
                              Provider.of<CvDetails>(context, listen: false).inputLastName(userNewLastName: lastNameController.text);
                              Provider.of<CvDetails>(context, listen: false).inputRole(userNewRole: userRoleController.text);
                              Provider.of<CvDetails>(context, listen: false).inputPhoneNumber(userNewPhoneNumber: int.parse(userPhoneNumberController.text));
                              Provider.of<CvDetails>(context, listen: false).inputEmail(userNewEmail: userEmailController.text);
                              Provider.of<CvDetails>(context, listen: false).inputAddress(userNewAddress: userAddressController.text);
                              Provider.of<CvDetails>(context, listen: false).inputInfo(userNewInfo: userInfoController.text);
                              Provider.of<CvDetails>(context, listen: false).inputSkill1(NewSkill1: skill1Controller.text);
                              Provider.of<CvDetails>(context, listen: false).inputSkill2(NewSkill2: skill2Controller.text);
                              Provider.of<CvDetails>(context, listen: false).inputSkill3(NewSkill3: skill3Controller.text);
                              Provider.of<CvDetails>(context, listen: false).inputSkill4(NewSkill4: skill4Controller.text);
                              Provider.of<CvDetails>(context, listen: false).inputSkill5(NewSkill5: skill5Controller.text);








                                showDialog(
                              context: context, 
                             builder: (BuildContext context){
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                title: Text("Successfully save!", style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold ),) ,
                                actions: [
                                   TextButton(
                                          onPressed: () {
                                              Navigator.of(context).pop(); // dialog close
                                            },
                                      child: Text("OK"),
                                  ),



                                ],



                              );
                              

                              }
                             );




















                            }

                           


                              }, 
                                 
                              child: Text("Save")
                              ),
               





            SizedBox(height: 10,),

              SizedBox(
          
             width: 180,
             height: 50,
                child: ElevatedButton(
                  style: buttonstyle,
                  onPressed: (){
               
                    
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CvChoose()));
                    
                  
                  },
                    child: Text("Choose Template", style: TextStyle(color: Colors.black),),
                ),
              ),

                ],
               ),

               SizedBox(height: 100,)
          
         
              
              

          ],
        )
      
      ),

    );
  }
}