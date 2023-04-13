// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beats/data/repository/auth_repository_impl.dart' as _i4;
import 'package:beats/data/repository/beats_repository_impl.dart' as _i6;
import 'package:beats/data/repository/profile_repository_impl.dart' as _i8;
import 'package:beats/data/repository/users_repository_impl.dart' as _i11;
import 'package:beats/domain/auth/repository/auth_repository.dart' as _i3;
import 'package:beats/domain/beats/repository/beats_repository.dart' as _i5;
import 'package:beats/domain/profile/repository/profile_repository.dart' as _i7;
import 'package:beats/domain/users/repository/users_repository.dart' as _i10;
import 'package:beats/view/splash_screen/cubit/cubit.dart' as _i9;
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
    gh.lazySingleton<_i5.BeatsRepository>(() => _i6.BeatsRepositoryImpl());
    gh.lazySingleton<_i7.ProfileRepository>(() => _i8.ProfileRepositoryImpl());
    gh.factory<_i9.SplashCubit>(() => _i9.SplashCubit());
    gh.lazySingleton<_i10.UsersRepository>(() => _i11.UsersRepositoryImpl());
    return this;
  }
}
