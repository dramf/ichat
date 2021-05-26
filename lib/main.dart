import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:ichat_app/screens/auth_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static const String _title = "iChat Demo Chat";
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
      future: _initialization,
      builder: (ctx, snapshot) {
        return CupertinoApp(
          title: _title,
          theme: const CupertinoThemeData(brightness: Brightness.light),
          home: snapshot.connectionState != ConnectionState.done
              ? CupertinoActivityIndicator()
              : AuthScreen(),
//              : ChatScreen(),
        );
      },
    );
  }
}
