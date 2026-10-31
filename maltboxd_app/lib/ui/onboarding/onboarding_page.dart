import 'package:flutter/material.dart';
import 'package:maltboxd_app/localization/app_localizations.dart';
import 'package:maltboxd_app/ui/onboarding/views/welcome_onboarding_view.dart';
import 'package:maltboxd_app/ui/widgets/responsive_content.dart';
import '../widgets/default_scaffold.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.onCompleted});

  final VoidCallback onCompleted;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return DefaultScaffold(
      title: l10n.maltboxd,
      child: ResponsiveContent(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: WelcomeOnboardingView(onContinue: onCompleted),
        ),
      ),
    );
  }
}
