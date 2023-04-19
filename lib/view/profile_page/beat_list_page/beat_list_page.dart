import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/di.dart';
import '../../../core/ui/kit/back_button.dart';
import '../../widget/beat_card_list/beat_card_list.dart';
import 'cubit/cubit.dart';

@RoutePage()
class BeatListPage extends StatefulWidget {
  final String title;
  final List<String> beatIds;

  const BeatListPage({
    super.key,
    required this.title,
    required this.beatIds,
  });

  @override
  State<BeatListPage> createState() => _BeatListPageState();
}

class _BeatListPageState extends State<BeatListPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<BeatListCubit>(),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: AppBackButton(onTap: context.router.pop),
          title: Text(widget.title),
        ),
        body: widget.beatIds.isEmpty
            ? Center(child: Text('Грустно и пусто'))
            : BeatCardList(
                beatsIds: widget.beatIds,
                popupItems: [
                  BeatCardPopupItem(icon: Icons.edit_outlined, title: 'Edit', onTap: () {}),
                ],
              ),
      ),
    );
  }
}
