import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatssapp_clone/data/data_dummy.dart';
import 'package:flutter_codigo_whatssapp_clone/models/chat_message_model.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  String message = "";
  
  // The controller for the text field
  final TextEditingController _controller = TextEditingController();

  // This function is triggered when the clear buttion is pressed
  void _clearTextField() {
    chatsMessageList.add(ChatMessageModel(messageContent: message, messageType: "me"));
    FocusManager.instance.primaryFocus?.unfocus();
    // Clear everything in the text field
    _controller.clear();
    // Call setState to update the UI
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 22,
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white10,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ximena Lopez",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    "Last seen today 2:20 pm",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Stack(
        children: [
          //fondo
          Container(
            color: Colors.black.withOpacity(0.09),
          ),
          //Listado de mensajes
          ListView.builder(
            itemCount: chatsMessageList.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: chatsMessageList[index].messageType == "me" ? Alignment.topRight : Alignment.bottomLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 6.0,
                  ),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 6.0),
                  decoration: BoxDecoration(
                      color: chatsMessageList[index].messageType == "me" ? Color(0xffE3FFC4) : Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(14.0),
                          bottomRight: Radius.circular(14.0),
                          topRight: chatsMessageList[index].messageType == "me" ? Radius.circular(0) : Radius.circular(14.0),
                          topLeft: chatsMessageList[index].messageType == "me" ? Radius.circular(14.0) : Radius.circular(0)
                          ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          offset: const Offset(4, 4),
                          blurRadius: 10.0,
                        )
                      ]),
                  child: Text(
                    chatsMessageList[index].messageContent,
                  ),
                ),
              );
            },
          ),
          //input del nuevo mensaje
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 8.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type message",
                        hintStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black38,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.sentiment_satisfied_alt,
                          size: 30,
                          color: Colors.black45,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_file,
                                size: 30,
                                color: Colors.black45,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                size: 30,
                                color: Colors.black45,
                              ),
                            ),
                            const SizedBox(
                              width: 6.0,
                            )
                          ],
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      controller: _controller,
                      onChanged: (value) {
                        message = value;
                        setState(() {
                          
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  GestureDetector(
                    onTap: () => _clearTextField(), 
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff008878),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
