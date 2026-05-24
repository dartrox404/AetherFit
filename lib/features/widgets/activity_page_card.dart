import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ActivityPageCard extends StatelessWidget {
  const ActivityPageCard({
    super.key,
    required this.text,
    required this.subtitle,
    required this.icon,
    required this.bgcolor,
  });
  final String text;
  final String subtitle;
  final IconData icon;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.kspace8,
              horizontal: AppSizes.kspace12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: context.color.secondary),
                const Gap(AppSizes.kspace8),
                Text(
                  text,
                  style: context.text.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: context.color.secondary,
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Text(subtitle, style: context.text.bodyMedium),
      ],
    );
  }
}
