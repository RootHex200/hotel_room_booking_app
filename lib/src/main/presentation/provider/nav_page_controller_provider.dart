
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navPageControllerProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});