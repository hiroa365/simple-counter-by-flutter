import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:simplecounterbyflutter/di/view_model_providers.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({
    super.key,
    required title,
    required navigateTo,
  })  : _title = title,
        _navigateTo = navigateTo;

  final String _title;
  final ValueChanged<String> _navigateTo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(secondPageNotifierProvider);
    final notifier = ref.read(secondPageNotifierProvider.notifier);

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
                onPressed: () => _navigateTo('/'),
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
