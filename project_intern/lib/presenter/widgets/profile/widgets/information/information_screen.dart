import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_intern/common/config/image_constants.dart';
import 'package:project_intern/presenter/model/usermodel.dart';
import 'package:project_intern/presenter/widgets/profile/cubit/profile_cubit.dart';
import 'package:project_intern/presenter/widgets/profile/widgets/information/avatar.dart';
import 'package:project_intern/presenter/widgets/profile/widgets/information/cardinformation.dart';

class InformationScreen extends StatelessWidget {
  InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocProvider<ProfileCubit>(
        create: (context) => ProfileCubit(),
        child: Row(
          children: [
            Expanded(
              child: Avatar(),
              flex: 1,
            ),
            Expanded(
              child: CardInformation(),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
