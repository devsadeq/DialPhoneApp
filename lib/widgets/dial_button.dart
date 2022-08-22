import 'package:flutter/material.dart';

class DialButton extends StatelessWidget {
  const DialButton(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.onTap})
      : super(key: key);
  final String title;
  final String subTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 34.0,
            ),
          ),
          Text(
            subTitle,
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 13,
            ),
          )
        ],
      ),
    );
  }
}
