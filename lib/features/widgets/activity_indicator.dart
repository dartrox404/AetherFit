import 'package:aether_fit/core/const/app_sizes.dart';
import 'package:aether_fit/core/extensions/app_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ActivityIndicator extends StatelessWidget {
  const ActivityIndicator({
    super.key,
    required this.text,
    required this.value,
    required this.color,
    required this.heading,
    required this.subheading,
    this.radius,
    required this.needletext,
    required this.needlevalue,
  });
  final String text;
  final double value;
  final String heading;
  final String subheading;
  final Color color;
  final BorderRadiusGeometry? radius;
  final String needletext;
  final double needlevalue;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.color.primary,
        borderRadius: radius,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.kspace10,
          horizontal: AppSizes.kspace12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  height: AppSizes.kspace12,
                  width: AppSizes.kspace12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                ),
                const Gap(AppSizes.kspace8),
                Text(
                  heading,
                  style: context.text.bodyLarge?.copyWith(
                    color: context.color.secondary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              subheading,
              style: context.text.bodyMedium?.copyWith(
                color: context.color.secondary,
              ),
            ),
            Row(
              children: [
                Text(
                  text,
                  style: context.text.titleLarge?.copyWith(
                    color: context.color.secondary,
                  ),
                ),
                Spacer(),
                Expanded(
                  child: SizedBox(
                    height: 80,
                    child: SfRadialGauge(
                      axes: [
                        RadialAxis(
                          minimum: 0,
                          maximum: 250,
                          ranges: [
                            GaugeRange(
                              startValue: 0,
                              endValue: value,
                              color: color,
                            ),
                          ],
                          pointers: [
                            NeedlePointer(
                              needleEndWidth: 10,
                              needleStartWidth: 0,
                              value: needlevalue,
                              needleColor: context.color.secondary,
                              animationDuration: 300,
                              animationType: AnimationType.ease,
                              enableAnimation: true,
                            ),
                          ],
                          annotations: [
                            GaugeAnnotation(
                              widget: Text(
                                needletext,
                                style: context.text.bodySmall?.copyWith(
                                  color: context.color.secondary,
                                ),
                              ),
                              angle: 90,
                              positionFactor: 0.5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
