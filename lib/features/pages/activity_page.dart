import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:aether_fit/features/widgets/activity_indicator.dart';
import 'package:aether_fit/features/widgets/activity_page_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.secondary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSizes.kspace8,
            horizontal: AppSizes.kspace10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => context.go('/home'),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.color.primary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(AppSizes.kspace8),
                        child: Icon(
                          Iconsax.arrow_left,
                          color: context.color.secondary,
                        ),
                      ),
                    ),
                  ),
                  Text('Daily Challange', style: context.text.titleLarge),
                  GestureDetector(
                    onTap: () => context.go('/home'),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.color.primary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(AppSizes.kspace8),
                        child: Icon(
                          Iconsax.edit,
                          color: context.color.secondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(AppSizes.kspace32),
              Text('Today\'s Activity', style: context.text.titleLarge),
              const Gap(AppSizes.kspace5),
              Text('23 May, 10:14 PM', style: context.text.bodyLarge),
              const Gap(AppSizes.kspace16),
              const Gap(AppSizes.kspace8),
              SizedBox(
                width: context.width,
                child: Divider(
                  color: context.color.primary.withValues(alpha: .3),
                ),
              ),
              const Gap(AppSizes.kspace8),
              ActivityPageCard(
                text: '10 th',
                subtitle: "Time in General",
                icon: Iconsax.strongbox,
                bgcolor: context.color.tertiary,
              ),
              const Gap(AppSizes.kspace8),
              SizedBox(
                width: context.width,
                child: Divider(
                  color: context.color.primary.withValues(alpha: .3),
                ),
              ),
              const Gap(AppSizes.kspace8),
              ActivityPageCard(
                text: '28 min 45s',
                subtitle: "Today Routine",
                icon: Iconsax.clock,
                bgcolor: context.color.onPrimary,
              ),
              const Gap(AppSizes.kspace8),
              SizedBox(
                width: context.width,
                child: Divider(
                  color: context.color.primary.withValues(alpha: .3),
                ),
              ),
              const Gap(AppSizes.kspace8),
              ActivityPageCard(
                text: '8min',
                subtitle: "Points Earned",
                icon: Iconsax.medal,
                bgcolor: context.color.onSecondary,
              ),
              const Gap(AppSizes.kspace8),
              SizedBox(
                width: context.width,
                child: Divider(
                  color: context.color.primary.withValues(alpha: .3),
                ),
              ),
              const Gap(AppSizes.kspace24),
              ActivityIndicator(
                text: '38%',
                value: 100,
                color: context.color.onPrimary,
                heading: 'Level Activity',
                subheading: "Your general goal achievements",
                needletext: '5%',
                needlevalue: 80,
                radius: BorderRadius.vertical(
                  top: Radius.circular(AppSizes.kradiusXl),
                ),
              ),
              const Gap(1),
              ActivityIndicator(
                text: '54%',
                value: 180,
                color: context.color.onTertiary,
                heading: 'Success endurance',
                subheading: "Your general endurance success",
                needletext: '8%',
                needlevalue: 120,
                radius: BorderRadius.vertical(
                  bottom: Radius.circular(AppSizes.kradiusXl),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
