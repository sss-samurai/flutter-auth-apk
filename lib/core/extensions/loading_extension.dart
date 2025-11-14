import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/loading_provider.dart';

extension LoadingRef on WidgetRef {
  void showLoader() => read(loadingProvider.notifier).state = true;
  void hideLoader() => read(loadingProvider.notifier).state = false;
}
