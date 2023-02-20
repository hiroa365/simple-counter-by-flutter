import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simplecounterbyflutter/ui/socind_page/second_page_view_model.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({
    super.key,
    required this.title,
    required this.navigateTo,
  }) ;

  final String title;
  final ValueChanged<String> navigateTo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(secondPageViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
                onPressed: () => navigateTo('/'),
                child: const Text('top page')),
          ],
        ),
      ),
    );
  }
}
