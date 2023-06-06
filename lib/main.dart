import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/User.dart';

// final nameProvider = Provider<String>((ref) => "Ali Raza");
// final nameProvider = StateProvider<String?>((ref) => null);

final userProvider = StateNotifierProvider<UserNotifier, User>(
  (ref) => UserNotifier(),
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  void onSubmit(WidgetRef ref, String value) {
    // ref.read(nameProvider.notifier).update((state) => value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // if the name nameProvider is not null then it will return the name
    // final name = ref.watch(nameProvider) ?? '';

    final user = ref.watch(userProvider);
    return Scaffold(
      body: Center(
        child: Column(children: [
          TextField(
            onSubmitted: (value) {
              onSubmit(ref, value);
            },
          ),
          const SizedBox(height: 20),
          Text(user.name),
        ]),
      ),
    );
  }
}
