import 'package:flutter/material.dart';
import 'package:women_safety_app/constants/app_constants.dart';
import 'package:women_safety_app/helpers.dart';
import 'package:women_safety_app/presentation/elements/custom_button.dart';
import 'package:women_safety_app/presentation/elements/custom_password_text_filed.dart';

import '../../elements/custom_text.dart';
import '../../elements/custom_text_field.dart';
import '../bottom_navigation_bar/bottom_navigation_bar_view.dart';
import '../login/login_view.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController name_controller = TextEditingController();
  final TextEditingController phone_controller = TextEditingController();
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();
  final TextEditingController confirm_password_controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteBackgroundColor,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Image.asset(
                  'assets/images/sign-up.jpeg',
                ),
              ),
              CustomTextField(
                textInputType: TextInputType.name,
                controller: name_controller,
                ImagePath: 'assets/images/name.png',
                LabelText: 'Full Name', isPasswordField: false,
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Enter your full name';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                textInputType: TextInputType.emailAddress,
                controller: email_controller,
                isPasswordField: false,
                ImagePath: 'assets/images/email.png',
                LabelText: 'Email',
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Enter your email';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                textInputType: TextInputType.phone,
                controller: phone_controller,
                ImagePath: 'assets/images/phone.png',
                LabelText: 'Phone', isPasswordField: false,
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Enter Phone Number!';
                  } else if (val.length != 11) {
                    return 'Phone number must be 11 Numbers';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                textInputType: TextInputType.text,
                isPasswordField: true,
                controller: password_controller,
                ImagePath: 'assets/images/password.png', LabelText: 'Password',
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Enter Password!';
                  } else if (val.length < 7) {
                    return 'Password must above 6 characters';
                  } else {
                    return null;
                  }
                },

              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                textInputType: TextInputType.text,
                isPasswordField: true,
                controller: confirm_password_controller,
                ImagePath: 'assets/images/password.png',
                LabelText: 'Confirm Password',
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Confirm your Password!';
                  } else if (confirm_password_controller.text !=
                      password_controller.text) {
                    return 'Password dose not match';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                childText: 'Sign Up',
                height: 60,
                width:230,
                textSize: 20,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavigationView() ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     CustomText(
              //       text: 'Already have an account? ',
              //       fontSize: 16,
              //       textColor: AppConstants.blackTextColor,
              //       textFontWeight: FontWeight.w500,
              //     ),
              //     GestureDetector(
              //         onTap: () {
              //           NavigationHelper.push(LoginView(), context);
              //         },
              //         child: CustomText(
              //           text: 'Login',
              //           fontSize: 16,
              //           textColor: AppConstants.secondaryColor,
              //           textFontWeight: FontWeight.bold,
              //         )),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}