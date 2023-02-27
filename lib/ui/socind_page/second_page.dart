import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'second_page_provider.dart';


class SecondPage extends ConsumerWidget {
  const SecondPage({
    super.key,
    required title,
    required navigateToTop,
  })  : _title = title,
        _navigateToTop = navigateToTop;

  static const route = '/2';

  final String _title;
  final Function _navigateToTop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(secondPageNotifierProvider);
    final notifier = ref.watch(secondPageNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            OutlinedButton(
                onPressed: () => _navigateToTop(),
                child: const Text('top page')),
            OutlinedButton(
                onPressed: () => notifier.onClickReadMSButton(),
                child: const Text('read MS')),
          ],
        ),
      ),
    );
  }
}
