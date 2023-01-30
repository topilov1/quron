import 'package:flutter/material.dart';
import 'package:quron/utils/components/appbar.dart';

class SuraViwe extends StatelessWidget {
  const SuraViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: appbar(context, 'salom'),
      body: const Center(
        child: Text("salom"),
      ),
    );
  }
}
