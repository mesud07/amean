import 'package:ameanacademy/core/extensions/context_extension.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.text,
      required this.onpressed,
      required this.backgroundColor,
      required this.textColor})
      : super(key: key);
  VoidCallback? onpressed;
  String? text;
  List<Color> backgroundColor;
  Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: context.height / 50,
            right: context.height / 50,
            bottom: context.height / 50),
        child: GestureDetector(
          onTap: onpressed,
          child: Container(
            padding: context.paddingLow,
            width: context.width,
            height: context.height / 15,
            
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: backgroundColor,
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter),
              borderRadius: context.normalBorderRadius,
              boxShadow: [_boxShadow()],
            ),
            child: Center(
              child: AutoSizeText(text ?? "null",
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 1,
                    color: textColor,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
        ));
  }

  BoxShadow _boxShadow() {
    return BoxShadow(
      color: Colors.grey.withOpacity(0.8),
      blurRadius: 1.0,
      spreadRadius: 0.3,
      offset: const Offset(
        0.0,
        2.0,
      ),
    );
  }
}

class CustomPacketCard extends StatelessWidget {
  const CustomPacketCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
