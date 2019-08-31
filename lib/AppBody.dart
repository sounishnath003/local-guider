import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Wrap(children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text.rich(
                    TextSpan(
                      text: "",
                      children: <TextSpan> [
                        TextSpan(
                          text: "Kolkata\n\n", 
                          style: TextStyle(fontSize: 38, letterSpacing: 1)
                          ),
                        TextSpan(
                          text: "Welcome", 
                          style: TextStyle(fontSize: 22)
                          ),
                      ]
                      ),
                      ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
