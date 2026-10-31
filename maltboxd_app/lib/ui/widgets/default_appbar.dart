import 'package:flutter/material.dart';

class DefaultAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppbar({
    super.key,
    this.title,
    this.titleWidget,
    this.leading,
    this.additionalWidgets,
  });

  final String? title;
  final Widget? titleWidget;
  final Widget? leading;
  final List<Widget>? additionalWidgets;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      centerTitle: false,
      title: titleWidget ?? (title != null ? Text(title!, style: Theme.of(context).textTheme.titleLarge) : null),
      actions: additionalWidgets,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
