import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project_intern/common/data_test/chat_test.dart';
import 'package:project_intern/presenter/model/chatmodel.dart';

class ChatCubit extends Cubit<ChatModel> {
  ChatCubit() : super(ChatModel(content: '', type: ''));
  void send(String content) {
    chats.add(ChatModel(content: content, type: 'sender'));
    emit(ChatModel(content: content, type: 'sender'));
  }
}
