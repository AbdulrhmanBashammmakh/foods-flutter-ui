import 'package:flutter/material.dart';
import 'package:foods/Pages/DetailsPage.dart';

class sectionCard extends StatelessWidget {
  const sectionCard({
    required this.ic,
    required this.tit,
    Key? key,
  }) : super(key: key);
  final String tit;
  final IconData ic;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage(tit)));
        },
        child: Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.black12, borderRadius: BorderRadius.circular(50)),
              child: Icon(
                ic,
                color: Colors.indigoAccent,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 3, left: 3),
              child: Text(tit),
            )
          ],
        ),
      ),
    );
  }
}
