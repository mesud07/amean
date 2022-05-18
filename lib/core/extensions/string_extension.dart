import 'package:ameanacademy/core/constants/regex/regex_constants.dart';


extension StringExtension on String {
  String? get isValidEmail =>
      contains(RegExp(RegexConstans.instance.emailRegex))
          ? null
          : "geçerli email adresi giriniz";

  String? get isValidPassword =>
      contains(RegExp(RegexConstans.instance.passwordRegex))
          ? null
          : "parola istekleri karsilamiyor";

  String? get isValidPhoneNumber =>
      contains(RegExp(RegexConstans.instance.phoneRegex))
          ? null
          : "gecerli telefon numarası giriniz";
}
