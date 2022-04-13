import 'package:project_intern/presenter/model/usermodel.dart';
import 'package:project_intern/repository/repository.dart';

class UseCase {
  UseCase();
  Future<UserModel> getDataFirebase() async {
    return await Repository().getDataFirebase();
  }
}
