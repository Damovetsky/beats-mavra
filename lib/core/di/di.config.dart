// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i5;

import 'package:beats/data/converters/create_beat_entity_to_beat_model_converter.dart'
    as _i8;
import 'package:beats/data/module/firebase_module.dart' as _i26;
import 'package:beats/data/repository/auth_repository_impl.dart' as _i4;
import 'package:beats/data/repository/beats_repository_impl.dart' as _i24;
import 'package:beats/data/repository/profile_repository_impl.dart' as _i19;
import 'package:beats/data/repository/users_repository_impl.dart' as _i22;
import 'package:beats/data/service/auth_service/auth_service.dart' as _i15;
import 'package:beats/data/service/beats_service/beats_service.dart' as _i16;
import 'package:beats/data/service/beats_service/models/beat_model.dart' as _i7;
import 'package:beats/data/service/files_service/files_service.dart' as _i17;
import 'package:beats/data/service/users_service/exceptions.dart' as _i14;
import 'package:beats/data/service/users_service/users_service.dart' as _i20;
import 'package:beats/domain/auth/repository/auth_repository.dart' as _i3;
import 'package:beats/domain/beats/entity/create_beat_entity.dart' as _i6;
import 'package:beats/domain/beats/repository/beats_repository.dart' as _i23;
import 'package:beats/domain/profile/repository/profile_repository.dart'
    as _i18;
import 'package:beats/domain/users/repository/users_repository.dart' as _i21;
import 'package:beats/view/profile_page/cubit/cubit.dart' as _i25;
import 'package:beats/view/splash_page/cubit/cubit.dart' as _i13;
import 'package:cloud_firestore/cloud_firestore.dart' as _i11;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:firebase_core/firebase_core.dart' as _i9;
import 'package:firebase_storage/firebase_storage.dart' as _i12;
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
    gh.lazySingleton<_i3.AuthRepository>(() => _i4.AuthRepositoryImpl());
    gh.factory<_i5.Converter<_i6.CreateBeatEntity, _i7.BeatModel>>(
        () => _i8.CreateBeatEntityToBeatModelConverter(gh<String>()));
    await gh.factoryAsync<_i9.FirebaseApp>(
      () => firebaseModule.firebaseApp,
      preResolve: true,
    );
    gh.factory<_i10.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.factory<_i11.FirebaseFirestore>(() => firebaseModule.firebaseStore);
    gh.factory<_i12.FirebaseStorage>(() => firebaseModule.firebaseStorage);
    gh.factory<_i13.SplashCubit>(() => _i13.SplashCubit());
    gh.factory<_i14.UsersExceptionFactory>(() => _i14.UsersExceptionFactory());
    gh.factory<_i15.AuthService>(
        () => _i15.AuthServiceImpl(gh<_i10.FirebaseAuth>()));
    gh.factory<_i16.BeatsService>(
        () => _i16.BeatsServiceImpl(gh<_i11.FirebaseFirestore>()));
    gh.factory<_i17.FilesService>(() => _i17.FilesServiceImpl(
          gh<_i12.FirebaseStorage>(),
          gh<_i11.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i18.ProfileRepository>(
        () => _i19.ProfileRepositoryImpl(gh<_i15.AuthService>()));
    gh.factory<_i20.UserService>(() => _i20.UserServiceImpl(
          gh<_i11.FirebaseFirestore>(),
          gh<_i14.UsersExceptionFactory>(),
        ));
    gh.lazySingleton<_i21.UsersRepository>(
        () => _i22.UsersRepositoryImpl(gh<_i20.UserService>()));
    gh.lazySingleton<_i23.BeatsRepository>(
        () => _i24.BeatsRepositoryImpl(gh<_i16.BeatsService>()));
    gh.factory<_i25.ProfileCubit>(
        () => _i25.ProfileCubit(gh<_i18.ProfileRepository>()));
    return this;
  }
}

class _$FirebaseModule extends _i26.FirebaseModule {}
