import 'package:flutter/material.dart';
import 'package:kolkata_guide/MenuPage.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                  left: 20,
                  top: 30,
                  child: CircleAvatar(
                    radius: 48,
                    backgroundColor: Colors.red[50],
                  )),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.redAccent,
                  ),
                ),
              ),
              _bannerText(),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          MenuItems()
        ],
      ),
    );
  }
}

Widget _bannerText() {
  return Padding(
    padding: const EdgeInsets.all(39.0),
    child: Align(
      alignment: Alignment.bottomLeft,
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
  );
}

class MenuItems extends StatelessWidget {
  const MenuItems({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> menus = ["Tourists spots", "Police Help", "Administrative"];
    return Expanded(
      child: Stack(
              children: [
                ListView.builder(
            itemCount: menus.length,
            itemBuilder: (BuildContext context, int index) {
              String item = menus[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return MenuPage(appbarText: item,);
                              }));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xffe53940),
                                    Color(0xffe53935),
                                    Color(0xffff4081),
                                  ],
                                  begin: Alignment(-3.0, 4.0),
                                  end: Alignment(1.0, -4.0),
                                )),
                            child: Center(
                              child: Text(
                                "$item",
                                style: TextStyle(fontSize: 23, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                ],
              );
            }),
            
            ],
      ),
    );
  }
}
