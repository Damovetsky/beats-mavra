import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/text_styles.dart';
import '../filter_sheet/filter_sheet.dart';
import '../widget/beat_card_list/beat_card_list.dart';
import 'cubit/cubit.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<SearchCubit>(),
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverPersistentHeader(
                floating: true,
                delegate: _SearchSliverHeaderDelegate(
                  topPadding: MediaQuery.of(context).viewPadding.top,
                ),
              ),
            ];
          },
          body: const BeatCardList(),
        ),
      ),
    );
  }
}

class _SearchSliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double topPadding;

  double _completeHeight = 0;

  _SearchSliverHeaderDelegate({required this.topPadding}) {
    _completeHeight = topPadding + kToolbarHeight + 4;
  }

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: _completeHeight,
      padding: EdgeInsets.only(top: topPadding, left: screenHorizontalMargin, right: screenHorizontalMargin),
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          const Icon(Icons.search),
          const SizedBox(width: screenHorizontalMargin),
          Expanded(
            child: Text(
              'search_title'.tr(),
              style: currentTextTheme(context).titleLarge,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {
              FilterSheet.show(context);
            },
            icon: Icon(
              Icons.filter_alt_outlined,
              color: currentColorScheme(context).primary,
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => _completeHeight;

  @override
  double get minExtent => _completeHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}
