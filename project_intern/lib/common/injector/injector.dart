import 'package:get_it/get_it.dart';
import 'package:project_intern/presenter/widgets/profile/cubit/profile_cubit.dart';

class Injector {
  GetIt getIt = GetIt.instance;

  void configBloc() {
    getIt.registerSingleton<ProfileCubit>(ProfileCubit());
  }
}
