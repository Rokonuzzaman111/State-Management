import 'package:flutter/material.dart';
import 'package:state_management/Pages/cv_preview_page.dart';

class CvChoose extends StatefulWidget {
  const CvChoose({super.key});

  @override
  State<CvChoose> createState() => _CvChooseState();
}

class _CvChooseState extends State<CvChoose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color.fromARGB(255, 154, 105, 119),
        title: Text(
          "Choose CV Templates",
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 22
          ),
        ),
      ),

      body: ListView(
         scrollDirection: Axis.vertical,
         children: [
          SizedBox(height: 10,),
        
              Row(
         children: [
          SizedBox(width: 10,),
          
                  Container(
                    height: 340,
                    width: 215,
                 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                       color: const Color.fromARGB(255, 203, 198, 181),
                       
                    ),
                    child:  Column(
                      children: [
                        SizedBox(height: 5,),
                        Container(
                        height: 265,
                        width: 200,
                                         
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: Colors.grey,
                        ),  
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/Images/demoCV1.png", fit: BoxFit.fill,
                          )
                        ),

                          ),
                          SizedBox(height: 12,),

                          SizedBox(
          
                        width: 100,
                       height: 40,
                child: ElevatedButton(
                
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CvPreviewPage()));
                    });
                  },
                    child: Text("Use It", style: TextStyle(color: Colors.black),),
                ),
              ),


                      ],
                    ),


                  ),






                  SizedBox(width: 10,),
           Container(
                    height: 340,
                    width: 215,
                 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                       color: const Color.fromARGB(255, 203, 198, 181),
                       
                    ),
                    child:  Column(
                      children: [
                        SizedBox(height: 5,),
                        Container(
                        height: 265,
                        width: 200,
                                         
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: Colors.grey,
                        ),  
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/Images/cv3.png", fit: BoxFit.fill,
                          )
                        ),

                          ),
                          SizedBox(height: 12,),

                          SizedBox(
          
                        width: 100,
                       height: 40,
                child: ElevatedButton(
                
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CvPreviewPage()));
                    });
                  },
                    child: Text("Use It", style: TextStyle(color: Colors.black),),
                ),
              ),


                      ],
                    ),


                  ),
                  
                ],
                
              ),

              SizedBox(height: 8,),


               Row(
         children: [
          SizedBox(width: 10,),
          
                  Container(
                    height: 340,
                    width: 215,
                 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                       color: const Color.fromARGB(255, 203, 198, 181),
                       
                    ),
                    child:  Column(
                      children: [
                        SizedBox(height: 5,),
                        Container(
                        height: 265,
                        width: 200,
                                         
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: Colors.grey,
                        ),  
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/Images/cv5.png", fit: BoxFit.fill,
                          )
                        ),

                          ),
                          SizedBox(height: 12,),

                          SizedBox(
          
                        width: 100,
                       height: 40,
                child: ElevatedButton(
                
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CvPreviewPage()));
                    });
                  },
                    child: Text("Use It", style: TextStyle(color: Colors.black),),
                ),
              ),


                      ],
                    ),


                  ),






                  SizedBox(width: 10,),
           Container(
                    height: 340,
                    width: 215,
                 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                       color: const Color.fromARGB(255, 203, 198, 181),
                       
                    ),
                    child:  Column(
                      children: [
                        SizedBox(height: 5,),
                        Container(
                        height: 265,
                        width: 200,
                                         
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                           color: Colors.grey,
                        ),  
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/Images/cv4.png", fit: BoxFit.fill,
                          )
                        ),

                          ),
                          SizedBox(height: 12,),

                          SizedBox(
          
                        width: 100,
                       height: 40,
                child: ElevatedButton(
                
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CvPreviewPage()));
                    });
                  },
                    child: Text("Use It", style: TextStyle(color: Colors.black),),
                ),
              ),


                      ],
                    ),


                  ),
                  
                ],
                
              ),

        
         ],
      ),


    );
  }
}