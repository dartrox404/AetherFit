import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:aether_fit/data/model/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomepageCategory extends StatefulWidget {
  const HomepageCategory({super.key});

  @override
  State<HomepageCategory> createState() => _HomepageCategoryState();
}

class _HomepageCategoryState extends State<HomepageCategory> {
  int tracker = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categorylist.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                tracker = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: AppSizes.kspace10),
              child: AnimatedScale(
                scale: tracker == index ? 1.25 : 1,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  decoration: BoxDecoration(
                    color: tracker == index
                        ? context.color.onSecondary
                        : context.color.primary,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.kspace8),
                    child: SvgPicture.asset(
                      categorylist[index],
                      color: context.color.secondary,
                      height: AppSizes.kspace32,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
