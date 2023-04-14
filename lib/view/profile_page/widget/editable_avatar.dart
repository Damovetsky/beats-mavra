import 'package:flutter/material.dart';
import '../../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../widget/avatar.dart';

class EditableAvatar extends StatelessWidget {
  final double size;
  final String url;

  const EditableAvatar({
    super.key,
    required this.size,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return BouncingGestureDetector(
      onTap: () {},
      child: Avatar(
        size: size,
        url: url,
        icon: Icons.add_a_photo,
      ),
    );
  }
}
