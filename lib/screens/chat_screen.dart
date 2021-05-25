import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class ChatScreen extends StatelessWidget {
  void _testFb() {
    FirebaseFirestore.instance
        .collection('chats/NJDDJGgMFXXTkfhVmS1P/messages')
        .snapshots()
        .listen((data) => data.docs.forEach((doc) => print(doc['text'])));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Chat'),
        trailing: CupertinoButton(
          child: const Text('Demo'),
          onPressed: _testFb,
        ),
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
