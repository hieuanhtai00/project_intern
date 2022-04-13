import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_intern/presenter/model/usermodel.dart';

class Repository {
  Repository();
  Future<UserModel> getDataFirebase() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentSnapshot<Map<String, dynamic>> response =
        await firestore.collection('develop').doc('profile').get();
    UserModel userModel = UserModel.fromMap(response.data()!);
    return userModel;
  }
}
