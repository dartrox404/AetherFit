import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ElementColumnWidget extends StatelessWidget {
  const ElementColumnWidget({
    super.key,
    required this.image,
    required this.text,
    required this.subtitle,
    required this.color,
  });
  final String image;
  final String text;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            SvgPicture.asset(image, height: AppSizes.kiconXl, color: color),
            const Gap(AppSizes.kspace8),
            Text(
              text,
              style: context.text.bodyLarge?.copyWith(
                color: context.color.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Gap(AppSizes.kspace5),
        Text(
          subtitle,
          style: context.text.titleLarge?.copyWith(
            color: context.color.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
