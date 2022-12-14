import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageDialog extends StatelessWidget {
  final String title;
  final Widget content;

  const MessageDialog({
    super.key,
    required this.content,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
      children: [
        SizedBox(
          width: 410,
          height: 170,
          child: Column(
            children: [content],
          ),
        )
      ],
    );
  }
}
