import 'package:flutter/material.dart';

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