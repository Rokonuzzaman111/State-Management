import 'package:flutter/material.dart';
import 'package:state_management/Pages/cv_form_page.dart';


class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

   ButtonStyle buttonstyle = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 82, 2, 79),
    foregroundColor: Colors.white,
  

  );





  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
        children: [
          SizedBox(height: 120,),
          Center(
            child: Text(
              "Shiney CV Maker",
              style: TextStyle(
                color: const Color.fromARGB(255, 82, 2, 79),
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          
          Image.asset("assets/Images/shiney_cv.png"),
          SizedBox(height: 15,),
          Center(
            child: Text(
              "Welcome To Shiney",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),


          Center(
            child: Text(
              "CV Maker App",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 35,),

            Center(
              child: SizedBox(
          
             width: 180,
             height: 50,
                child: ElevatedButton(
                  style: buttonstyle,
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CvFormPage()));
                    });
                  },
                    child: Text("Get Started", style: TextStyle(color: Colors.white),),
                ),
              ),
            )


        ],
       ),
        
       
  backgroundColor: Colors.white,
    );

  }
}