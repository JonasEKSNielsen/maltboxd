import 'package:flutter/material.dart';
import 'package:maltboxd_app/localization/app_localizations.dart';

class WelcomeOnboardingView extends StatelessWidget {
  const WelcomeOnboardingView({super.key, required this.onContinue});

  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final l10n = AppLocalizations.of(context)!;
    return ListView(
      children: [
        const SizedBox(height: 40),
        Text(l10n.welcome_title, style: text.displaySmall),
        const SizedBox(height: 16),
        Text(
          l10n.welcome_description,
          style: text.bodyLarge,
        ),
        const SizedBox(height: 32),
        const Divider(),
        const SizedBox(height: 16),
        Text(l10n.next_pour_title, style: text.titleLarge),
        const SizedBox(height: 8),
        Text(
          l10n.next_pour_description,
          style: text.bodyMedium,
        ),
        const SizedBox(height: 28),
        Align(
          alignment: Alignment.centerLeft,
          child: FilledButton.icon(
            onPressed: onContinue,
            icon: const Icon(Icons.arrow_forward),
            label: Text(l10n.browse_button),
          ),
        ),
      ],
    );
  }
}
