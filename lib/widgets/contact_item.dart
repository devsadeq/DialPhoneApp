import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem(
      {Key? key,
      required this.name,
      required this.phoneNumber,
      required this.avatar})
      : super(key: key);
  final String name;
  final String phoneNumber;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(avatar),
          radius: 30.0,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              name,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
            subtitle: Text(
              phoneNumber,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 16,
              ),
            ),
            visualDensity: const VisualDensity(vertical: 3),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.phone_fill,
                color: Theme.of(context).accentColor,
                size: 30.0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
