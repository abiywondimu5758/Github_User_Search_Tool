import 'package:meta/meta.dart';
import 'package:github_user_search_tool/user/user.dart';

class UserRepository {
  final UserDataProvider dataProvider;

  UserRepository({required this.dataProvider}) : assert (dataProvider !=null );

  Future<List<User>> getUsers() async {
    return await dataProvider.getUsers();
  }
}
