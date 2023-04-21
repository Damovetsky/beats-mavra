// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:beats/data/converters/beats/beat_entity_to_beat_model_converter.dart'
    as _i4;
import 'package:beats/data/converters/beats/beat_model_to_beat_entity_converter.dart'
    as _i6;
import 'package:beats/data/converters/users/private_user_model_to_private_user_entity_converter%20copy.dart'
    as _i12;
import 'package:beats/data/converters/users/public_user_model_to_public_user_entity_converter.dart'
    as _i13;
import 'package:beats/data/module/firebase_module.dart' as _i41;
import 'package:beats/data/repository/auth_repository_impl.dart' as _i24;
import 'package:beats/data/repository/beats_repository_impl.dart' as _i26;
import 'package:beats/data/repository/files_repository_impl.dart' as _i28;
import 'package:beats/data/repository/profile_repository_impl.dart' as _i31;
import 'package:beats/data/repository/purchases_repository_impl.dart' as _i33;
import 'package:beats/data/repository/users_repository_impl.dart' as _i22;
import 'package:beats/data/service/auth_service/auth_service.dart' as _i17;
import 'package:beats/data/service/auth_service/exceptions.dart' as _i3;
import 'package:beats/data/service/beats_service/beats_service.dart' as _i18;
import 'package:beats/data/service/beats_service/exceptions.dart' as _i7;
import 'package:beats/data/service/files_service/files_service.dart' as _i19;
import 'package:beats/data/service/purchases_service/purchases_service.dart'
    as _i14;
import 'package:beats/data/service/users_service/exceptions.dart' as _i16;
import 'package:beats/data/service/users_service/users_service.dart' as _i20;
import 'package:beats/domain/auth/repository/auth_repository.dart' as _i23;
import 'package:beats/domain/beats/repository/beats_repository.dart' as _i25;
import 'package:beats/domain/files/files_repository.dart' as _i27;
import 'package:beats/domain/profile/repository/profile_repository.dart'
    as _i30;
import 'package:beats/domain/purchases/repository/purchases_repository.dart'
    as _i32;
import 'package:beats/domain/users/repository/users_repository.dart' as _i21;
import 'package:beats/view/auth_sheet/cubit/cubit.dart' as _i35;
import 'package:beats/view/beat_sheet/cubit/cubit.dart' as _i38;
import 'package:beats/view/player_sheet/cubit/cubit.dart' as _i29;
import 'package:beats/view/profile_page/beat_list_page/cubit/cubit.dart' as _i5;
import 'package:beats/view/profile_page/cubit/cubit.dart' as _i39;
import 'package:beats/view/purchase_sheet/cubit/cubit.dart' as _i40;
import 'package:beats/view/search_page/cubit/cubit.dart' as _i34;
import 'package:beats/view/splash_page/cubit/cubit.dart' as _i15;
import 'package:beats/view/widget/beat_card/cubit/cubit.dart' as _i36;
import 'package:beats/view/widget/beat_card_list/cubit/cubit.dart' as _i37;
import 'package:cloud_firestore/cloud_firestore.dart' as _i10;
import 'package:firebase_auth/firebase_auth.dart' as _i9;
import 'package:firebase_core/firebase_core.dart' as _i8;
import 'package:firebase_storage/firebase_storage.dart' as _i11;
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
    gh.factory<_i3.AuthExceptionFactory>(() => _i3.AuthExceptionFactory());
    gh.factory<_i4.BeatEntityToBeatModelConverter>(
        () => _i4.BeatEntityToBeatModelConverter());
    gh.factory<_i5.BeatListCubit>(() => _i5.BeatListCubit());
    gh.factory<_i6.BeatModelToBeatEntityConverter>(
        () => _i6.BeatModelToBeatEntityConverter());
    gh.factory<_i7.BeatsExceptionFactory>(() => _i7.BeatsExceptionFactory());
    await gh.factoryAsync<_i8.FirebaseApp>(
      () => firebaseModule.firebaseApp,
      preResolve: true,
    );
    gh.factory<_i9.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.factory<_i10.FirebaseFirestore>(() => firebaseModule.firebaseStore);
    gh.factory<_i11.FirebaseStorage>(() => firebaseModule.firebaseStorage);
    gh.factory<_i12.PrivateUserModelToPrivateUserEntityConverter>(
        () => _i12.PrivateUserModelToPrivateUserEntityConverter());
    gh.factory<_i13.PublicUserModelToPublicUserEntityConverter>(
        () => _i13.PublicUserModelToPublicUserEntityConverter());
    gh.factory<_i14.PurchasesService>(
        () => _i14.PurchasesServiceImpl(gh<_i10.FirebaseFirestore>()));
    gh.factory<_i15.SplashCubit>(() => _i15.SplashCubit());
    gh.factory<_i16.UsersExceptionFactory>(() => _i16.UsersExceptionFactory());
    gh.factory<_i17.AuthService>(() => _i17.AuthServiceImpl(
          gh<_i9.FirebaseAuth>(),
          gh<_i3.AuthExceptionFactory>(),
        ));
    gh.factory<_i18.BeatsService>(() => _i18.BeatsServiceImpl(
          gh<_i10.FirebaseFirestore>(),
          gh<_i7.BeatsExceptionFactory>(),
        ));
    gh.factory<_i19.FilesService>(() => _i19.FilesServiceImpl(
          gh<_i11.FirebaseStorage>(),
          gh<_i10.FirebaseFirestore>(),
        ));
    gh.factory<_i20.UserService>(() => _i20.UserServiceImpl(
          gh<_i10.FirebaseFirestore>(),
          gh<_i16.UsersExceptionFactory>(),
        ));
    gh.lazySingleton<_i21.UsersRepository>(() => _i22.UsersRepositoryImpl(
          gh<_i20.UserService>(),
          gh<_i13.PublicUserModelToPublicUserEntityConverter>(),
        ));
    gh.lazySingleton<_i23.AuthRepository>(() => _i24.AuthRepositoryImpl(
          gh<_i17.AuthService>(),
          gh<_i20.UserService>(),
        ));
    gh.lazySingleton<_i25.BeatsRepository>(() => _i26.BeatsRepositoryImpl(
          gh<_i18.BeatsService>(),
          gh<_i20.UserService>(),
          gh<_i19.FilesService>(),
          gh<_i6.BeatModelToBeatEntityConverter>(),
        ));
    gh.lazySingleton<_i27.FilesRepository>(
        () => _i28.FilesRepositoryImpl(gh<_i19.FilesService>()));
    gh.factory<_i29.PlayerCubit>(() => _i29.PlayerCubit(
          gh<_i25.BeatsRepository>(),
          gh<_i27.FilesRepository>(),
          gh<_i21.UsersRepository>(),
        ));
    gh.lazySingleton<_i30.ProfileRepository>(() => _i31.ProfileRepositoryImpl(
          gh<_i17.AuthService>(),
          gh<_i20.UserService>(),
          gh<_i12.PrivateUserModelToPrivateUserEntityConverter>(),
        ));
    gh.lazySingleton<_i32.PurchasesRepository>(
        () => _i33.PurchasesRepositoryImpl(
              gh<_i18.BeatsService>(),
              gh<_i20.UserService>(),
              gh<_i14.PurchasesService>(),
            ));
    gh.factory<_i34.SearchCubit>(
        () => _i34.SearchCubit(gh<_i25.BeatsRepository>()));
    gh.factory<_i35.AuthCubit>(() => _i35.AuthCubit(gh<_i23.AuthRepository>()));
    gh.factory<_i36.BeatCardCubit>(
        () => _i36.BeatCardCubit(gh<_i25.BeatsRepository>()));
    gh.factory<_i37.BeatCardListCubit>(
        () => _i37.BeatCardListCubit(gh<_i25.BeatsRepository>()));
    gh.factory<_i38.BeatSheetCubit>(() => _i38.BeatSheetCubit(
          gh<_i25.BeatsRepository>(),
          gh<_i27.FilesRepository>(),
          gh<_i23.AuthRepository>(),
          gh<_i32.PurchasesRepository>(),
        ));
    gh.factory<_i39.ProfileCubit>(() => _i39.ProfileCubit(
          gh<_i30.ProfileRepository>(),
          gh<_i21.UsersRepository>(),
        ));
    gh.factory<_i40.PurchaseCubit>(
        () => _i40.PurchaseCubit(gh<_i32.PurchasesRepository>()));
    return this;
  }
}

class _$FirebaseModule extends _i41.FirebaseModule {}
