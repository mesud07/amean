import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpController extends ChangeNotifier{


  TextEditingController nameController=TextEditingController();
  TextEditingController surnameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  String cityValue="seçiniz";
  TextEditingController schoolController=TextEditingController();
  TextEditingController examController=TextEditingController();
  TextEditingController schoolNumberController=TextEditingController();
  List<DropdownMenuItem<String>> cities=[];
  bool userAgreement=false;
  bool privacyAgreement=false;

  changeUserAgreement(){
    userAgreement=!userAgreement;
    notifyListeners();
  }
  
  changeprivacyAgreement(){
    privacyAgreement=!privacyAgreement;
    notifyListeners();
  }
  selectCity(String value){
    cityValue=value;
    notifyListeners();
  }


   






}