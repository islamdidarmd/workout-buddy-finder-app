import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MatchFoundDialog extends StatelessWidget {
  const MatchFoundDialog({
    Key? key,
    required this.onOpenMessaging,
  }) : super(key: key);

  final void Function() onOpenMessaging;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Buddy Found!'),
      content:
          Text('It seems that you both can workout together. Want to say Hi?'),
      actions: [
        TextButton(onPressed: context.pop, child: Text('Later')),
        ElevatedButton(
            onPressed: () {
              context.pop();
              onOpenMessaging();
            },
            child: Text('Say Hi'),
        ),
      ],
    );
  }
}
