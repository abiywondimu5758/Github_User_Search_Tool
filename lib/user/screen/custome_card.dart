// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:github_user_search_tool/user/user.dart';

// class UserInfoCard extends StatefulWidget {
//   static const routeName = '/';
//   //Book book;
//   @override
//   _UserInfoCardContentState createState() => _UserInfoCardContentState();
// }

// class _UserInfoCardContentState extends State<UserInfoCard>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:BlocBuilder<UserBloc, UserState>(builder: (_,state){
//         if (state is UserOperationFailure) {
//           return Container(
//                 padding: EdgeInsets.fromLTRB(110, 220, 0, 0),
//                 child: Column(children: <Widget>[
//                   Icon(
//                     Icons.cached,
//                     color: Colors.cyan,
//                   ),
//                   Text(
//                     "Couldnot Load books",
//                     style: TextStyle(color: Colors.black),
//                   )
//                 ]));
//         }
//         if (state is UserLoadSuccess) {
//           final users = state.users;
//           return ListView.builder(itemBuilder: (BuildContext context, int index) {  },

//           );
//         }
//       },)
//      ,);
//   }
// }
