import 'package:injectable/injectable.dart';

import '../../domain/profile/repository/profile_repository.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {  
}
