import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di.dart';
import '../../core/helper/sheet_helper.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../core/ui/kit/chip.dart';
import '../../core/ui/kit/loader.dart';
import '../../core/ui/text_styles.dart';
import '../../domain/beats/entity/beat_entity.dart';
import '../../domain/purchases/entity/offer_entity.dart';
import '../widget/beat_card/beat_card.dart';
import 'cubit/cubit.dart';

class PurchaseSheet extends StatefulWidget {
  const PurchaseSheet({required this.beat, super.key});

  final BeatEntity beat;

  static Future<void> show(BuildContext context, BeatEntity beatEntity) {
    return BottomSheetHelper.show(
      context,
      (context, padding) => PurchaseSheet(
        beat: beatEntity,
      ),
      isScrollControlled: true,
    );
  }

  @override
  State<PurchaseSheet> createState() => _PurchaseSheetState();
}

class _PurchaseSheetState extends State<PurchaseSheet> {
  bool _isShown = false;

  static const Map<String, String> _map = {
    'gold': 'All sequencer tracks + mp3 and mav',
    'silver': 'MAV + mp3 files',
    'bronze': 'Just an mp3 file',
  };

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<PurchaseCubit>()..loadOffers(widget.beat.beatId),
      child: BlocListener<PurchaseCubit, PurchaseState>(
        listener: (context, state) {
          state.mapOrNull(
            success: (value) => Navigator.pop(context),
          );
        },
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Container(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height * 0.4,
              maxHeight: MediaQuery.of(context).size.height * 0.85,
            ),
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: screenHorizontalMargin),
                child: Column(
                  children: [
                    BeatCard(beat: widget.beat),
                    const SizedBox(height: 50),
                    Text(
                      'purchase_sheet_tracks_hint'.tr(),
                      textAlign: TextAlign.left,
                      style: currentTextTheme(context).bodyMedium?.copyWith(
                            color: currentColorScheme(context).onBackground.withOpacity(0.7),
                          ),
                    ),
                    const SizedBox(height: 16),
                    //Beat Files
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 120,
                        maxHeight: 130,
                      ),
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: BlocBuilder<PurchaseCubit, PurchaseState>(
                          buildWhen: (previous, current) =>
                              current.mapOrNull(loading: (value) => true, offers: (value) => true) ?? false,
                          builder: (context, state) {
                            return AnimatedSwitcher(
                              duration: const Duration(milliseconds: 300),
                              child: state.maybeMap(
                                offers: (value) {
                                  return ListWheelScrollView(
                                    perspective: 0.0048,
                                    squeeze: 0.9,
                                    itemExtent: 170,
                                    onSelectedItemChanged: (index) {
                                      context.read<PurchaseCubit>().changeOffer(value.offers, value.offers[index]);
                                    },
                                    children: List.generate(
                                      value.offers.length,
                                      (index) {
                                        return Center(
                                          child: RotatedBox(
                                            quarterTurns: 1,
                                            child: _FileCard(
                                              offer: value.offers[index],
                                              description: _map[value.offers[index].fileType] ?? 'Unknown offer',
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                                loading: (value) => const AppLoader(),
                                orElse: () => const SizedBox.shrink(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 50),
                    const _ConfirmPurchaseButton(),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ConfirmPurchaseButton extends StatelessWidget {
  const _ConfirmPurchaseButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PurchaseCubit, PurchaseState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: state.maybeMap(
                  offers: (value) {
                    return Container(
                      height: 32,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: currentColorScheme(context).secondaryContainer,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Итого: ',
                              style: currentTextTheme(context).bodyLarge?.copyWith(
                                    color: currentColorScheme(context).primary,
                                  ),
                            ),
                            TextSpan(
                              text: '${value.currentOffer.price.toStringAsFixed(0)} ₽',
                              style: currentTextTheme(context).bodyMedium,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
              const SizedBox(height: 8),
              FilledButton(
                onPressed: state.mapOrNull(buyLoading: (value) => true) ?? false
                    ? null
                    : () {
                        state.mapOrNull(
                          offers: (value) {
                            context.read<PurchaseCubit>().buy(value.currentOffer);
                          },
                        );
                      },
                style: FilledButton.styleFrom(
                  disabledBackgroundColor: currentColorScheme(context).outlineVariant,
                ),
                child: state.maybeMap(
                  loading: (value) => const AppLoader(),
                  orElse: () => Center(
                    child: Text('purchase_sheet_confirm_purchase'.tr()),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _FileCard extends StatelessWidget {
  final OfferEntity offer;
  final String description;

  const _FileCard({
    required this.offer,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: currentColorScheme(context).primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: currentColorScheme(context).primary,
          width: 2,
        ),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Center(
                  child: Text(
                    description,
                    style: currentTextTheme(context).bodyMedium?.copyWith(
                          color: currentColorScheme(context).primary,
                        ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: AppChip(
                  color: currentColorScheme(context).primary,
                  child: Text(
                    '${offer.price} ₽',
                    style: currentTextTheme(context).labelLarge?.copyWith(
                          color: currentColorScheme(context).onPrimary,
                        ),
                  ),
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              decoration: BoxDecoration(
                color: currentColorScheme(context).primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  topRight: Radius.circular(6),
                ),
              ),
              child: Text(
                offer.fileType,
                style: currentTextTheme(context).labelLarge?.copyWith(
                      color: currentColorScheme(context).onPrimary,
                      height: 1.6,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
