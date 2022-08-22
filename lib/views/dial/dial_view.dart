import 'package:flutter/material.dart';

import 'widgets/body.dart';

class DialView extends StatelessWidget {
  const DialView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
