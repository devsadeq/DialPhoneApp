import 'package:flutter/material.dart';

import '../../../data/dialer_data.dart';

class Header extends StatelessWidget {
  final String currentNumber;

  const Header({Key? key, required this.currentNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentNumber,
            style: Theme.of(context).textTheme.headline2,
          ),
          const SizedBox(height: 5),
          TextButton.icon(
            onPressed: () {
              if (currentNumber.isNotEmpty) contacts.add(currentNumber);
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: currentNumber.isNotEmpty
                      ? const Text("The number has been successfully added.")
                      : const Text("Number is required!"),
                  backgroundColor: currentNumber.isNotEmpty
                      ? Theme.of(context).accentColor
                      : Theme.of(context).errorColor,
                ),
              );
            },
            style: TextButton.styleFrom(primary: Colors.grey),
            icon: Icon(
              Icons.add,
              color: Theme.of(context).accentColor,
              size: 20,
            ),
            label: Text(
              "Add to Contacts",
              style: TextStyle(color: Theme.of(context).accentColor),
            ),
          ),
        ],
      ),
    );
  }
}
