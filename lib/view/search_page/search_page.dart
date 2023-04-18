import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../core/di/di.dart';
import '../../core/ui/dimens.dart';
import '../../domain/beats/entity/beat_entity.dart';
import '../widget/beat_card.dart';
import 'cubit/cubit.dart';

const int searchPageSize = 6;

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final cubit = getIt.get<SearchCubit>();
  final _searchController = PagingController<int, BeatEntity>(firstPageKey: 0);

  @override
  void initState() {
    super.initState();

    _searchController.addPageRequestListener((pageKey) {
      final beats = _searchController.itemList;
      cubit.loadMore(beats?.last);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        appBar: AppBar(),
        body: BlocListener<SearchCubit, SearchState>(
          listener: (context, state) {
            state.mapOrNull(
              feed: (state) {
                final isLastPage = state.beats.length < searchPageSize;

                if (isLastPage) {
                  _searchController.appendLastPage(state.beats);
                } else {
                  _searchController.appendPage(
                      state.beats, (_searchController.itemList?.length ?? 0) + state.beats.length);
                }
              },
            );
          },
          child: PagedListView<int, BeatEntity>.separated(
            pagingController: _searchController,
            padding: const EdgeInsets.only(
              left: screenHorizontalMargin,
              right: screenHorizontalMargin,
              top: screenTopScrollPadding,
              bottom: screenBottomScrollPadding,
            ),
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, beat, index) => BeatCard(beat: beat),
            ),
            separatorBuilder: (context, _) => const SizedBox(height: 16),
          ),
        ),
      ),
    );
  }
}
