import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_intern/domain/usecase/usercase.dart';
import 'package:project_intern/presenter/model/usermodel.dart';

class ProfileCubit extends Cubit<UserModel> {
  ProfileCubit()
      : super(UserModel(
            name: 'No Name',
            avatar: '',
            birthday: '01/01/2001',
            phone: '0123456789')) {
    getDataFirebase();
  }
  Future<void> getDataFirebase() async {
    UserModel user = await UseCase().getDataFirebase();
    emit(user);
  }
}
