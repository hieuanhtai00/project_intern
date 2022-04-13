import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project_intern/common/config/image_constants.dart';
import 'package:project_intern/presenter/widgets/contact/contact_screen.dart';
import 'package:project_intern/presenter/widgets/drawer/drawer_widget.dart';
import 'package:project_intern/presenter/widgets/home/home_screen.dart';
import 'package:project_intern/presenter/widgets/parent_screen/parent_screen.dart';
import 'package:project_intern/presenter/widgets/profile/profile_screen.dart';
import 'package:iconsax/iconsax.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  List<Widget> widgets = [
    HomeScreen(),
    ParentScreen(),
    ContactScreen(),
    ProfileScreen()
  ];
  List<Text> appBarTitles = [
    Text('News Covid in VietNam'),
    Text('Chat'),
    Text('Video call'),
    Text('Profile'),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 30,
        title: appBarTitles[index],
        centerTitle: true,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Colors.white,
              Colors.grey,
              Colors.black,
              Colors.black,
              Colors.white,
              Colors.grey,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Colors.black),
          ),
        ],
        leading: Leading(),
      ),
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.upload,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: widgets[index],
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Widget bottomNavigationBar() => CurvedNavigationBar(
        items: [
          SizedBox(
            child: Image.asset(
              ImageConstant.news,
            ),
            height: 30,
            width: 30,
          ),
          SizedBox(
            child: Image.asset(
              ImageConstant.chat,
            ),
            height: 30,
            width: 30,
          ),
          SizedBox(
            child: Image.asset(
              ImageConstant.videocall,
            ),
            height: 30,
            width: 30,
          ),
          SizedBox(
            child: Image.asset(
              ImageConstant.aboutme,
            ),
            height: 30,
            width: 30,
          ),
        ],
        height: 50,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(
            () {
              this.index = index;
            },
          );
        },
        animationDuration: Duration(milliseconds: 600),
      );
}

class Leading extends StatelessWidget {
  const Leading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: Icon(
        Icons.menu,
        color: Colors.black,
      ),
    );
  }
}
