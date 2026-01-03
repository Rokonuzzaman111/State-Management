import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Pages/cv_preview_page.dart';
import 'package:state_management/Provider/cv_form_provider.dart';
class CvFormPage extends StatefulWidget {
  const CvFormPage({super.key});

  @override
  State<CvFormPage> createState() => _CvFormPageState();
}

class _CvFormPageState extends State<CvFormPage> {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController userRoleController = TextEditingController();

   TextEditingController userPhoneNumberController = TextEditingController();
    TextEditingController userEmailController = TextEditingController();
     TextEditingController userAddressController = TextEditingController();
  






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
        backgroundColor: const Color.fromARGB(255, 202, 126, 247),
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
            Column(
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

                  ),
                ),





              
              
                 
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
                              width: 152,
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(255, 209, 205, 205),
                              ),
                              child: Center(child: Text("Choose an image", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 13) ,))
                              ),
                          );
                        },
                       ),
                     ),
                   

                   SizedBox(height: 23,),

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

                  ),
                ),
            


              ],
            ),

            
            SizedBox(height: 40,),

            ElevatedButton(
                        style: buttonstyle,
                        onPressed: (){
                         
                         // context.read<UserDetails>().inputUserName(newUsername : userNameController.text); not Recommanded
                        Provider.of<CvDetails>(context, listen: false).inputFirstName(userNewFirstName: firstNameController.text);
                        Provider.of<CvDetails>(context, listen: false).inputLastName(userNewLastName: lastNameController.text);
                        Provider.of<CvDetails>(context, listen: false).inputRole(userNewRole: userRoleController.text);
                        Provider.of<CvDetails>(context, listen: false).inputPhoneNumber(userNewPhoneNumber: int.parse(userPhoneNumberController.toString()));
                        Provider.of<CvDetails>(context, listen: false).inputEmail(userNewEmail: userEmailController.text);
                        Provider.of<CvDetails>(context, listen: false).inputAddress(userNewAddress: userAddressController.text);

                        }, 

                        child: Text("Save")
                        ),





            SizedBox(height: 40,),

              ElevatedButton(
                style: buttonstyle,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CvPreviewPage()));

              }, 
              child: Center(child: Text("CV Preview Page", ))
              )

          ],
        )
      
      ),

    );
  }
}