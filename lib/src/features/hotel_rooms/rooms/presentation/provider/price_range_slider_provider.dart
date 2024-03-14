

import 'package:flutter_riverpod/flutter_riverpod.dart';

final startPriceRangeProvider = StateProvider<double>((ref) {
  return 10;
});

final endPriceRangeProvider = StateProvider<double>((ref) {
  return 200;
});