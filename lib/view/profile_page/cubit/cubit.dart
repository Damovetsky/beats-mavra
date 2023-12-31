import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../core/error/failure.dart';
import '../../../domain/profile/entity/private_user_entity/private_user_entity.dart';
import '../../../domain/profile/repository/profile_repository.dart';
import '../../../domain/users/entity/public_user_entity/public_user_entity.dart';
import '../../../domain/users/repository/users_repository.dart';

part 'cubit.freezed.dart';
part 'state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository profileRepository;
  final UsersRepository usersRepository;

  StreamSubscription? _profileSubscription;

  ProfileCubit(this.profileRepository, this.usersRepository) : super(const ProfileState.loading()) {
    unawaited(loadUser());
  }

  Future<void> loadUser() async {
    emit(const ProfileState.loading());
    await _profileSubscription?.cancel();

    _profileSubscription = profileRepository.getProfile().asyncMap((privateUserEither) async {
      return privateUserEither.fold<Future<ProfileState>>(
        (failure) {
          ProfileState state;
          if (failure is UnauthorizedFailure) {
            state = const ProfileState.needAuth();
          } else {
            state = ProfileState.failure(message: 'profile_load_error'.tr());
          }
          return Future.value(state);
        },
        (privateUser) async {
          final publicUser = await usersRepository.getUser(userId: privateUser.id);

          return publicUser.fold<ProfileState>(
            (failure) => ProfileState.failure(message: 'profile_load_error'.tr()),
            (publicUser) => ProfileState.profile(privateUser: privateUser, publicUser: publicUser),
          );
        },
      );
    }).listen(emit);
  }

  void updateUser() {
    
  }

  Future<void> signOut() async {
    final signOutEither = await profileRepository.signOut();

    if (signOutEither.isLeft()) {
      emit(ProfileState.failure(message: 'profile_load_error'.tr()));
    }
  }

  @override
  Future<void> close() async {
    await _profileSubscription?.cancel();
    return super.close();
  }
}
