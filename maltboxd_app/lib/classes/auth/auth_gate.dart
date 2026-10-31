import 'package:flutter/material.dart';
import 'package:maltboxd_app/classes/repositories/api_repository.dart';
import 'package:maltboxd_app/classes/repositories/repository.dart';
import 'package:maltboxd_app/ui/onboarding/onboarding_page.dart';
class AuthGate extends StatefulWidget {
  const AuthGate({super.key});

  @override
  State<AuthGate> createState() => _AuthGateState();
}

class _AuthGateState extends State<AuthGate> {
  bool _onboardingCompleted = false;
  late final Repository _repository;

  @override
  void initState() {
    super.initState();
    _repository = const ApiRepository();
  }

  @override
  Widget build(BuildContext context) {
    if (_onboardingCompleted) {
      return Container(); 
    }

    return OnboardingPage(
      onCompleted: () {
        setState(() {
          _onboardingCompleted = true;
        });
      },
    );
  }
}
