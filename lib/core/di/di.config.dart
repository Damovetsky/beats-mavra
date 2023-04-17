// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beats/data/repository/auth_repository_impl.dart' as _i4;
import 'package:beats/data/repository/beats_repository_impl.dart' as _i7;
import 'package:beats/data/repository/profile_repository_impl.dart' as _i9;
import 'package:beats/data/repository/users_repository_impl.dart' as _i12;
import 'package:beats/data/service/auth_sevice/auth_service.dart' as _i5;
import 'package:beats/domain/auth/repository/auth_repository.dart' as _i3;
import 'package:beats/domain/beats/repository/beats_repository.dart' as _i6;
import 'package:beats/domain/profile/repository/profile_repository.dart' as _i8;
import 'package:beats/domain/users/repository/users_repository.dart' as _i11;
import 'package:beats/view/auth_page/cubit/cubit.dart' as _i13;
import 'package:beats/view/profile_page/cubit/cubit.dart' as _i14;
import 'package:beats/view/splash_page/cubit/cubit.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthRepository>(() => _i4.AuthRepositoryImpl());
    gh.factory<_i5.AuthService>(() => _i5.AuthServiceImpl());
    gh.lazySingleton<_i6.BeatsRepository>(() => _i7.BeatsRepositoryImpl());
    gh.lazySingleton<_i8.ProfileRepository>(() => _i9.ProfileRepositoryImpl());
    gh.factory<_i10.SplashCubit>(() => _i10.SplashCubit());
    gh.lazySingleton<_i11.UsersRepository>(() => _i12.UsersRepositoryImpl());
    gh.factory<_i13.AuthCubit>(() => _i13.AuthCubit(gh<_i3.AuthRepository>()));
    gh.factory<_i14.ProfileCubit>(
        () => _i14.ProfileCubit(gh<_i8.ProfileRepository>()));
    return this;
  }
}
