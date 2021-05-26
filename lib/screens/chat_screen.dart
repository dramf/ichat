import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class ChatScreen extends StatelessWidget {
  static const _baseCollection = 'chats/NJDDJGgMFXXTkfhVmS1P/messages';

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Chat'),
        trailing: CupertinoButton(
          child: const Text('add'),
          onPressed: () {
            FirebaseFirestore.instance
                .collection(_baseCollection)
                .add({'text': 'This was added by clicking the button!'});
          },
        ),
      ),
      child: StreamBuilder<QuerySnapshot>(
        stream:
            FirebaseFirestore.instance.collection(_baseCollection).snapshots(),
        builder: (ctx, streamSnapshot) {
          final docs = streamSnapshot.data!.docs;

          if (streamSnapshot.connectionState == ConnectionState.waiting) {
            return CupertinoActivityIndicator();
          }
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (ctx, index) => Container(
              padding: const EdgeInsets.all(8),
              child: Text(docs[index]['text']),
            ),
          );
        },
      ),
    );
  }
}
