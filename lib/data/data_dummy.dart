
import 'package:flutter_codigo_whatssapp_clone/models/chat_message_model.dart';
import 'package:flutter_codigo_whatssapp_clone/models/chat_model.dart';

List<ChatModel> chats = [
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    userName: "Ximena Lopez",
    message: "Ya he enviando el encargo por el courier",
    time: "10:20",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/4922971/pexels-photo-4922971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    userName: "Juan Carlos Lopez",
    message: "Acabo de llegar a la reunión, por favor envia eso",
    time: "12:40",
    countMessage: 3,
    isTyping: true,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    userName: "Karla Gonzales",
    message: "Flutter es genial!",
    time: "15:22",
    countMessage: 0,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/8422403/pexels-photo-8422403.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    userName: "Daniel Montes Arias",
    message: "Hola, cómo estas?",
    time: "11:22",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    userName: "Ximena Lopez",
    message: "Ya he enviando el encargo por el courier",
    time: "10:20",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/4922971/pexels-photo-4922971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    userName: "Juan Carlos Lopez",
    message: "Acabo de llegar a la reunión, por favor envia eso",
    time: "12:40",
    countMessage: 3,
    isTyping: true,
  ),
];

List<ChatMessageModel> chatsMessageList = [
  ChatMessageModel(
    messageContent: "Hola, Juan, cómo estas?",
    messageType: "other",
  ),
  ChatMessageModel(
    messageContent: "Holaa, estoy muy bien, ando aprendiendo Flutter?",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "Y tú qué haces?",
    messageType: "me",
  ),
  ChatMessageModel(
    messageContent: "Estoy revisando unas cosas",
    messageType: "other",
  ),
  ChatMessageModel(
    messageContent: "Creo que terminaré en un rato",
    messageType: "other",
  ),
];
