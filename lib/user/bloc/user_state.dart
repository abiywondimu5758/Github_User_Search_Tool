import 'package:equatable/equatable.dart';

// import '../models/user.dart';
import 'package:github_user_search_tool/user/user.dart';

class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserLoading extends UserState {}

class UserLoadSuccess extends UserState {
  final List<User> users;

  UserLoadSuccess([this.users = const []]);

  @override
  List<Object> get props => [users];
}
class UserOperationFailure extends UserState {}