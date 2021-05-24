import 'package:flutter/cupertino.dart';
import 'screens/chat_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  static const String _title = "iChat Demo Chat";
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: _title,
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: ChatScreen(),
    );
  }
}
