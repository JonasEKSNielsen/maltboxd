import 'package:flutter/material.dart';
import '../widgets/default_scaffold.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.onCompleted});

  final VoidCallback onCompleted;

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      title: 'Maltboxd',
      child: Text('Welcome to Maltboxd')
    );
  }
}
