import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseView<T> extends StatefulWidget {
  final Widget Function(BuildContext context) onPageBuilder;
  final VoidCallback onDispose;
  final VoidCallback initState;

  const BaseView(
      {Key? key,
      required this.onPageBuilder,
      required this.onDispose,
      required this.initState})
      : super(key: key);

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    widget.initState();
  }

  @override
  void dispose() {
    super.dispose();
    widget.onDispose;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return GestureDetector(
      //! Ekrana tıklayınca klavyeyi kapatan kod
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        //! Klavyenin ekranı kaydırması için true
        resizeToAvoidBottomInset: true,

        body: widget.onPageBuilder(context),
      ),
    );
  }
}
