import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search_tool/user/user.dart';

class UsersList extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devfinder'),
      ),
      body: BlocBuilder<UserBloc, UserState>(builder: (_, state) {
        if (state is UserOperationFailure) {
          return Text('Could not do user operation');
        }
        if (state is UserLoadSuccess) {
          final users = state.users;

          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (_, index) => Card(
              color: Color(0X1e2a47),
              child: Column(children: [
                Image(image: NetworkImage('${users[index].avatar_}') )
              ]) ,
            ),
          );
        }
        return Container(
              padding: EdgeInsets.fromLTRB(110, 220, 0, 0),
              child: Column(
                children: [
                  CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                  Text(
                    "Loading",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  )
                ],
              ));
      }),
    );
  }
}
