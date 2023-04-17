import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/color_schemes.dart';
import '../../../core/ui/kit/tags.dart';
import '../../../core/ui/text_styles.dart';

class GenreTextField extends StatelessWidget {
  final List<String> availableGenres;
  final List<String> genres;
  final Function(List<String> genres) onChanged;
  final Function(int index) onRemoved;

  const GenreTextField({
    super.key,
    required this.availableGenres,
    required this.genres,
    required this.onChanged,
    required this.onRemoved,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController? searchControllerRef;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return Autocomplete(
              optionsViewBuilder: (context, onSelected, options) {
                return Align(
                  alignment: Alignment.topLeft,
                  child: Material(
                    child: Container(
                      constraints: const BoxConstraints(maxHeight: 156),
                      margin: const EdgeInsets.only(top: 8),
                      width: constraints.biggest.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: currentColorScheme(context).outline.withOpacity(0.5)),
                      ),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: options.length,
                        itemBuilder: (context, index) {
                          final listOptions = options.toList();

                          return InkWell(
                            onTap: () {
                              onSelected(listOptions[index]);
                              onChanged([...genres, listOptions[index]]);
                              searchControllerRef?.clear();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                              child: Text(
                                listOptions[index],
                                style: currentTextStyle(context).bodyMedium,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                );
              },
              optionsBuilder: (textEditingValue) {
                return availableGenres
                    .where(
                      (element) => !genres.contains(element),
                    )
                    .where(
                      (element) =>
                          element.toLowerCase().contains(textEditingValue.text) && textEditingValue.text.isNotEmpty,
                    );
              },
              fieldViewBuilder: (context, searchController, focusNode, onFieldSubmitted) {
                searchControllerRef = searchController;
                return TextField(
                  focusNode: focusNode,
                  controller: searchController,
                  scrollPadding: const EdgeInsets.only(bottom: 128),
                  decoration: InputDecoration(
                    hintText: 'beats_sheet_genre_search_hint'.tr(),
                  ),
                );
              },
            );
          },
        ),
        const SizedBox(height: 8),
        AppTags(tags: genres, onRemove: onRemoved)
      ],
    );
  }
}
