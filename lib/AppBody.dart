import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text.rich(TextSpan(text: "", children: <TextSpan>[
                TextSpan(
                    text: "Kolkata\n",
                    style: TextStyle(fontSize: 38, letterSpacing: 3)),
                TextSpan(
                    text: "Welcome\n",
                    style: TextStyle(fontSize: 22, letterSpacing: 2))
              ])),
            ),
          ),
          MenuItems(context)
        ],
      ),
    );
  }
}

Widget MenuItems(BuildContext context) {
  List<String> menus = ["Tourists spots", "Police Help", "Administrative"];
  return Expanded(
    child: ListView.builder(
        itemCount: menus.length,
        itemBuilder: (BuildContext context, int index) {
          String item = menus[index];
          return Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width * 0.1,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {},
                child: Card(
                  color: Colors.amberAccent,
                  elevation: 2.0,
                  child: Padding(
                    padding: const EdgeInsets.all(34.0),
                    child: Text(
                      "$item",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
  );
}
