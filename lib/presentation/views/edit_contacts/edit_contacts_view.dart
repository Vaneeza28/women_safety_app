import 'package:flutter/material.dart';
import 'package:women_safety_app/constants/app_constants.dart';
import 'package:women_safety_app/helpers.dart';
import 'package:women_safety_app/presentation/elements/custom_button.dart';
import 'package:women_safety_app/presentation/elements/custom_text_field.dart';
import 'package:women_safety_app/presentation/views/view_contacts/view_contacts_view.dart';
class EditContactsView extends StatelessWidget {
  EditContactsView({Key? key}) : super(key: key);
  final TextEditingController name_controller = TextEditingController();
  final TextEditingController phone_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.whiteBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
                child: Image.asset(
                  'assets/images/edit-contact.jpeg',
                  height: 300,
                  width: 300,
                )),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
              ImagePath: 'assets/images/name.png',
              LabelText: 'Name',
              controller: name_controller,
              isPasswordField: false,
              textInputType: TextInputType.name,
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
              textInputType: TextInputType.phone,
              ImagePath: 'assets/images/phone.png',
              LabelText: 'Phone',
              controller: phone_controller,
              isPasswordField: false,
            ),
            const SizedBox(
              height: 120,
            ),
            CustomButton(
              childText: 'Save',
              height: 60,
              width: 150,
              onPressed: () {
                NavigationHelper.push(const ViewContactsView(), context);
              },
            ),
          ],
        ),
      ),
    );
  }
}


