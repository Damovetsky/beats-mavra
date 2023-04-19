import 'dart:async';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../core/di/di.dart';
import '../../../core/helper/menu_helper.dart';
import '../../../core/ui/color_schemes.dart';
import '../../../core/ui/dimens.dart';
import '../../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../../core/ui/kit/snackbar.dart';
import '../../../core/ui/text_styles.dart';
import '../../../domain/beats/entity/beat_entity.dart';
import '../beat_card.dart';
import 'cubit/cubit.dart';

class BeatCardPopupItem {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  BeatCardPopupItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}

class BeatCardList extends StatefulWidget {
  final List<String>? beatsIds;
  final List<BeatCardPopupItem>? popupItems;

  const BeatCardList({
    super.key,
    this.beatsIds,
    this.popupItems,
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
        unawaited(cubit.initialBeats(beatsIds: widget.beatsIds));
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
            failure: (value) {
              unawaited(showSnackbar(
                context,
                title: 'О БОЖЕ!',
                message: 'Беда беда ошибка()',
                position: FlushbarPosition.TOP,
              ));
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
              itemBuilder: (context, beat, index) => BouncingGestureDetector(
                onLongPress: widget.popupItems != null
                    ? (position) async {
                        if (position != null) {
                          showPositionedPopupMenu(
                            context,
                            position,
                            widget.popupItems!.map((e) {
                              return PopupMenuItem(
                                onTap: e.onTap,
                                child: Row(
                                  children: [
                                    Icon(e.icon, color: currentColorScheme(context).primary),
                                    const SizedBox(width: 12),
                                    Text(
                                      e.title,
                                      style: currentTextTheme(context).bodyLarge,
                                    ),
                                  ],
                                ),
                              );
                            }).toList(growable: false),
                          );
                        }
                      }
                    : null,
                child: BeatCard(beat: beat),
              ),
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
