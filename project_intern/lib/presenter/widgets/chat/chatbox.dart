import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_intern/common/data_test/chat_test.dart';
import 'package:project_intern/presenter/model/chatmodel.dart';
import 'package:project_intern/presenter/widgets/chat/cubit/chat_cubit.dart';

class ChatBox extends StatelessWidget {
  ChatBox();
  ScrollController scrollController = ScrollController();
  TextEditingController controller = TextEditingController(text: '');
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: BlocBuilder<ChatCubit, ChatModel>(
            builder: (context, state) {
              return ListView.builder(
                dragStartBehavior: DragStartBehavior.down,
                scrollDirection: Axis.vertical,
                itemCount: chats.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 10, bottom: 50),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.only(
                        left: 14, right: 14, top: 10, bottom: 10),
                    child: Align(
                      alignment: (chats[index].type == "receiver"
                          ? Alignment.topLeft
                          : Alignment.topRight),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: (chats[index].type == "receiver"
                              ? Colors.grey.shade200
                              : Colors.blue),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Text(
                          chats[index].content,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
            height: 60,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Write message...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: InputBorder.none),
                    controller: controller,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                FloatingActionButton(
                  onPressed: () {
                    print(controller.text);
                    context.read<ChatCubit>().send(controller.text);
                    controller.clear();
                  },
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 18,
                  ),
                  backgroundColor: Colors.black,
                  elevation: 0,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
