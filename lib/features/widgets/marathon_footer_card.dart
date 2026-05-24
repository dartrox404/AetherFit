import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:aether_fit/features/widgets/element_column_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class MarathonFooterCard extends StatelessWidget {
  const MarathonFooterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: context.color.onPrimary,
          borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
        ),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.kspace10,
                  horizontal: AppSizes.kspace20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElementColumnWidget(
                      color: Colors.lightGreen,
                      image: 'assets/svg/footprint-svgrepo-com.svg',
                      text: "Steps",
                      subtitle: "14,580",
                    ),
                    const Gap(AppSizes.kspace8),
                    SizedBox(
                      width: 80,
                      child: Divider(
                        color: context.color.secondary.withValues(alpha: .3),
                      ),
                    ),
                    const Gap(AppSizes.kspace8),
                    ElementColumnWidget(
                      color: context.color.onTertiary,
                      image: 'assets/svg/heart-angle-svgrepo-com.svg',
                      text: "Bp",
                      subtitle: "115",
                    ),
                    const Gap(AppSizes.kspace8),
                    SizedBox(
                      width: 80,
                      child: Divider(
                        color: context.color.secondary.withValues(alpha: .3),
                      ),
                    ),
                    const Gap(AppSizes.kspace8),
                    ElementColumnWidget(
                      color: context.color.onSecondary,
                      image: 'assets/svg/stopwatch-svgrepo-com.svg',
                      text: "Timer",
                      subtitle: "00:32",
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.kspace32),
                  color: context.color.onTertiary,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.kspace5,
                    horizontal: AppSizes.kspace12,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Iconsax.cup),
                      const Gap(AppSizes.kspace8),
                      Text(
                        'Pro',
                        style: context.text.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 0,
              child: Image.asset('assets/images/run.webp', height: 300),
            ),
          ],
        ),
      ),
    );
  }
}
