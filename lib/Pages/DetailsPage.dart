import 'package:flutter/material.dart';
import 'package:foods/Widgets/myTitle.dart';

class DetailsPage extends StatefulWidget {
  //const DetailsPage({Key? key, required this.title}) : super(key: key);
  final String title;

DetailsPage(this.title);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            myTitle(title: widget.title, fontSize: 25),
            Container()
          ],
        ),
      ),
    );
  }
}
