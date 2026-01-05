import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CvDetails extends ChangeNotifier{

  final ImagePicker picker = ImagePicker();
  File? imageFile;
//Personal Details
  String useFirstName = "";
  String useLastName = ""; 
  String userRole = ""; 

//Contact Details
  int userPhoneNumber = 0;
  String userEmail = "";
  String userAddress = "";

  //about me

   String userInfo = "";

   //skills

   String skill1 = "";
   String skill2 = "";
   String skill3 = "";
   String skill4 = "";
   String skill5 = "";








  



//image
  Future<void>pickImage()async{
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery
    
    );

    if(image!=null){
      imageFile = File(image.path);
    }
    notifyListeners();
  }

//userFirstName

void inputFirstName({required String userNewFirstName})async{
  useFirstName = userNewFirstName;
  notifyListeners();

}

//userLastName
void inputLastName({required String userNewLastName})async{
  useLastName = userNewLastName;
  notifyListeners();

}

//userRole
void inputRole({required String userNewRole})async{
  userRole = userNewRole;
  notifyListeners();

}

//phoneNumber
void inputPhoneNumber({required int userNewPhoneNumber})async{
  userPhoneNumber = userNewPhoneNumber;
  notifyListeners();
}

//Email

void inputEmail({required String userNewEmail})async{
  userEmail = userNewEmail;
  notifyListeners();

}

//Address

void inputAddress({required String userNewAddress})async{
  userAddress = userNewAddress;
  notifyListeners();

}


//about me

void inputInfo({required String userNewInfo})async{
  userInfo = userNewInfo;
  notifyListeners();

}

//skills

void inputSkill1({required String NewSkill1})async{
  skill1 = NewSkill1;
  notifyListeners();

}


void inputSkill2({required String NewSkill2})async{
  skill2 = NewSkill2;
  notifyListeners();

}


void inputSkill3({required String NewSkill3})async{
  skill3 = NewSkill3;
  notifyListeners();

}



void inputSkill4({required String NewSkill4})async{
  skill4 = NewSkill4;
  notifyListeners();

}



void inputSkill5({required String NewSkill5})async{
  skill5 = NewSkill5;
  notifyListeners();

}







}