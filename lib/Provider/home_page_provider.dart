import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePageProvider extends ChangeNotifier{

  bool? isEligible;
  String? eligibilityMessage = "";


  void checkEligible(int age){
    if( age >= 18){
      isEligible = true;
      eligibilityMessage = "You are eligible for Lisence!";
      notifyListeners();

    }
    else{
      isEligible = false;
      eligibilityMessage = "Your are not eligible for Lisence!";
      notifyListeners();
    }

  }




}



class ItemCount extends ChangeNotifier{

  int _count = 0;
  int get count => _count;

  void addItem(){
    _count++;
    notifyListeners();

  }

  void removeItem(){
    _count--;
    notifyListeners();

  }




}


class UserDetails extends ChangeNotifier{
 

 String userName = "";
 int userAge = 0;
 String userSkills = "";

 final ImagePicker picker = ImagePicker();
 File? imageFile;
 


  void inputUserName( {required String newUsername}) async {
   userName = newUsername;
    notifyListeners();
  }

  void inputUserAge({required int newUserAge}) async {
    userAge = newUserAge;
    notifyListeners();

  }

  void inputUserSkills({required String newUserSkills})async{
    userSkills = newUserSkills;
    notifyListeners();

  }

  Future<void> pickImage() async{
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery
    
    );
    if(image!=null){
       imageFile = File(image.path);
       notifyListeners();

    }

  }



}






