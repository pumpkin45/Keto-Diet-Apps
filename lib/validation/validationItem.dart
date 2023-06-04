// class ValidationItem {
//   final String value;
//   final String error;

//   ValidationItem(this.value, this.error);
// }

// class FireStoreService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   Future<bool> checkUser(String uid) async {
//     var doc = await _firestore.collection('users').doc(uid).get();
//     return doc.exists;
//   }

//   void createUser(UserModel userModel) async {
//     await _firestore.collection('users').doc(userModel.uid).set(
//           userModel.toMap(),
//         );
//   }

//   Future<bool> hiveExist(String hiveNumber) async {
//     var doc = await _firestore
//         .collection('hives')
//         .where(
//           'hiveNumber',
//           isEqualTo: hiveNumber,
//         )
//         .where(
//           'userID',
//           isEqualTo: _firebaseAuth.currentUser!.uid,
//         )
//         .get();

//     return doc.docs.isNotEmpty;
//   }

//   Future<void> addHiveData(HiveModel hiveModel) async {
//     await _firestore.collection('hives').doc().set(hiveModel.toMap());
//     var userRef = _firestore.collection('users').doc(hiveModel.userID);

//     var user = await userRef.get();

//     var hiveCount = int.parse(user.data()!['hiveCount']) + 1;

//     await userRef.update({
//       'hiveCount': '$hiveCount',
//     });
//   }

//   Future<DocumentSnapshot<Map<String, dynamic>>> getUserProfile(
//       String uuid) async {
//     return await _firestore.collection('users').doc(uuid).get();
//   }

//   Future<String> addHoneyData(HoneyModel honeyModel, String hiveNumber) async {
//     var data = await _firestore
//         .collection('hives')
//         .where(
//           'hiveNumber',
//           isEqualTo: hiveNumber,
//         )
//         .where(
//           'userID',
//           isEqualTo: _firebaseAuth.currentUser!.uid,
//         )
//         .get();
//     if (data.docs.isEmpty) {
//       return 'Document doesn\'t exist for $hiveNumber Hive Number';
//     }
//     var doc = data.docs.first;
//     var history = doc.data()['history'] as List;
//     history.add({
//       "date": honeyModel.createdAt!,
//       "amount": honeyModel.amountOfHoney,
//     });
//     var amount =
//         int.parse(doc['amountHoney']) + int.parse(honeyModel.amountOfHoney!);
//     await doc.reference.update(
//       {
//         "amountHoney": '$amount',
//         "history": history,
//       },
//     );
//     var userRef =
//         _firestore.collection('users').doc(_firebaseAuth.currentUser!.uid);

//     var user = await userRef.get();

//     var totalAmountOfHoney = int.parse(user.data()!['totalAmountOfHoney']) +
//         int.parse(honeyModel.amountOfHoney!);

//     await userRef.update({
//       'totalAmountOfHoney': '$totalAmountOfHoney',
//       // 'createdAt': honeyModel.createdAt,
//     });
//     return 'Success';
//   }

//   Stream<List<HiveModel>> fetchHives(String uuid) {
//     return _firestore
//         .collection('hives')
//         .where('userID', isEqualTo: uuid)
//         .snapshots()
//         .map((event) {
//       List<HiveModel> hives = [];
//       for (var element in event.docs) {
//         hives.add(HiveModel.fromMap(element.data()));
//       }

//       return hives;
//     });
//   }

//   Future<List<HiveModel>> fetchHivesFuture(String uuid) async {
//     List<HiveModel> hives = [];

//     var hiveRef = await _firestore
//         .collection('hives')
//         .where('userID', isEqualTo: uuid)
//         .get();

//     for (var element in hiveRef.docs) {
//       hives.add(HiveModel.fromMap(element.data()));
//     }

//     return hives;
//   }
// }