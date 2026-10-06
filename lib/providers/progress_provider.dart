import 'package:flutter/material.dart';
import '../data/guide_data.dart';
import '../models/guide_item.dart';

class ProgressProvider extends ChangeNotifier {
  int _completedStages = 0;
  final List<GuideItem> _discoveredEggs = [];

  int get completedStages => _completedStages;
  int get discoveredEggs => _discoveredEggs.length;
  double get progress => _completedStages / stages.length;

  bool isCompleted(int index) => index < _completedStages;

  bool canComplete(int index) => index == _completedStages;

  bool isDiscovered(GuideItem item) => _discoveredEggs.contains(item);

  void completeStage(int index) {
    if (index < 0 || index >= stages.length || !canComplete(index)) return;
    _completedStages++;
    notifyListeners();
  }

  void restartFrom(int index) {
    if (index < 0 || index >= _completedStages) return;
    _completedStages = index;
    notifyListeners();
  }

  void toggleEasterEgg(GuideItem item) {
    if (!easterEggs.contains(item)) return;
    if (isDiscovered(item)) {
      _discoveredEggs.remove(item);
    } else {
      _discoveredEggs.add(item);
    }
    notifyListeners();
  }
}
