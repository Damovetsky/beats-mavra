import 'package:flutter/material.dart';

import '../../core/ui/dimens.dart';
import '../widget/beat_card.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: screenHorizontalMargin),
        itemCount: 3,
        itemBuilder: (context, index) {
          return BeatCard();
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 16,
        ),
      ),
    );
  }
}
