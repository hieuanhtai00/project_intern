import 'package:flutter/material.dart';
import 'package:project_intern/common/config/image_constants.dart';
import 'package:project_intern/common/data_test/user_infor_test.dart';
import 'package:project_intern/presenter/model/usermodel.dart';
import 'package:project_intern/presenter/widgets/profile/cubit/profile_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_intern/presenter/widgets/profile/widgets/information/information_screen.dart';
import 'package:project_intern/presenter/widgets/profile/widgets/menus/menus_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: InformationScreen(),
            flex: 2,
          ),
          Expanded(
            child: Menus(),
            flex: 7,
          ),
        ],
      ),
    );
  }
}
