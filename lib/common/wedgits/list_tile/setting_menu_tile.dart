import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TSettingMenuTile extends StatelessWidget {
  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  const TSettingMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: TColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.labelMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.titleMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
