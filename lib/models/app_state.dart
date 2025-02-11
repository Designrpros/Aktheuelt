// lib/models/app_state.dart
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNextWord() {
    current = WordPair.random();
    notifyListeners();
  }
}