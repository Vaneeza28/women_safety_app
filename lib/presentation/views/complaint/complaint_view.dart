import 'package:flutter/material.dart';
import 'package:women_safety_app/constants/app_constants.dart';
import 'package:women_safety_app/presentation/elements/custom_complaint_section_text_field.dart';

import '../../elements/custom_button.dart';

class ComplaintView extends StatelessWidget {
  const ComplaintView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Icon(
          Icons.arrow_back,
          color: AppConstants.primaryColor,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Image.asset(
                'assets/images/complaint.jpeg',
                height: 300,
                width: 300,
              ),
            ),
            const SizedBox(
              height: 60,
            ),

            const CustomComplaintSectionTextField(hintText: 'Name',height: 50,width: 260,),
            const SizedBox(height: 20,),
            const CustomComplaintSectionTextField(hintText: 'Complaint', height: 300, width: 260),
            const SizedBox(height: 50,),
        CustomButton(
          childText: 'submit',
          height: 60,
          width: 150,
          textSize: 20,
          onPressed: () {  },
        ),
          ],
        ),
      ),
    );
  }
}

