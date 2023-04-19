// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beats/data/converters/beats/beat_entity_to_beat_model_converter.dart'
    as _i3;
import 'package:beats/data/converters/beats/beat_model_to_beat_entity_converter.dart'
    as _i5;
import 'package:beats/data/converters/users/private_user_model_to_private_user_entity_converter%20copy.dart'
    as _i11;
import 'package:beats/data/converters/users/public_user_model_to_public_user_entity_converter.dart'
    as _i12;
import 'package:beats/data/module/firebase_module.dart' as _i30;
import 'package:beats/data/repository/auth_repository_impl.dart' as _i22;
import 'package:beats/data/repository/beats_repository_impl.dart' as _i24;
import 'package:beats/data/repository/profile_repository_impl.dart' as _i26;
import 'package:beats/data/repository/users_repository_impl.dart' as _i20;
import 'package:beats/data/service/auth_service/auth_service.dart' as _i15;
import 'package:beats/data/service/beats_service/beats_service.dart' as _i16;
import 'package:beats/data/service/beats_service/exceptions.dart' as _i6;
import 'package:beats/data/service/files_service/files_service.dart' as _i17;
import 'package:beats/data/service/users_service/exceptions.dart' as _i14;
import 'package:beats/data/service/users_service/users_service.dart' as _i18;
import 'package:beats/domain/auth/repository/auth_repository.dart' as _i21;
import 'package:beats/domain/beats/repository/beats_repository.dart' as _i23;
import 'package:beats/domain/profile/repository/profile_repository.dart'
    as _i25;
import 'package:beats/domain/users/repository/users_repository.dart' as _i19;
import 'package:beats/view/profile_page/beat_list_page/cubit/cubit.dart' as _i4;
import 'package:beats/view/profile_page/cubit/cubit.dart' as _i29;
import 'package:beats/view/search_page/cubit/cubit.dart' as _i27;
import 'package:beats/view/splash_page/cubit/cubit.dart' as _i13;
import 'package:beats/view/widget/beat_card_list/cubit/cubit.dart' as _i28;
import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_core/firebase_core.dart' as _i7;
import 'package:firebase_storage/firebase_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    gh.factory<_i3.BeatEntityToBeatModelConverter>(
        () => _i3.BeatEntityToBeatModelConverter());
    gh.factory<_i4.BeatListCubit>(() => _i4.BeatListCubit());
    gh.factory<_i5.BeatModelToBeatEntityConverter>(
        () => _i5.BeatModelToBeatEntityConverter());
    gh.factory<_i6.BeatsExceptionFactory>(() => _i6.BeatsExceptionFactory());
    await gh.factoryAsync<_i7.FirebaseApp>(
      () => firebaseModule.firebaseApp,
      preResolve: true,
    );
    gh.factory<_i8.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.factory<_i9.FirebaseFirestore>(() => firebaseModule.firebaseStore);
    gh.factory<_i10.FirebaseStorage>(() => firebaseModule.firebaseStorage);
    gh.factory<_i11.PrivateUserModelToPrivateUserEntityConverter>(
        () => _i11.PrivateUserModelToPrivateUserEntityConverter());
    gh.factory<_i12.PublicUserModelToPublicUserEntityConverter>(
        () => _i12.PublicUserModelToPublicUserEntityConverter());
    gh.factory<_i13.SplashCubit>(() => _i13.SplashCubit());
    gh.factory<_i14.UsersExceptionFactory>(() => _i14.UsersExceptionFactory());
    gh.factory<_i15.AuthService>(
        () => _i15.AuthServiceImpl(gh<_i8.FirebaseAuth>()));
    gh.factory<_i16.BeatsService>(() => _i16.BeatsServiceImpl(
          gh<_i9.FirebaseFirestore>(),
          gh<_i6.BeatsExceptionFactory>(),
        ));
    gh.factory<_i17.FilesService>(() => _i17.FilesServiceImpl(
          gh<_i10.FirebaseStorage>(),
          gh<_i9.FirebaseFirestore>(),
        ));
    gh.factory<_i18.UserService>(() => _i18.UserServiceImpl(
          gh<_i9.FirebaseFirestore>(),
          gh<_i14.UsersExceptionFactory>(),
        ));
    gh.lazySingleton<_i19.UsersRepository>(() => _i20.UsersRepositoryImpl(
          gh<_i18.UserService>(),
          gh<_i12.PublicUserModelToPublicUserEntityConverter>(),
        ));
    gh.lazySingleton<_i21.AuthRepository>(() => _i22.AuthRepositoryImpl(
          gh<_i15.AuthService>(),
          gh<_i18.UserService>(),
        ));
    gh.lazySingleton<_i23.BeatsRepository>(() => _i24.BeatsRepositoryImpl(
          gh<_i16.BeatsService>(),
          gh<_i5.BeatModelToBeatEntityConverter>(),
        ));
    gh.lazySingleton<_i25.ProfileRepository>(() => _i26.ProfileRepositoryImpl(
          gh<_i15.AuthService>(),
          gh<_i18.UserService>(),
          gh<_i11.PrivateUserModelToPrivateUserEntityConverter>(),
        ));
    gh.factory<_i27.SearchCubit>(
        () => _i27.SearchCubit(gh<_i23.BeatsRepository>()));
    gh.factory<_i28.BeatCardListCubit>(
        () => _i28.BeatCardListCubit(gh<_i23.BeatsRepository>()));
    gh.factory<_i29.ProfileCubit>(() => _i29.ProfileCubit(
          gh<_i25.ProfileRepository>(),
          gh<_i19.UsersRepository>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i30.FirebaseModule {}
