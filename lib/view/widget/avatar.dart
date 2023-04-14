import 'package:flutter/material.dart';

import '../../core/ui/color_schemes.dart';
import '../../core/ui/kit/image.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String? url;
  final IconData icon;

  const Avatar({
    super.key,
    required this.size,
    required this.url,
    this.icon = Icons.person,
  });

  @override
  Widget build(BuildContext context) {
    if (url == null) {
      return Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: currentColorScheme(context).secondaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: currentColorScheme(context).primary,
          size: size / 3,
        ),
      );
    }

    return AppImage(
      height: size,
      width: size,
      borderRadius: BorderRadius.circular(size / 2),
      image: NetworkImage(url!),
    );
  }
}
