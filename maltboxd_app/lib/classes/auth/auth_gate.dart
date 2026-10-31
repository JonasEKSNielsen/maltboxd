import 'package:flutter/material.dart';
import 'package:maltboxd_app/ui/onboarding/onboarding_page.dart';
class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      onCompleted: () {
        setState(() {});
      },
    );
  }
}
