import 'package:ameanacademy/core/constants/citiesList/citiesList.dart';
import 'package:ameanacademy/core/extensions/context_extension.dart';
import 'package:ameanacademy/core/init/navigation/navigation_service.dart';
import 'package:ameanacademy/feature/auth/signin/controller/signin_controller.dart';
import 'package:ameanacademy/feature/auth/signup/controller/signup_controller.dart';
import 'package:ameanacademy/feature/auth/signup/view/secondof_signup_view.dart';
import 'package:ameanacademy/product/init/navigation/navigation_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/style.dart';
import '../../../../core/widgets/customButton.dart';
import '../../../../core/widgets/customTextFormField.dart';



class SignUpView extends StatefulWidget {
   SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late List<DropdownMenuItem<String>> sehirler;
  String cityValue="Şehir Seçiniz";
  String registerType="Seçiniz";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   sehirler= setElemanlarItems(cities);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SignUpController>(builder: (context,item,child){
        return Container(
        height: context.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                
            mainAxisAlignment: MainAxisAlignment.center,
                children:[
                 SizedBox(
                   height: context.height/13,
                 ),
                 Image.asset("assets/images/logo.png",
                 height: context.height/6,
                 ),
                 Padding(
              padding:  EdgeInsets.only(top:context.height/30),
              child: CustomTextFormField(
                labelText: "İsim",
                textInputType: TextInputType.emailAddress,
                textEditingController:item.nameController,
                isPass: false,
        
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:context.height/30),
              child: CustomTextFormField(
                labelText: "Soyisim",
                textInputType: TextInputType.emailAddress,
                textEditingController:item.surnameController,
                isPass: false,
        
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:context.height/30),
              child: CustomTextFormField(
                labelText: "email",
                textInputType: TextInputType.emailAddress,
                textEditingController:item.emailController,
                isPass: false,
        
              ),
            ),
             Padding(
              padding:  EdgeInsets.only(top:context.height/30),
              child: CustomTextFormField(
                labelText: "Password",
                textInputType: TextInputType.visiblePassword,
                textEditingController: item.passwordController,
              
                isPass: true,
                isObsecure: true,
                
        
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top:context.height/30,bottom: context.height/20),
              child: CustomTextFormField(
                labelText: "Telefon Numarası",
                textInputType: TextInputType.emailAddress,
                textEditingController:item.phoneController,
                isPass: false,
        
              ),
            ),

        //     Container(
        //       margin: EdgeInsets.only(top:context.height/30,left: context.width/100),
        //       child: DropdownButtonFormField<String>(
        //         alignment: Alignment.centerLeft,
        //         items: cities
        //  .map((String item) =>
        //      DropdownMenuItem<String>(child: Text(item), value: item))
        //  .toList(),
        //          onChanged: (String? value)=>setState(() {
        //            cityValue=value!;
        //          }),
        //          value: cityValue,
        //          elevation: 8,
        //          dropdownColor: Colors.white,
        //         decoration:  InputDecoration(
        //           hintText: "Name",
                  
                
                   
        //          ),),
                 
        //     ),

        //     Padding(
        //       padding:  EdgeInsets.only(top:context.height/30),
        //       child: CustomTextFormField(
        //         labelText: "Okul",
        //         textInputType: TextInputType.emailAddress,
        //         textEditingController:item.schoolController,
        //         isPass: false,
        
        //       ),
        //     ),

        //    Container(
        //       margin: EdgeInsets.only(top:context.height/30,left: context.width/100),
        //       child: DropdownButtonFormField<String>(
        //         alignment: Alignment.centerLeft,
        //         items: registerTypes
        //  .map((String item) =>
        //      DropdownMenuItem<String>(child: Text(item), value: item))
        //  .toList(),
        //          onChanged: (String? value)=>setState(() {
        //            registerType=value!;
        //          }),
        //          value: registerType,
        //          elevation: 8,
        //          dropdownColor: Colors.white,
        //        ),
                 
        //     ),


        //     Padding(
        //       padding:  EdgeInsets.only(top:context.height/30,bottom: context.height/20),
        //       child: CustomTextFormField(
        //         labelText: "Okul Numarası",
        //         textInputType: TextInputType.emailAddress,
        //         textEditingController:item.schoolNumberController,
        //         isPass: false,
        
        //       ),
        //     ),
          
                 
                                
                   CustomButton(
                 text: "Devam Et",
                 onpressed: (){
                    Navigator.push(context,NavigationRoute.instance.normalNavigate(SecondOfSignUpView()));
                   
                 },
                 backgroundColor: [Color.fromARGB(255, 39, 89, 139),Color(0xff003559),],
                 textColor: Colors.white,
            
              ),

               CustomButton(
                 text: "Giriş Yap",
                 onpressed: (){
                  
                 },
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