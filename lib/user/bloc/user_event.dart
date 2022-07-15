// import 'dart:html';

import 'package:equatable/equatable.dart';
// import 'package:github_user_search_tool/user/user.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class UserLoad extends UserEvent {
  const UserLoad();

  @override
  List<Object> get props => [];
}
