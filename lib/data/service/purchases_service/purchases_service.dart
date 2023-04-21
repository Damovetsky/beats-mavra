import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/exception.dart';
import 'models/offer_model.dart';
import 'models/purchase_model.dart';

abstract class PurchasesService {
  Future<void> createOffer(OfferModel offerModel);

  Future<List<OfferModel>> get(String beatId);

  Future<OfferModel> getOffer(String offerId);

  Future<void> updateOffer(OfferModel offerModel);

  Future<void> deleteOffer(String offerId);

  Future<void> createPurchase(PurchaseModel purchaseModel);
}

@Injectable(as: PurchasesService)
class PurchasesServiceImpl implements PurchasesService {
  final FirebaseFirestore firestoreInstance;
  late CollectionReference<Map<String, dynamic>> offersCollection;
  late CollectionReference<Map<String, dynamic>> purchasesCollection;

  PurchasesServiceImpl(this.firestoreInstance) {
    offersCollection = firestoreInstance.collection('offers');
    purchasesCollection = firestoreInstance.collection('purchases');
  }

  @override
  Future<List<OfferModel>> get(String beatId) {
    return offersCollection
        .where('beatId', isEqualTo: beatId)
        .get()
        .then(
          (value) =>
              value.docs.map((e) => OfferModel.fromJson(e.data())).toList(),
        )
        .onError(
          (FirebaseException error, stackTrace) => throw UnknownException(),
        );
  }

  @override
  Future<void> createOffer(OfferModel offerModel) async {
    return offersCollection
        .doc(offerModel.beatId)
        .set(offerModel.toJson())
        .then((value) => null)
        .onError(
          (FirebaseException error, stackTrace) => throw UnknownException(),
        );
  }

  @override
  Future<OfferModel> getOffer(String offerId) async {
    return offersCollection
        .doc(offerId)
        .get()
        .then(
          (value) => value.exists
              ? OfferModel.fromJson(value.data()!)
              : throw NotFoundException(),
        )
        .onError(
          (FirebaseException error, stackTrace) => throw UnknownException(),
        );
  }

  @override
  Future<void> updateOffer(OfferModel offerModel) async {
    return getOffer(offerModel.offerId).then(
      (value) => offersCollection
          .doc(offerModel.offerId)
          .set(offerModel.toJson(), SetOptions(merge: true))
          .then((value) => null)
          .onError(
            (FirebaseException error, stackTrace) => throw UnknownException(),
          ),
    );
  }

  @override
  Future<void> deleteOffer(String offerId) async {
    return offersCollection.doc(offerId).delete().then((value) => null).onError(
          (FirebaseException error, stackTrace) => throw UnknownException(),
        );
  }

  @override
  Future<void> createPurchase(PurchaseModel purchaseModel) async {
    return purchasesCollection
        .doc(purchaseModel.purchaseId)
        .set(purchaseModel.toJson())
        .then((value) => null)
        .onError(
          (FirebaseException error, stackTrace) => throw UnknownException(),
        );
  }
}
