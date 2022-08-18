
import 'package:flutter/material.dart';

class mySearchcon extends StatelessWidget {
  const mySearchcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey)
      ),
      child: Padding(padding: const EdgeInsets.all(8.0 ), child:
      TextField(
        decoration: InputDecoration(
            hintText: "search your food here",
            suffixIcon: Icon(Icons.search_rounded),
            prefixIcon: Icon(Icons.fastfood_rounded)
        ),
      ),),
    );
  }
}