import 'package:injectable/injectable.dart';

import '../../domain/beats/repository/beats_repository.dart';

@LazySingleton(as: BeatsRepository)
class BeatsRepositoryImpl extends BeatsRepository {}
