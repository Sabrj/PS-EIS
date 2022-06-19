import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class FireStoreDataBase {
  List codesList = [];
  final CollectionReference collectionRef =
      FirebaseFirestore.instance.collection("Codes");


 Future getData() async {
    try {
      //to get data from a single/particular document alone.
      // var temp = await collectionRef.doc("Eop4Vq7nGXe4Rg4M0Sa4").get();

      // to get data from all documents sequentially
      await collectionRef.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          codesList.add(result.data());
        }
      });

      return codesList;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }


  Future<void> addCode(scanvalue) async {
    await printDocID();
    //creates a new doc with unique doc ID
    return collectionRef
        .add({
          'Name': scanvalue,
        })
        .then((value) => debugPrint("User Added"))
        .catchError((error) => debugPrint("Failed to add user: $error"));
  }

  printDocID() async {
    var querySnapshots = await collectionRef.get();
    for (var snapshot in querySnapshots.docs) {
      var documentID = snapshot.id;
      debugPrint(documentID);
    }
  }
}
