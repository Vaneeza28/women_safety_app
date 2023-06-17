import 'package:flutter/material.dart';
import 'package:women_safety_app/presentation/views/complaint/complaint_view.dart';
import 'package:women_safety_app/presentation/views/edit_contacts/edit_contacts_view.dart';
import 'package:women_safety_app/presentation/views/onboarding/onboarding_view.dart';
import 'package:women_safety_app/presentation/views/other_helpline/other_helpline_view.dart';
import 'package:women_safety_app/presentation/views/safety_tips/safety_tips_view.dart';
import 'package:women_safety_app/presentation/views/splash_view/splash_view.dart';
import 'package:women_safety_app/presentation/views/view_contacts/view_contacts_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      // home: OnboardingView1(),
      // home: OnboardingView3(),
      // home: OnboardingView4(),
      // home: LocationPermissionView(),
      // home: MessagePermissionView(),
      // home: SosSettingView(),
      // home: SignUpView(),
      // home: LoginView(),
      // home: ForgotPasswordView(),
      // home: ResetPasswordView(),
      // home: HomeView(),
      // home: BottomNavigationView(),
      // home: RegisterContactView(),
      //  home: ViewContactsView(),
      // home: EditContactsView(),
      // home: SafetyTipsView(),
      // home: OnboardingView(),
      // home: ComplaintView(),
      //    home: OtherHelpline(),

    );
  }
}