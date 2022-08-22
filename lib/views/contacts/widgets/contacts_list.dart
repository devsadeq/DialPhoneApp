import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/dialer_data.dart';
import '../../../widgets/contact_item.dart';

class ContactsList extends StatelessWidget {
  const ContactsList(
      {Key? key, required this.contacts, required this.scrollController})
      : super(key: key);
  final List<String> contacts;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: contacts.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => ContactItem(
        name: randomsNames[index],
        phoneNumber: contacts[index],
        avatar: "https://i.pravatar.cc/300?img=$index",
      ),
    );
  }
}
