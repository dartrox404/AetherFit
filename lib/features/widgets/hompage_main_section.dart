import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HompageMainSection extends StatelessWidget {
  const HompageMainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.color.onPrimary,
        borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.kspace10,
          horizontal: AppSizes.kspace12,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
                    color: context.color.secondary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.kspace10,
                      vertical: AppSizes.kspace5,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Iconsax.cup, size: AppSizes.kiconMd),
                        Text('Challange', style: context.text.bodyMedium),
                      ],
                    ),
                  ),
                ),
                const Gap(AppSizes.kspace8),
                Text(
                  'Challange With\nPro Coach',
                  style: context.text.titleLarge?.copyWith(
                    color: context.color.secondary,
                  ),
                ),
                const Gap(AppSizes.kspace8),
                Row(
                  children: [
                    Text(
                      'Get Started',
                      style: context.text.bodyMedium?.copyWith(
                        color: context.color.secondary,
                      ),
                    ),
                    const Gap(AppSizes.kspace8),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: context.color.secondary),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(AppSizes.kspace5),
                        child: Icon(
                          Iconsax.play5,
                          color: context.color.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: -25,
              child: Image.asset('assets/images/rope.webp', height: 180),
            ),
          ],
        ),
      ),
    );
  }
}
