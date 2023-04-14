import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/profile/entity/profile_entity.dart';
import '../../../domain/profile/repository/profile_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository profileRepository;

  ProfileCubit(this.profileRepository) : super(const ProfileState.loading());

  Future<void> loadUser() async {
    final user = await profileRepository.getProfile();
    await Future.delayed(const Duration(seconds: 2));

    emit(
      user.fold(
        (failure) => ProfileState.failure(message: 'profile_load_error'.tr()),
        (user) => ProfileState.profile(profile: user),
      ),
    );
  }
}
