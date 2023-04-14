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
      loadStateChanged: (state) {
        final Widget child;

        if (state.extendedImageLoadState == LoadState.loading) {
          child = const Center(
            child: SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
          );
        } else if (state.extendedImageLoadState == LoadState.completed) {
          child = state.completedWidget;
        } else if (state.extendedImageLoadState == LoadState.failed) {
          child = const Center(
            child: Icon(Icons.error),
          );
        } else {
          assert(false, 'Unsupported load state: ${state.extendedImageLoadState.name}');
          return const SizedBox.shrink();
        }

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          switchInCurve: Curves.fastOutSlowIn,
          switchOutCurve: Curves.fastOutSlowIn,
          child: child,
        );
      },
    );
  }
}
