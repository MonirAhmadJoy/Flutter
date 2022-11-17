import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'firebase.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  test("Testing Firebase Read and Write", () async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    List<String> record = ["Monir Ahmad", "01690073321"];

    firebase fire = firebase();
    fire.createRecord("Monir Ahmad", "01690073321", "5");
    Future<List<String>> result = fire.getData("5");
    List resultlist = await fire.getData("5");
    print(listEquals(resultlist, record));
    print(record);
    print(resultlist);
    expect(resultlist, record);
  });
}
