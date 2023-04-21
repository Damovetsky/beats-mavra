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
import 'package:beats/data/converters/beats/filter_beats_entity_to_filter_beats_model_converter.dart'
    as _i8;
import 'package:beats/data/converters/users/private_user_model_to_private_user_entity_converter%20copy.dart'
    as _i13;
import 'package:beats/data/converters/users/public_user_model_to_public_user_entity_converter.dart'
    as _i14;
import 'package:beats/data/module/firebase_module.dart' as _i42;
import 'package:beats/data/repository/auth_repository_impl.dart' as _i25;
import 'package:beats/data/repository/beats_repository_impl.dart' as _i27;
import 'package:beats/data/repository/files_repository_impl.dart' as _i29;
import 'package:beats/data/repository/profile_repository_impl.dart' as _i32;
import 'package:beats/data/repository/purchases_repository_impl.dart' as _i34;
import 'package:beats/data/repository/users_repository_impl.dart' as _i23;
import 'package:beats/data/service/auth_service/auth_service.dart' as _i18;
import 'package:beats/data/service/auth_service/exceptions.dart' as _i3;
import 'package:beats/data/service/beats_service/beats_service.dart' as _i19;
import 'package:beats/data/service/beats_service/exceptions.dart' as _i7;
import 'package:beats/data/service/files_service/files_service.dart' as _i20;
import 'package:beats/data/service/purchases_service/purchases_service.dart'
    as _i15;
import 'package:beats/data/service/users_service/exceptions.dart' as _i17;
import 'package:beats/data/service/users_service/users_service.dart' as _i21;
import 'package:beats/domain/auth/repository/auth_repository.dart' as _i24;
import 'package:beats/domain/beats/repository/beats_repository.dart' as _i26;
import 'package:beats/domain/files/files_repository.dart' as _i28;
import 'package:beats/domain/profile/repository/profile_repository.dart'
    as _i31;
import 'package:beats/domain/purchases/repository/purchases_repository.dart'
    as _i33;
import 'package:beats/domain/users/repository/users_repository.dart' as _i22;
import 'package:beats/view/auth_sheet/cubit/cubit.dart' as _i36;
import 'package:beats/view/beat_sheet/cubit/cubit.dart' as _i39;
import 'package:beats/view/player_sheet/cubit/cubit.dart' as _i30;
import 'package:beats/view/profile_page/beat_list_page/cubit/cubit.dart' as _i5;
import 'package:beats/view/profile_page/cubit/cubit.dart' as _i40;
import 'package:beats/view/purchase_sheet/cubit/cubit.dart' as _i41;
import 'package:beats/view/search_page/cubit/cubit.dart' as _i35;
import 'package:beats/view/splash_page/cubit/cubit.dart' as _i16;
import 'package:beats/view/widget/beat_card/cubit/cubit.dart' as _i37;
import 'package:beats/view/widget/beat_card_list/cubit/cubit.dart' as _i38;
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
    gh.factory<_i3.AuthExceptionFactory>(() => _i3.AuthExceptionFactory());
    gh.factory<_i4.BeatEntityToBeatModelConverter>(
        () => _i4.BeatEntityToBeatModelConverter());
    gh.factory<_i5.BeatListCubit>(() => _i5.BeatListCubit());
    gh.factory<_i6.BeatModelToBeatEntityConverter>(
        () => _i6.BeatModelToBeatEntityConverter());
    gh.factory<_i7.BeatsExceptionFactory>(() => _i7.BeatsExceptionFactory());
    gh.factory<_i8.FilterBeatsEntityToFilterBeatsModelConverter>(
        () => _i8.FilterBeatsEntityToFilterBeatsModelConverter());
    await gh.factoryAsync<_i9.FirebaseApp>(
      () => firebaseModule.firebaseApp,
      preResolve: true,
    );
    gh.factory<_i10.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.factory<_i11.FirebaseFirestore>(() => firebaseModule.firebaseStore);
    gh.factory<_i12.FirebaseStorage>(() => firebaseModule.firebaseStorage);
    gh.factory<_i13.PrivateUserModelToPrivateUserEntityConverter>(
        () => _i13.PrivateUserModelToPrivateUserEntityConverter());
    gh.factory<_i14.PublicUserModelToPublicUserEntityConverter>(
        () => _i14.PublicUserModelToPublicUserEntityConverter());
    gh.factory<_i15.PurchasesService>(
        () => _i15.PurchasesServiceImpl(gh<_i11.FirebaseFirestore>()));
    gh.factory<_i16.SplashCubit>(() => _i16.SplashCubit());
    gh.factory<_i17.UsersExceptionFactory>(() => _i17.UsersExceptionFactory());
    gh.factory<_i18.AuthService>(() => _i18.AuthServiceImpl(
          gh<_i10.FirebaseAuth>(),
          gh<_i3.AuthExceptionFactory>(),
        ));
    gh.factory<_i19.BeatsService>(() => _i19.BeatsServiceImpl(
          gh<_i11.FirebaseFirestore>(),
          gh<_i7.BeatsExceptionFactory>(),
        ));
    gh.factory<_i20.FilesService>(() => _i20.FilesServiceImpl(
          gh<_i12.FirebaseStorage>(),
          gh<_i11.FirebaseFirestore>(),
        ));
    gh.factory<_i21.UserService>(() => _i21.UserServiceImpl(
          gh<_i11.FirebaseFirestore>(),
          gh<_i17.UsersExceptionFactory>(),
        ));
    gh.lazySingleton<_i22.UsersRepository>(() => _i23.UsersRepositoryImpl(
          gh<_i21.UserService>(),
          gh<_i14.PublicUserModelToPublicUserEntityConverter>(),
        ));
    gh.lazySingleton<_i24.AuthRepository>(() => _i25.AuthRepositoryImpl(
          gh<_i18.AuthService>(),
          gh<_i21.UserService>(),
        ));
    gh.lazySingleton<_i26.BeatsRepository>(() => _i27.BeatsRepositoryImpl(
          gh<_i19.BeatsService>(),
          gh<_i18.AuthService>(),
          gh<_i21.UserService>(),
          gh<_i20.FilesService>(),
          gh<_i6.BeatModelToBeatEntityConverter>(),
          gh<_i8.FilterBeatsEntityToFilterBeatsModelConverter>(),
        ));
    gh.lazySingleton<_i28.FilesRepository>(
        () => _i29.FilesRepositoryImpl(gh<_i20.FilesService>()));
    gh.factory<_i30.PlayerCubit>(() => _i30.PlayerCubit(
          gh<_i26.BeatsRepository>(),
          gh<_i28.FilesRepository>(),
          gh<_i22.UsersRepository>(),
        ));
    gh.lazySingleton<_i31.ProfileRepository>(() => _i32.ProfileRepositoryImpl(
          gh<_i18.AuthService>(),
          gh<_i21.UserService>(),
          gh<_i13.PrivateUserModelToPrivateUserEntityConverter>(),
        ));
    gh.lazySingleton<_i33.PurchasesRepository>(
        () => _i34.PurchasesRepositoryImpl(
              gh<_i19.BeatsService>(),
              gh<_i21.UserService>(),
              gh<_i15.PurchasesService>(),
            ));
    gh.factory<_i35.SearchCubit>(
        () => _i35.SearchCubit(gh<_i26.BeatsRepository>()));
    gh.factory<_i36.AuthCubit>(() => _i36.AuthCubit(gh<_i24.AuthRepository>()));
    gh.factory<_i37.BeatCardCubit>(
        () => _i37.BeatCardCubit(gh<_i26.BeatsRepository>()));
    gh.factory<_i38.BeatCardListCubit>(
        () => _i38.BeatCardListCubit(gh<_i26.BeatsRepository>()));
    gh.factory<_i39.BeatSheetCubit>(() => _i39.BeatSheetCubit(
          gh<_i26.BeatsRepository>(),
          gh<_i28.FilesRepository>(),
          gh<_i24.AuthRepository>(),
          gh<_i33.PurchasesRepository>(),
        ));
    gh.factory<_i40.ProfileCubit>(() => _i40.ProfileCubit(
          gh<_i31.ProfileRepository>(),
          gh<_i22.UsersRepository>(),
        ));
    gh.factory<_i41.PurchaseCubit>(
        () => _i41.PurchaseCubit(gh<_i33.PurchasesRepository>()));
    return this;
  }
}

class _$FirebaseModule extends _i42.FirebaseModule {}
