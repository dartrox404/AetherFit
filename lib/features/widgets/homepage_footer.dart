import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:aether_fit/data/model/images_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomepageFooter extends StatefulWidget {
  const HomepageFooter({super.key});

  @override
  State<HomepageFooter> createState() => _HomepageFooterState();
}

class _HomepageFooterState extends State<HomepageFooter> {
  int tracker = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: context.width,
        decoration: BoxDecoration(
          color: context.color.surface,
          borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSizes.kspace10,
            horizontal: AppSizes.kspace12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Muscle Worklaod',
                style: context.text.titleLarge?.copyWith(
                  color: context.color.secondary,
                ),
              ),
              Text(
                'Select Muscle type you want to make strong.',
                style: context.text.bodyMedium?.copyWith(
                  color: context.color.secondary,
                ),
              ),
              const Gap(AppSizes.kspace8),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: AppSizes.kspace8,
                    mainAxisSpacing: AppSizes.kspace8,
                  ),
                  itemCount: imagelist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          tracker = index;
                        });
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: tracker == index
                              ? BorderRadius.circular(AppSizes.kradiusXl)
                              : BorderRadius.circular(AppSizes.kradiusMd),
                          border: tracker == index
                              ? Border.all(color: context.color.onSecondary)
                              : Border.all(color: Colors.transparent),
                          image: DecorationImage(
                            image: AssetImage(imagelist[index]),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
