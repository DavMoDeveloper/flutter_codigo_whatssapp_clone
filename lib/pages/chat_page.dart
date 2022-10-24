import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatssapp_clone/data/data_dummy.dart';
import 'package:flutter_codigo_whatssapp_clone/widgets/item_chat_widget.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ItemChatWidget(chat:chats[index]);
      },
    );
  }
}
