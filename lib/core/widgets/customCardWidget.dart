import 'package:ameanacademy/core/extensions/context_extension.dart';
import 'package:ameanacademy/feature/homepage/homepageview.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String? iconpath;
  final String? title;
  const CustomCardWidget({
    Key? key,
    required this.iconpath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.width/15),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          width: context.width,
          height: context.height/6,
               //   height: context.height/7,
        
          decoration: BoxDecoration(borderRadius: context.lowBorderRadius,
        color: Colors.white,
        boxShadow: [boxShadow()],
        
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(AssetImage("assets/icons/$iconpath"),size: 50,),
            SizedBox(height: 10,),
            AutoSizeText(title??"title",style: context.textTheme.headline5?.copyWith(color: Colors.grey,fontWeight: FontWeight.normal),)
          ],
        ),
        ),
      ),
    );
  }
}
  BoxShadow boxShadow() {
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