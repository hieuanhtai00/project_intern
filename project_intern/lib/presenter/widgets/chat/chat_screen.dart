import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_intern/common/config/image_constants.dart';
import 'package:project_intern/common/data_test/user_infor_test.dart';
import 'package:project_intern/presenter/widgets/chat/chatbox.dart';
import 'package:project_intern/presenter/widgets/chat/cubit/chat_cubit.dart';

class ChatScreen extends StatelessWidget {
  int i;
  ChatScreen({required this.i});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatCubit>(
      create: (context) => ChatCubit(),
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            '${userData[i]['name'] as String}',
            textAlign: TextAlign.center,
          ),
          actions: [
            Image.asset(
              ImageConstant.videocall,
              fit: BoxFit.contain,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
          ],
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 16),
          padding: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: ChatBox(),
        ),
      ),
    );
  }
}
