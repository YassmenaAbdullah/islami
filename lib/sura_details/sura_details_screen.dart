import 'package:flutter/material.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura-details';

  @override
  Widget build(BuildContext context) {
    // Receive parameters
    // down casting convert from ptr of type Object to pointer of type suraDetailsScreen
    SuraDetailsArguments arguments =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailsArguments;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/main_background.png'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            arguments.name,
          ),
        ),
      ),
    );
  }
}

// data class or model    ==    only contains data

class SuraDetailsArguments {
  String name;
  int index;

  SuraDetailsArguments({required this.name, required this.index});
}
