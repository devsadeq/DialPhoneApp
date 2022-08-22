import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../contacts/contacts_view.dart';

class Footer extends StatelessWidget {
  final Function notifyParent;

  const Footer({Key? key, required this.notifyParent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactsView(),
              ),
            ),
            icon: Icon(
              CupertinoIcons.person_2,
              color: Theme.of(context).colorScheme.secondary,
              size: 34.0,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Theme.of(context).accentColor,
              fixedSize: const Size(85, 85),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Icon(
              CupertinoIcons.phone_fill,
              size: 34.0,
            ),
          ),
          IconButton(
            onPressed: () => notifyParent(),
            icon: Icon(
              CupertinoIcons.delete_left,
              color: Theme.of(context).colorScheme.secondary,
              size: 34.0,
            ),
          ),
        ],
      ),
    );
  }
}
