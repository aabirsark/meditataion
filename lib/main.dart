import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation/consts.dart';
import 'package:meditation/views/login.page.dart';

void main() {
  runApp(const MedidtateApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
}

class MedidtateApp extends StatelessWidget {
  const MedidtateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.black)),
          fontFamily: GoogleFonts.nunitoSans().fontFamily),
      home: const LoginPage(),
    );
  }
}
