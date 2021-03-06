import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/Screens/Signup/components/or_divider.dart';
import 'package:flutter_auth/Screens/Signup/components/social_icon.dart';
import 'package:flutter_auth/Screens/live_stream/go_live/profile_first.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/firebaseDB/auth.dart';
import 'package:flutter_auth/grid_view/categories.dart';
import 'package:flutter_auth/profile/user_profile.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  String email;
  String password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   "SIGNUP",
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.35,
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {
                  setState(() {
                    this.email = value;
                  });
                },
              ),
              RoundedPasswordField(
                onChanged: (value) {
                  setState(() {
                    this.password = value;
                  });
                },
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () async{
                  try{
                    var response = await registerUser(
                        email: this.email,
                        pass: this.password);
                        if(response == 1){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ProfileFirst();
                          }));
                        }
                  }catch(err){
                    print(err.toString());
                  }
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                      builder: (context) {
//                        return UserProile();
//                      },
//                    ),
//                  );
                },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () async{
                      print("facebook login");
                    },
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () async{
                      try{
                        var response = await signInWithGoogle();
                      }catch(err){
                        print(err.toString());
                      }
                    },
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/apple.svg",
                    press: () async{
                      print("icloud login");
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
