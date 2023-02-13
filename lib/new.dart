import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:user_clinic_token_app/localization/language/languages.dart';
import 'package:user_clinic_token_app/utils/common/app_text_style.dart';
import 'package:user_clinic_token_app/utils/common/app_images.dart';

import 'package:user_clinic_token_app/utils/common/app_route_paths.dart';

import 'forget_screen.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class _LoginState extends State<Login> {
  Future<void> localAuth(BuildContext context) async {
    final localAuth = LocalAuthentication();
    final didAuthenticate = await localAuth.authenticateWithBiometrics(
      localizedReason: 'Please authenticate',
    );
    if (didAuthenticate) {
      Navigator.pushNamed(context, RoutePaths.BOTTOMNAVIGATION);
    }
  }

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();


  String? validateEmail(String? formEmail) {
    if (formEmail!.isEmpty) return "Email Is Required";

    String pattern = r'\w+@\w+\.\w+';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formEmail)) return 'Invalid Email';

    return null;
  }

  String? validatePassword(String? formPassword) {
    if (formPassword!.isEmpty) return "Password Is Required";

    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(formPassword)) {
      return '''
    Password must be at least 8 character
    include an uppercase letter, number and symbol.
    ''';
    }
  }

  String? validateConfirmPassword(String? formConfirmPassword) {
    if (formConfirmPassword!.isEmpty) {
      return "Password Is Required";
    }
    if (password.text != confirmpassword.text) {
      return "Password Does Not Match";
    }
    return null;
  }

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.0),
                    spreadRadius: 0,
                    blurRadius: 0,
                  ),
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9,
                    ],
                    colors: [
                      Theme
                          .of(context)
                          .primaryColor,
                      Theme
                          .of(context)
                          .primaryColor,
                      Theme
                          .of(context)
                          .scaffoldBackgroundColor,
                      Theme
                          .of(context)
                          .scaffoldBackgroundColor,

                    ]),
              ),
              child: SingleChildScrollView(
                child: Column(
                    children: [
                      buildEntry(context),
                      Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.75,
                        decoration: BoxDecoration(
                            color: Theme
                                .of(context)
                                .scaffoldBackgroundColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(85))
                        ),
                        child: Column(
                          children: [
                            buildLogintitle(context),
                            Form(
                              key: _key,
                              child: Column(
                                children: [
                                  buildEmail(context),
                                  buildPassword(context),
                                ],
                              ),
                            ),
                            buildForgotPass(context),
                            buildLoginButton(context),
                            buildYouhaveanac(context),
                          ],
                        ),
                      ),

                    ]
                ),
              ),
            )
          ],
        )
    );
  }

  Widget buildEntry(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.25,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme
              .of(context)
              .primaryColor,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(85))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text( Languages.of(context)!.Welcomebacktoclinic,
              style: TextMainHeading(context)),
          Text( Languages.of(context)!.Welcomebacktoclinic2, style: TextMainHeading(context),)
        ],
      ),
    );
  }

  Widget buildLogintitle(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery
            .of(context)
            .size
            .height * 0.03,),
        child: Center(child: Text(Languages.of(context)!.login, style: TextMainsubtitle(context),)
        ));
  }

  Widget buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery
          .of(context)
          .size
          .height * 0.13, left: MediaQuery
          .of(context)
          .size
          .width * 0.03, right: MediaQuery
          .of(context)
          .size
          .width * 0.03),
      child: TextFormField(
        validator: validateEmail,
        decoration: InputDecoration(
          fillColor: Theme
              .of(context)
              .accentColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(AppImages.SMS),
          ),
          hintText: Languages.of(context)!.email,
          hintStyle: TextFieldStyle(context),

        ),
      ),
    );
  }

  Widget buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery
          .of(context)
          .size
          .height * 0.025, left: MediaQuery
          .of(context)
          .size
          .width * 0.03, right: MediaQuery
          .of(context)
          .size
          .width * 0.03),
      child: TextFormField(
        validator: validatePassword,
        obscureText: _isObscure,
        decoration: InputDecoration(fillColor: Theme
            .of(context)
            .accentColor,

            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(AppImages.KEYSQUARE),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10,),
              child: IconButton(
                icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
            ),

            hintText: Languages.of(context)!.password,
            hintStyle: GoogleFonts.quicksand(
                textStyle: const TextStyle(color: Colors.grey, fontSize: 20,))

        ),

      ),
    );
  }

  Widget buildForgotPass(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery
          .of(context)
          .size
          .height * 0.01, right: MediaQuery
          .of(context)
          .size
          .width * 0.04),
      child: Align(
          alignment: Alignment.topRight,
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutePaths.FORGOT);
              },
              child: Text(Languages.of(context)!.forgotPassword, style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      color: Colors.grey, fontSize: 14)),))),
    );
  }

  Widget buildLoginButton(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery
            .of(context)
            .size
            .height * 0.08,
            bottom: MediaQuery.of(context).size.height * 0.01),
        child: SizedBox(

            width: 235,
            height: 50,
            child: ElevatedButton(
              style: getButtonStyle(context),
              onPressed: () =>
                  Navigator.pushNamed(context, RoutePaths.BOTTOMNAVIGATION),

              child: Text(Languages.of(context)!.login, style: TextButtonStyle(context),),
            )
        ));
  }

  Widget buildYouhaveanac(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: MediaQuery
            .of(context)
            .size
            .height * 0.012, bottom: MediaQuery
            .of(context)
            .size
            .height * 0.05),
        child: AutoSizeText.rich( TextSpan(
            text: Languages.of(context)!.youhaveanaccount, style: TextForgetStyle(context),
            children: [
              TextSpan(text: Languages.of(context)!.register,
                  style: RichtextStyle(context),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        Navigator.pushNamed(context, RoutePaths.SIGNUP)),
            ]
        ),maxLines: 2,
          textAlign: TextAlign.center,
        )
    );
  }
}