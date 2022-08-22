import 'package:flutter/cupertino.dart';

import '../../../data/dialer_data.dart';
import 'header.dart';
import 'footer.dart';
import 'numbers_pad.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  additionCallback(varNumber) {
    setState(() {
      currentNumber += varNumber;
    });
  }

  removeCallback() {
    setState(() {
      if (currentNumber.isNotEmpty) {
        currentNumber = currentNumber.substring(0, currentNumber.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Expanded(
            flex: 4,
            child: SizedBox(),
          ),
          Expanded(
            flex: 8,
            child: Header(currentNumber: currentNumber),
          ),
          Expanded(
            flex: 16,
            child: DialNumbers(notifyParent: additionCallback),
          ),
          Expanded(
            flex: 8,
            child: Footer(notifyParent: removeCallback),
          ),
        ],
      ),
    );
  }
}
