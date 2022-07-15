import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search_tool/user/user.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository})
      : assert(userRepository != null),
        super(UserLoading());

  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is UserLoad) {
      yield UserLoading();
      try {
        final users = await userRepository.getUsers();
        yield UserLoadSuccess(users);
      } catch (_) {
        yield UserOperationFailure();
      }
    }
  }
}
