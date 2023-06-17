import 'package:flutter/material.dart';
import 'package:women_safety_app/constants/app_constants.dart';
import 'package:women_safety_app/presentation/elements/custom_button.dart';
import 'package:women_safety_app/presentation/elements/custom_text.dart';
import 'package:women_safety_app/presentation/elements/custom_text_field.dart';
import 'package:women_safety_app/presentation/views/bottom_navigation_bar/bottom_navigation_bar_view.dart';
import 'package:women_safety_app/presentation/views/forgot_password/forgot_password_view.dart';
import 'package:women_safety_app/presentation/views/reset_password/reset_password_view.dart';

import '../../../helpers.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();

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
                  'assets/images/login.png',
                  height: 300,
                  width: 300,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              CustomTextField(
                textInputType: TextInputType.emailAddress,
                controller: email_controller,
                ImagePath: 'assets/images/email.png',
                LabelText: 'Email',
                isPasswordField: false,
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Enter Email!';
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
                ImagePath: 'assets/images/password.png',
                LabelText: 'Password',
                controller: password_controller,
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationHelper.push(ForgotPasswordView(), context);
                    },
                    child: const CustomText(
                      text: 'Forgot Password?',
                      fontSize: 16,
                      textColor: AppConstants.secondaryColor,
                      textFontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              CustomButton(
                childText: 'Login',
                height: 60,
                width: 230,
                textSize: 20,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomNavigationView() ));
                  // NavigationHelper.push(BottomNavigationView(), context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}