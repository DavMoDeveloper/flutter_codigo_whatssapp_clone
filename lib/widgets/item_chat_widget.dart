import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatssapp_clone/data/data_dummy.dart';
import 'package:flutter_codigo_whatssapp_clone/models/chat_model.dart';
import 'package:flutter_codigo_whatssapp_clone/pages/chat_detail_page.dart';

class ItemChatWidget extends StatelessWidget {
  
  ChatModel chat;
  ItemChatWidget({required this.chat});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: ListTile(
        onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetailPage()));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 26,
          backgroundImage: NetworkImage(
            chat.avatarURL,
          ),
        ),
        title: Text(
          chat.userName,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          chat.isTyping == true ? "Typing... " : chat.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.0,
            color: chat.isTyping == true ? Color(0xff01C851) : Colors.black45,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chat.time,
              style: TextStyle(
                fontSize: 12.0,
                color: chat.countMessage > 0 ? Color(0xff01C851) : Colors.black45,
              ),
            ),
            chat.countMessage > 0 ? Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: Color(0xff01C851),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                chat.countMessage.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ) : SizedBox(),
          ],
        ),
      ),
    );
  }
}