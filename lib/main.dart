import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_lab/blocs/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:project_lab/views/components/bottom_navigation.dart';
import 'package:project_lab/views/firebase_home.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FirebaseApp app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(BlocProvider(
      create: (context) => BottomNavigationBloc(),
      child: BlocConsumer<BottomNavigationBloc, BottomNavigationState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: Scaffold(
                bottomNavigationBar:  BottomNavigationRoute(),
                body: pages().elementAt(state.indexPage),
              ),
            );
          },
          listener: (context, state) {})));
}

List<Widget> pages() {
  return <Widget>[
    FirebaseHome(),
    FirebaseHome(),
  ];
}

