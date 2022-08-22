import 'package:flutter/material.dart';

import '../../../data/dialer_data.dart';
import '../../../widgets/dial_button.dart';

class DialNumbers extends StatelessWidget {
  const DialNumbers({
    Key? key,
    required this.notifyParent,
  }) : super(key: key);
  final Function notifyParent;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: dialNumbers.length,
      padding: const EdgeInsets.symmetric(horizontal: 0),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => DialButton(
        title: dialNumbers[index].first,
        subTitle: dialNumbers[index].last,
        onTap: () => notifyParent(dialNumbers[index].first),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 25,
        mainAxisSpacing: 0,
        childAspectRatio: 1.2,
      ),
    );
  }
}
