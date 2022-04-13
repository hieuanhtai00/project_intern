import 'package:flutter/material.dart';
import 'package:project_intern/common/config/image_constants.dart';
import 'package:project_intern/common/data_test/user_infor_test.dart';
import 'package:project_intern/presenter/widgets/chat/chat_screen.dart';

class ParentScreen extends StatelessWidget {
  ParentScreen({Key? key}) : super(key: key);

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return Card(
          child: ListTile(
            leading: Image.asset(ImageConstant.aboutme),
            title: Text(userData[i]['name'] as String),
            selectedColor: Colors.grey[400],
            style: ListTileStyle.drawer,
            trailing: Image.asset(
              ImageConstant.chat,
              width: 30,
              height: 30,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatScreen(i: i)));
            },
          ),
          elevation: 10,
          color: Colors.white,
        );
      },
      itemCount: userData.length,
    );
  }
}
