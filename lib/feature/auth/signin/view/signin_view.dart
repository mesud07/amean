import 'package:ameanacademy/core/extensions/context_extension.dart';
import 'package:ameanacademy/feature/auth/signin/controller/signin_controller.dart';
import 'package:ameanacademy/feature/auth/signup/view/signup_view.dart';
import 'package:ameanacademy/feature/homepage/homepageview.dart';
import 'package:ameanacademy/product/init/navigation/navigation_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/style.dart';
import '../../../../core/widgets/customButton.dart';
import '../../../../core/widgets/customTextFormField.dart';



class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SigninController>(builder: (context,item,child){
        return Container(
        height: context.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                
            mainAxisAlignment: MainAxisAlignment.center,
                children:[
                 SizedBox(
                   height: context.height/6,
                 ),
                 Image.asset("assets/images/logo.png",
                 height: context.height/6,
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
            Container(
              padding: EdgeInsets.only(
                bottom: context.height/100
              ),
              alignment: Alignment.centerLeft,
              child: TextButton(onPressed: (){}, child: Text("Şifremi Unuttum",style: context.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),))),
                 
                                
                   CustomButton(
                 text: "Kayıt Ol",
                 onpressed: (){
           Navigator.pushAndRemoveUntil(context, NavigationRoute.instance.normalNavigate(SignUpView()), (route) => false);

                 },
                 backgroundColor: [Color.fromARGB(255, 39, 89, 139),Color(0xff003559),],
                 textColor: Colors.white,
            
              ),

               CustomButton(
                 text: "Giriş Yap",
                 onpressed: (){
               Navigator.pushAndRemoveUntil(context, NavigationRoute.instance.normalNavigate(HomePageView()), (route) => false);

                 },
                 backgroundColor: [Color(0xFF27598B),Color(0xff003559),],
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
}