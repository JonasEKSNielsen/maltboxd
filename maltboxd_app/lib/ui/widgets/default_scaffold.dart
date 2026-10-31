import 'package:flutter/material.dart';

import 'default_appbar.dart';

class DefaultScaffold extends StatelessWidget {
  const DefaultScaffold({
    super.key,
    this.title,
    this.leading,
    this.additionalWidgets,
    this.floatingActionButton,
    required this.child,
    this.showTitle = true,
  });

  final String? title;
  final Widget? leading;
  final List<Widget>? additionalWidgets;
  final Widget? floatingActionButton;
  final Widget child;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showTitle
          ? DefaultAppbar(
              title: title,
              leading: leading,
              additionalWidgets: additionalWidgets,
            )
          : null,
      floatingActionButton: floatingActionButton,
      body: child,
    );
  }
}
