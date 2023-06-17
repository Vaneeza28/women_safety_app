import 'package:flutter/material.dart';
import 'package:women_safety_app/constants/app_constants.dart';
import 'package:women_safety_app/presentation/elements/custom_button.dart';
import 'package:women_safety_app/presentation/elements/custom_text_field.dart';

class ForgotPasswordView extends StatelessWidget {
  ForgotPasswordView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController email_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteBackgroundColor,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/reset-password.jpeg',
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 80,
              ),
              CustomTextField(
                textInputType: TextInputType.emailAddress,
                ImagePath: 'assets/images/email.png',
                LabelText: 'Enter Email',
                controller: email_controller,
                isPasswordField: false,
                validator: (val) {
                  if (val.isEmpty) {
                    return "Enter Your Email ";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 160,
              ),
              CustomButton(
                childText: 'Send Code',
                height: 60,
                width: 230,
                textSize: 20,
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}