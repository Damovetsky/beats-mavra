import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/di/di.dart';
import '../../../core/ui/color_schemes.dart';
import '../../../core/ui/dimens.dart';
import '../../../core/ui/kit/shimmer_builder.dart';
import '../../../domain/beats/entity/beat_entity.dart';
import '../beat_card.dart';
import 'cubit/cubit.dart';

class BeatCardList extends StatefulWidget {
  final List<String>? ids;

  const BeatCardList({
    super.key,
    this.ids,
  });

  @override
  State<BeatCardList> createState() => _BeatCardListState();
}

class _BeatCardListState extends State<BeatCardList> {
  final cubit = getIt.get<BeatCardListCubit>();
  final _beatsController = PagingController<int, BeatEntity>(firstPageKey: 0);

  @override
  void initState() {
    super.initState();

    _beatsController.addPageRequestListener((pageKey) {
      final beats = _beatsController.itemList;

      if (pageKey == 0) {
        unawaited(cubit.initialBeats());
      } else {
        cubit.loadMore(beats?.last);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cubit,
      child: BlocListener<BeatCardListCubit, BeatCardListState>(
        listener: (context, state) {
          state.mapOrNull(
            beats: (state) {
              final isLastPage = state.beats.length < beatsPageSize;

              if (isLastPage) {
                _beatsController.appendLastPage(state.beats);
              } else {
                _beatsController.appendPage(
                  state.beats,
                  (_beatsController.itemList?.length ?? 0) + state.beats.length,
                );
              }
            },
          );
        },
        child: RefreshIndicator(
          onRefresh: () async {
            _beatsController.refresh();
            return cubit.initialBeats();
          },
          child: PagedListView<int, BeatEntity>.separated(
            pagingController: _beatsController,
            padding: const EdgeInsets.only(
              left: screenHorizontalMargin,
              right: screenHorizontalMargin,
              bottom: screenBottomScrollPadding,
              top: screenTopScrollPadding,
            ),
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, beat, index) => BeatCard(beat: beat),
              firstPageProgressIndicatorBuilder: (context) => const SizedBox.shrink(),
              animateTransitions: true,
            ),
            separatorBuilder: (context, _) => const SizedBox(height: 16),
          ),
        ),
      ),
    );
  }
}
