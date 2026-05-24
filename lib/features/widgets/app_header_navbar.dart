import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class AppHeaderNavbar extends StatelessWidget {
  const AppHeaderNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: AppSizes.kspace24,
          backgroundImage: AssetImage('assets/images/avatar.webp'),
        ),
        Gap(AppSizes.kspace8),
        Text('Hello, Arslan', style: context.text.titleLarge),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.color.primary,
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.kspace8),
            child: Icon(Iconsax.notification, color: context.color.secondary),
          ),
        ),
      ],
    );
  }
}
