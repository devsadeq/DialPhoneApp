import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/dialer_data.dart';
import 'app_bar.dart';
import 'contacts_header.dart';
import 'contacts_list.dart';
import 'footer.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  /*
  * I'm using this controller to hide the footer when user scrolling down.
  * */
  final ScrollController scrollController = ScrollController();
  bool scrollVisibility = true;

  @override
  void initState() {
    scrollController.addListener(() {
      scrollController.position.pixels > 0
          ? scrollVisibility = false
          : scrollVisibility = true;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Expanded(flex: 1, child: MyAppBar()),
              const Expanded(flex: 1, child: ContactsHeader()),
              Expanded(
                flex: 10,
                child: ContactsList(
                  contacts: contacts,
                  scrollController: scrollController,
                ),
              ),
            ],
          ),
        ),
        scrollVisibility ? const Footer() : Container()
      ],
    );
  }
}
