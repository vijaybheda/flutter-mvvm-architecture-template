import 'package:flutter_mvvm_architecture_template/modules/auth/provider/auth_provider.dart';
import 'package:flutter_mvvm_architecture_template/modules/auth/repository/auth_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderList {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (context) => AuthProvider(AuthRepository())),
  ];
}
