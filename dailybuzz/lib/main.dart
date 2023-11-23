import 'package:dailybuzz/UI/HomePage.dart';
import 'package:dailybuzz/UI/NewsViewPage.dart';
import 'package:dailybuzz/UI/loginPage.dart';
import 'package:dailybuzz/bloc/mainBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainBloc>(create: (context) => MainBloc()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'News Reader App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
            useMaterial3: true,
          ),
          home: const LoginPage()),
    );
  }
}
