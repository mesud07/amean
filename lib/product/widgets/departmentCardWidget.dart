import 'package:ameanacademy/core/extensions/context_extension.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DepartmentCardWidget extends StatelessWidget {
     String? departmentName;
     String? imageUrl;
   DepartmentCardWidget({
     Key? key,
    required this.departmentName,
    required this.imageUrl
  
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
        Container(
          margin: 
          EdgeInsets.only(
              left:  context.width / 15,
              right:  context.width / 15,
              top: context.height / 20,
              bottom: context.height / 40),
          
         
        
          height: context.height*0.2,
          width: context.width,
          decoration: BoxDecoration(
            // color: Color.fromRGBO(51, 51, 102, 1).withOpacity(0.8),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [Colors.white,Colors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
            boxShadow: [_boxShadow()],
          ),
          child: Image.network(imageUrl??"",
          fit: BoxFit.cover,
          ),
          
        ),
        Container(
             margin: 
          EdgeInsets.only(
              left:  context.width / 15,
              right:  context.width / 15,
              top: context.height / 20,
              bottom: context.height / 40),
          
         
          padding: context.paddingLow,

          height: context.height*0.2,
          width: context.width,
          decoration: BoxDecoration(
             color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
            borderRadius: BorderRadius.circular(10),
           
          ),

          child: Center(
            child: AutoSizeText(
               departmentName??"",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white),
              //maxFontSize: 30,
              maxLines: 2,
            ),
          ),
            
          ),
      
      ]);
  }
  BoxShadow _boxShadow() {
    return BoxShadow(
      color: Colors.grey.withOpacity(0.8),
      blurRadius: 3.0,
      spreadRadius: 2.0,
      offset: const Offset(
        0.0,
        3.0,
      ),
    );
  }
}