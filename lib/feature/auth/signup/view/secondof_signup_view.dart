import 'package:ameanacademy/core/constants/citiesList/citiesList.dart';
import 'package:ameanacademy/core/extensions/context_extension.dart';
import 'package:ameanacademy/feature/auth/signin/controller/signin_controller.dart';
import 'package:ameanacademy/feature/auth/signup/controller/signup_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/style.dart';
import '../../../../core/widgets/customButton.dart';
import '../../../../core/widgets/customTextFormField.dart';



class SecondOfSignUpView extends StatefulWidget {
   SecondOfSignUpView({Key? key}) : super(key: key);

  @override
  State<SecondOfSignUpView> createState() => _SecondOfSignUpViewState();
}

class _SecondOfSignUpViewState extends State<SecondOfSignUpView> {
  late List<DropdownMenuItem<String>> sehirler;
  String cityValue="Şehir Seçiniz";
  String registerType="Seçiniz";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: Consumer<SignUpController>(builder: (context,item,child){
        return Container(
        height: context.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                
            mainAxisAlignment: MainAxisAlignment.center,
                children:[
                 
                 Image.asset("assets/images/logo.png",
                 height: context.height/6,
                 ),
               

            Container(
              margin: EdgeInsets.only(top:context.height/30,left: context.width/100),
              child: DropdownButtonFormField<String>(
                alignment: Alignment.centerLeft,
                items: cities
         .map((String item) =>
             DropdownMenuItem<String>(child: Text(item), value: item))
         .toList(),
                 onChanged: (String? value)=>setState(() {
                   cityValue=value!;
                 }),
                 value: cityValue,
                 elevation: 8,
                 dropdownColor: Colors.white,
                decoration:  InputDecoration(
                  hintText: "Name",
                  
                
                   
                 ),),
                 
            ),
             Container(
              margin: EdgeInsets.only(top:context.height/25,left: context.width/100,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kayıt Sebebi"),
                  DropdownButtonFormField<String>(
                    
                    alignment: Alignment.centerLeft,
                    items: registerTypes
         .map((String item) =>
             DropdownMenuItem<String>(child: Text(item), value: item))
         .toList(),
                     onChanged: (String? value)=>setState(() {
                       registerType=value!;
                     }),
                     value: registerType,
                     elevation: 8,
                     dropdownColor: Colors.white,
                   ),
                ],
              ),
                 
            ),

            Padding(
              padding:  EdgeInsets.only(top:context.height/25),
              child: CustomTextFormField(
                labelText: "Okul",
                textInputType: TextInputType.emailAddress,
                textEditingController:item.schoolController,
                isPass: false,
        
              ),
            ),

          


            Padding(
              padding:  EdgeInsets.only(top:context.height/30,bottom: context.height/20),
              child: CustomTextFormField(
                labelText: "Okul Numarası",
                textInputType: TextInputType.emailAddress,
                textEditingController:item.schoolNumberController,
                isPass: false,
        
              ),
            ),
          
                 
                                
              //      CustomButton(
              //    text: "Kayıt Ol",
              //    onpressed: (){},
              //    backgroundColor: [Color.fromARGB(255, 39, 89, 139),Color(0xff003559),],
              //    textColor: Colors.white,
            
              // ),

               CustomButton(
                 text: "Kayıt Ol",
                 onpressed: (){},
                 backgroundColor: [Color.fromARGB(255, 39, 89, 139),Color(0xff003559),],
                 textColor: Colors.white,
            
              ),
              
            
            
              ]
               ),
          ),
        ),
      );
      })
    );
  }

   setElemanlarItems(List<String> elemanList) {
     List<DropdownMenuItem<String>> a=[];
      for (String eleman in elemanList) {
            setState(() {
              a.add(DropdownMenuItem<String>(
                  value: eleman,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        eleman,
                        
                      ),
                    ),
                  )));
            });
          }
          return a;

  }
}