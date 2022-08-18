import 'package:flutter/material.dart';
import 'package:foods/Widgets/ListFood.dart';
import '../Widgets/mySearchcon.dart';
import '../Widgets/myTitle.dart';
import '../Widgets/sectionCard.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

List icons = [
  Icons.ac_unit,
  Icons.access_alarm,
  Icons.wallet_giftcard,
  Icons.dark_mode_rounded,
  Icons.dark_mode_rounded
];
List titles = ["abd", "dfw", "fwefw", "wwwee", "rfr"];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    myTitle(title: "frist ",fontSize: 25,),
                 mySearchcon(),
                Container(
                  height: MediaQuery.of(context).size.height*.15,
                    child: ListView.builder(
                     scrollDirection: Axis.horizontal,
                      itemCount: titles.length,
                        itemBuilder: (context, index) {
                    return sectionCard(ic: icons[index], tit: titles[index]);
                  }),
                    ),
                 Padding(
                       padding: EdgeInsets.all(10),
                    child: myTitle(title: "pouplar food", fontSize: 20)),
                          Container(height: 200, child: ListView.builder(scrollDirection: Axis.horizontal, itemCount: 4, itemBuilder: (context, index) {
                  return ss();
                },
              ),), Padding(padding: const EdgeInsets.all(8.0), child: Text("LISE", style: TextStyle(fontSize: 30),),), Container(
                  height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ss2();
                  },
                ),
                )
                ]),
                ),
                ),
              );
            }
}

//Text("",)

// Widget sectionCard(IconData ic , String tit) {
//   return cardWidget();
// }
Widget ss() {
  return Card(
    child: Column(
      children: [
        Container(
          height: 100,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(50),
            image:
                const DecorationImage(image: AssetImage('assets/images/3.png')),
          ),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "data",
                  style: TextStyle(fontSize: 24),
                ),
                Row(
                  children: [
                    Text("data"),
                    Row(
                      children: [
                        Text("00000"),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "50 Y.R",
                          style: TextStyle(fontSize: 30, color: Colors.pink),
                        ),
                      ],
                    )
                  ],
                ),
                Text("data")
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget ss2() {
  return Column(children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage('assets/images/3.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
                child: Column(
              children: [Text("data"), Text("data"), Text("data")],
            )),
          ),
          SizedBox(
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                child: Text(
              "data",
              style: TextStyle(fontSize: 25),
            )),
          ),
        ],
      ),
    ),
    Divider(
      color: Colors.black,
    )
  ]);
}
