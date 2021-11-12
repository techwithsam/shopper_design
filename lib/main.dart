import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: TargetPlatform.iOS,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
