import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:aether_fit/features/widgets/marathon_card.dart';
import 'package:aether_fit/features/widgets/marathon_footer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class MarathonPage extends StatelessWidget {
  const MarathonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.secondary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSizes.kspace10,
            horizontal: AppSizes.kspace12,
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
                  Text('Set Timer', style: context.text.titleLarge?.copyWith()),
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
                          Iconsax.clock,
                          color: context.color.secondary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(AppSizes.kspace32),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: context.color.onSecondary,
                        width: AppSizes.kspace5,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSizes.kspace10),
                      child: SvgPicture.asset(
                        'assets/svg/runner-silhouette-svgrepo-com.svg',
                        // ignore: deprecated_member_use
                        color: context.color.primary,
                        height: AppSizes.kspace24,
                      ),
                    ),
                  ),
                  const Gap(AppSizes.kspace24),
                  Text(
                    '10 Km\nMarathon',
                    style: context.text.displaySmall?.copyWith(
                      fontFamily: 'mons',
                    ),
                  ),
                  const Gap(AppSizes.kspace24),
                ],
              ),
              const Gap(AppSizes.kspace32),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Stack(
                  children: [
                    MarathonChart(),
                    Positioned(
                      top: 70,
                      left: 50,
                      child: Text(
                        '320kcal',
                        style: context.text.bodySmall?.copyWith(
                          color: context.color.onPrimary,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      right: 40,
                      child: Text(
                        '920kcal',
                        style: context.text.bodySmall?.copyWith(
                          color: context.color.onSecondary,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      left: 100,
                      child: Text('1,320kcal', style: context.text.bodySmall),
                    ),
                  ],
                ),
              ),
              const Gap(AppSizes.kspace24),
              MarathonFooterCard(),
            ],
          ),
        ),
      ),
    );
  }
}
