import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IceCreamView extends StatefulWidget {
  const IceCreamView({super.key});

  @override
  State<IceCreamView> createState() => _IceCreamViewState();
}

class _IceCreamViewState extends State<IceCreamView> {
  Map<String, dynamic>? decodedIcecreams;
  @override
  void initState() {
    super.initState();
    loadIcecreams();
  }

  Future<void> loadIcecreams() async {
    final rawIcecreams = await rootBundle.loadString('assets/icecreams.json');
    decodedIcecreams = jsonDecode(rawIcecreams);

    await Future.delayed(Duration(seconds: 1));

    print(decodedIcecreams);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Ice Creams",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          "We have something very tasty for you.",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Expanded(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (decodedIcecreams != null)
                const Text("IceCreams Loaded")
              else
                const Center(child: CircularProgressIndicator.adaptive())
            ],
          ),
        ))
      ]),
    );
  }
}
