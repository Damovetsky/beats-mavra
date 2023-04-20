// import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../core/error/failure.dart';
// import '../../domain/purchases/repository/purchases_repository.dart';
// import '../service/beats_service/beats_service.dart';
//
// @LazySingleton(as: PurchasesRepository)
// class PurchasesRepositoryImpl extends PurchasesRepository {
//   final BeatsService beatsService;
//   final UsersService usersService;
//
//   PurchasesRepositoryImpl(this.beatsService, this.usersService)
//
//   @override
//   Future<Either<Failure, void>> buy(String buyerId, String beatId) async {
//     final beat = await beatsService.getBeat(beatId);
//
//   }
// }