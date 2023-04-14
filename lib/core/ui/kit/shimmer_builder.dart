import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../color_schemes.dart';

Widget circleShimmer(double radius) => Container(
      height: radius * 2,
      width: radius * 2,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );

Widget circleBordersShimmer({required double height, double? width}) {
  return Container(
    height: height,
    width: width,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(height / 2),
    ),
  );
}

Widget borderRadiusShimmer({
  required double height,
  double? width,
  required BorderRadius borderRadius,
}) {
  return Container(
    height: height,
    width: width,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: borderRadius,
    ),
  );
}

class ShimmerBuilder<T> extends StatelessWidget {
  final T? data;
  final Widget loadingChild;
  final Widget Function(BuildContext context, T data) builder;

  const ShimmerBuilder({
    super.key,
    required this.data,
    required this.loadingChild,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final Widget animatedChild;

    if (data == null) {
      animatedChild = Shimmer.fromColors(
        baseColor: currentColorScheme(context).secondaryContainer,
        highlightColor: currentColorScheme(context).secondaryContainer.withOpacity(0.7),
        child: loadingChild,
      );
    } else {
      animatedChild = builder(context, data as T);
    }

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: animatedChild,
    );
  }
}
