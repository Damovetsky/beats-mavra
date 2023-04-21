import 'package:flutter/material.dart';
import '../../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../widget/avatar.dart';

class EditableAvatar extends StatelessWidget {
  final double size;
  final String? url;
  final VoidCallback onEdit;

  const EditableAvatar({
    super.key,
    required this.size,
    required this.url,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return BouncingGestureDetector(
      onTap: onEdit,
      child: Avatar(
        size: size,
        url: url,
        icon: Icons.add_a_photo,
      ),
    );
  }
}
