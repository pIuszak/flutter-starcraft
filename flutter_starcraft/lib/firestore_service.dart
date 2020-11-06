import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_starcraft/user.dart';


class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  //Get Entries
  Stream<List<User>> getEntries(){
    return _db
        .collection('Users')
        .snapshots()
        .map((snapshot) => snapshot.docs
        .map((doc) => User.fromJson(doc.data()))
        .toList());
  }

  //Upsert
  Future<void> setEntry(User entry){
    var options = SetOptions(merge:true);

    return _db
        .collection('Users')
        .doc(entry.name)
        .set(entry.toMap(),options);
  }

  //Delete
  Future<void> removeEntry(String name){
    return _db
        .collection('Users')
        .doc(name)
        .delete();
  }

}