import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream/app/home_view.dart';
import 'package:flutter/material.dart';

//Stateless Widget

class myapp extends StatelessWidget {
  const myapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Casino",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          fontFamily: GoogleFonts.dmSans().fontFamily,
        ),
        home: const HomeView());
  }
}
