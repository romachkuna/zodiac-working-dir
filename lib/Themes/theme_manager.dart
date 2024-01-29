import 'package:flutter_riverpod/flutter_riverpod.dart';

class DarkModeNotifier extends StateNotifier<bool> {
  DarkModeNotifier() : super(false);

  void toggle() {
    print("changed");
    state = !state;
  }
}

final darkModeProvider =
    StateNotifierProvider<DarkModeNotifier, bool>((ref) => DarkModeNotifier());
