class ChatModel {
  String avatarURL;
  String userName;
  String message;
  String time;
  int countMessage;
  bool isTyping;

  ChatModel({
    required this.avatarURL,
    required this.userName,
    required this.message,
    required this.time,
    required this.countMessage,
    required this.isTyping,
  });
}
