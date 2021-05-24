import 'package:flutter/cupertino.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: const Text('Chat'),
      ),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) => Container(
          padding: const EdgeInsets.all(8),
          child: Text('This Works!'),
        ),
      ),
    );
  }
}
