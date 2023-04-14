import 'package:flutter/material.dart';
import '../../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../widget/avatar.dart';

class EditableAvatar extends Avatar {
  const EditableAvatar({
    super.key,
    required super.size,
    required super.url,
  }) : super(icon: Icons.add_a_photo);

  @override
  Widget build(BuildContext context) {
    return BouncingGestureDetector(
      onTap: () {},
      child: super.build(context),
    );
  }
}
