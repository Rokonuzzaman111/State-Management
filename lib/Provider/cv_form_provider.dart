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







}