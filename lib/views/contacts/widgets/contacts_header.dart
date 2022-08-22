import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsHeader extends StatelessWidget {
  const ContactsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Contacts", style: Theme.of(context).textTheme.headline5),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.square_split_2x2,
            size: 30,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.square_split_1x2,
            size: 30,
          ),
        ),
      ],
    );
  }
}
