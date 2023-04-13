import 'package:flutter/material.dart';

import '../../core/ui/kit/image.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String? url;

  const Avatar({
    super.key,
    required this.size,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (url != null) {
      return Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: colorScheme.secondaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.person,
          color: colorScheme.primary,
          size: size / 2,
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
