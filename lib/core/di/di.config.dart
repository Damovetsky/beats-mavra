// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beats/data/module/firebase_module.dart' as _i18;
import 'package:beats/data/repository/auth_repository_impl.dart' as _i16;
import 'package:beats/data/repository/beats_repository_impl.dart' as _i4;
import 'package:beats/data/repository/profile_repository_impl.dart' as _i14;
import 'package:beats/data/repository/users_repository_impl.dart' as _i10;
import 'package:beats/data/service/auth_service/auth_service.dart' as _i11;
import 'package:beats/data/service/beats_service/beats_service.dart' as _i12;
import 'package:beats/domain/auth/repository/auth_repository.dart' as _i15;
import 'package:beats/domain/beats/repository/beats_repository.dart' as _i3;
import 'package:beats/domain/profile/repository/profile_repository.dart'
    as _i13;
import 'package:beats/domain/users/repository/users_repository.dart' as _i9;
import 'package:beats/view/profile_page/cubit/cubit.dart' as _i17;
import 'package:beats/view/splash_page/cubit/cubit.dart' as _i8;
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_core/firebase_core.dart' as _i5;
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
    gh.lazySingleton<_i3.BeatsRepository>(() => _i4.BeatsRepositoryImpl());
    await gh.factoryAsync<_i5.FirebaseApp>(
      () => firebaseModule.firebaseApp,
      preResolve: true,
    );
    gh.factory<_i6.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.factory<_i7.FirebaseFirestore>(() => firebaseModule.firebaseStore);
    gh.factory<_i8.SplashCubit>(() => _i8.SplashCubit());
    gh.lazySingleton<_i9.UsersRepository>(() => _i10.UsersRepositoryImpl());
    gh.factory<_i11.AuthService>(
        () => _i11.AuthServiceImpl(gh<_i6.FirebaseAuth>()));
    gh.factory<_i12.BeatsService>(
        () => _i12.BeatsServiceImpl(gh<_i7.FirebaseFirestore>()));
    gh.lazySingleton<_i13.ProfileRepository>(
        () => _i14.ProfileRepositoryImpl(gh<_i11.AuthService>()));
    gh.lazySingleton<_i15.AuthRepository>(
        () => _i16.AuthRepositoryImpl(gh<_i11.AuthService>()));
    gh.factory<_i17.ProfileCubit>(
        () => _i17.ProfileCubit(gh<_i13.ProfileRepository>()));
    return this;
  }
}

class _$FirebaseModule extends _i18.FirebaseModule {}
