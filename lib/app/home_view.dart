import 'package:flutter/material.dart';
import 'package:ice_cream/ice_cream/ice_cream_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: IceCreamView(),
      ),
    );
  }
}
