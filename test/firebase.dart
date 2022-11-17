import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class firebase {
  void createRecord(String name, String phone, String id) async {
    CollectionReference user = FirebaseFirestore.instance.collection('users');
    user.doc(id).set({'name': name, 'phone': phone});
    print("user added");
  }

  Future<List<String>> getData(String id) async {
    List<String> record = [];
    var collection = FirebaseFirestore.instance.collection('users');
    var docSnapshot = await collection.doc(id).get();
    Map<String, dynamic>? data = docSnapshot.data();
    if (data != null) {
      record.add(data['name']);
      record.add(data['phone']);
      print(record);
    }
    return record;
  }
}
