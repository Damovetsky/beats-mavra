import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final ImageProvider image;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final BoxFit? fit;

  const AppImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.borderRadius,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return ExtendedImage(
      height: height,
      width: width,
      image: image,
      borderRadius: borderRadius,
      shape: BoxShape.rectangle,
      fit: fit,
      loadStateChanged: (state) {},
    );
  }
}
