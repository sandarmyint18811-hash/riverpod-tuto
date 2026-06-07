import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inter_day12/router.dart';
import 'package:inter_day12/utility/my_share.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MyShare.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Dummy Riverpod',
      routerConfig: router,
    );
  }
}