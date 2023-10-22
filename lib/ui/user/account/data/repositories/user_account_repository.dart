// ignore_for_file: avoid_catches_without_on_clauses

import 'package:time_slot/ui/user/account/data/models/store_model.dart';
import 'package:time_slot/utils/tools/file_importers.dart';

class UserAccountRepository {
  UserAccountRepository(this.instance);
  FirebaseFirestore instance;

  Future<MyResponse> addStore(String title, UserModel user) async {
    final StoreModel store = StoreModel(
        storeDocId: '',
        id: '',
        name: title,
        createdAt: DateTime.now(),
        owner: StoreOwnerModel(
            ownerId: user.uid, email: user.email, fcmToken: user.fcmToken));
    final MyResponse myResponse = MyResponse();
    try {
      final DocumentReference doc =
          await instance.collection('stores').add(store.toJson());
      await doc.update({'storeDocId': doc.id});
      user.markets.add(doc.id);
      await getIt<AdminRepository>().updateUser(user);
    } catch (e) {
      myResponse.message = e.toString();
    }
    return myResponse;
  }

  Future<MyResponse> addBankingCard(BankingCardModel card) async {
    final MyResponse myResponse = MyResponse();
    try {
      await instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({'card': card.toJson()});
      myResponse.statusCode = 200;
    } catch (e) {
      myResponse.message = e.toString();
    }
    return myResponse;
  }
}
