import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LocaleBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, Locale locale) builder;

  const LocaleBuilder({
    super.key,
    required this.builder,
  });

  @override
  State<LocaleBuilder> createState() => LocaleBuilderState();
}

class LocaleBuilderState extends State<LocaleBuilder> {
  void updateLocale(Locale locale) {
    setState(() {
      unawaited(context.setLocale(locale));
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, context.locale);
  }
}
