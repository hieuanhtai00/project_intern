import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_intern/presenter/model/usermodel.dart';
import 'package:project_intern/presenter/widgets/profile/cubit/profile_cubit.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, UserModel>(
      bloc: ProfileCubit(),
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            print(state.avatar);
          },
          child: ListTile(
            title: Text(
              state.name,
              style: TextStyle(fontSize: 24),
            ),
            subtitle: Text(state.phone),
          ),
        );
      },
    );
  }
}
