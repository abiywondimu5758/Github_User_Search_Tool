import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search_tool/user/user.dart';
import 'package:http/http.dart' as http;

void main() {
  final UserRepository userRepository = UserRepository(
    dataProvider: UserDataProvider(
      httpClient: http.Client(),
    ),
  );
  runApp(
    MyApp(userRepository: userRepository),
  );
}

class MyApp extends StatelessWidget {
  final UserRepository userRepository;

  const MyApp({required this.userRepository}) : assert(userRepository !=null);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value:this.userRepository,
      child: BlocProvider(
        create: (context) => UserBloc(userRepository: this.userRepository)
        ..add(UserLoad()),
        child:MaterialApp(
      title: 'Devfinder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
      home: MyHomePage(),
      onGenerateRoute: UserAppRoute.generateRoute,
        )
        )
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      body: UsersList(),
    );
  }
}

