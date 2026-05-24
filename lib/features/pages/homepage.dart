import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:aether_fit/features/widgets/app_header_navbar.dart';
import 'package:aether_fit/features/widgets/homepage_category.dart';
import 'package:aether_fit/features/widgets/homepage_footer.dart';
import 'package:aether_fit/features/widgets/hompage_main_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.secondary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSizes.kspace8,
            horizontal: AppSizes.kspace12,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  const AppHeaderNavbar(),
                  const Gap(AppSizes.kspace24),
                  const HompageMainSection(),
                  const Gap(AppSizes.kspace16),
                  Row(
                    children: [
                      Text(
                        'Select Excerise Type',
                        style: context.text.bodyLarge,
                      ),
                    ],
                  ),
                  const Gap(AppSizes.kspace16),
                  SizedBox(height: 60, child: HomepageCategory()),
                  const Gap(AppSizes.kspace16),
                  const HomepageFooter(),
                ],
              ),
              Positioned(
                bottom: 5,
                left: 6,
                child: Container(
                  decoration: BoxDecoration(
                    color: context.color.secondary,
                    borderRadius: BorderRadius.circular(AppSizes.kspace32),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () => context.push('/act'),
                          child: Container(
                            decoration: BoxDecoration(
                              color: context.color.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(AppSizes.kspace8),
                              child: SvgPicture.asset(
                                'assets/svg/n1.svg',
                                height: AppSizes.kspace32,
                              ),
                            ),
                          ),
                        ),
                        const Gap(AppSizes.kspace8),
                        GestureDetector(
                          onTap: () => context.push('/marathon'),
                          child: Container(
                            decoration: BoxDecoration(
                              color: context.color.surface.withValues(
                                alpha: .3,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(AppSizes.kspace8),
                              child: SvgPicture.asset(
                                'assets/svg/runner-silhouette-svgrepo-com.svg',
                                height: AppSizes.kspace32,
                                color: context.color.primary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
