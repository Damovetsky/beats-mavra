import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/di.dart';
import '../../../core/ui/color_schemes.dart';
import '../../../core/ui/dimens.dart';
import '../../../core/ui/kit/back_button.dart';
import '../../../core/ui/kit/shimmer_builder.dart';
import '../../widget/beat_card.dart';
import 'cubit/cubit.dart';

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
          leading: const AppBackButton(),
          title: Text(widget.title),
        ),
        body: BlocBuilder<BeatListCubit, BeatListState>(
          buildWhen: (previous, current) =>
              current.mapOrNull(loading: (value) => true, beats: (value) => true) ?? false,
          builder: (context, state) {
            return ListView.separated(
              padding: const EdgeInsets.only(
                left: screenHorizontalMargin,
                right: screenHorizontalMargin,
                top: screenTopScrollPadding,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ShimmerBuilder(
                  data: state.mapOrNull(beats: (value) => value) ?? 5,
                  loadingChild: BorderRadiusShimmer(
                    height: 196,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  builder: (context, data) => BeatCard(),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 16),
            );
          },
        ),
      ),
    );
  }
}


class AppHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}


