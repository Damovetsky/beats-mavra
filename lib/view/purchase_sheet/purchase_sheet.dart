import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../core/helper/sheet_helper.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/kit/chip.dart';
import '../../core/ui/text_styles.dart';
import '../../domain/beats/entity/beat_entity.dart';
import '../../view/beat_sheet/widget/beat_files.dart';
import '../widget/beat_card.dart';

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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            padding:
                const EdgeInsets.symmetric(horizontal: screenHorizontalMargin),
            child: Column(
              children: [
                BeatCard(beat: widget.beat),
                const SizedBox(height: 50),
                // IconButton(
                //     onPressed: () {
                //       setState(() {
                //         _isShown = !_isShown;
                //       });
                //     },
                //     icon: Icon(Icons.abc)),
                Text(
                  'purchase_sheet_tracks_hint'.tr(),
                  textAlign: TextAlign.left,
                  style: currentTextTheme(context).bodyMedium?.copyWith(
                        color: currentColorScheme(context)
                            .onBackground
                            .withOpacity(0.7),
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
                    child: ListWheelScrollView(
                      diameterRatio: 2,
                      perspective: 0.0048,
                      squeeze: 0.9,
                      itemExtent: 170,
                      children: List.generate(
                        3,
                        (index) {
                          return RotatedBox(
                            quarterTurns: 1,
                            child: _FileCard(
                              grade: 'gold',
                              description: 'All sequencer tracks + mp3 and mav',
                              price: 700,
                            ),
                          );
                        },
                      ).reversed.toList(),
                    ),
                  ),
                ),

                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.decelerate,
                          padding: const EdgeInsets.only(bottom: 28),
                          child: Center(
                            child: Text(
                              'Итог: 100500',
                              style: currentTextTheme(context)
                                  .titleMedium
                                  ?.copyWith(fontWeight: FontWeight.normal),
                            ),
                          ),
                          height: _isShown ? 65 : 0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:
                                currentColorScheme(context).secondaryContainer,
                          ),
                        ),
                      ),
                      FilledButton(
                        onPressed: _isShown ? () {} : null,
                        style: FilledButton.styleFrom(
                          disabledBackgroundColor:
                              currentColorScheme(context).outlineVariant,
                        ),
                        child: Center(
                          child: Text('purchase_sheet_confirm_purchase'.tr()),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FileCard extends StatelessWidget {
  _FileCard({
    required this.grade,
    required this.description,
    required this.price,
    super.key,
  });

  String grade;
  String description;
  double price;

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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                child: AppChip(
                  color: currentColorScheme(context).primary,
                  child: Text(
                    '$price ₽',
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
                grade,
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
