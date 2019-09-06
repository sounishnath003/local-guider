import 'package:flutter/material.dart';
import 'package:kolkata_guide/UnknownFacts/UnknownFacts.dart';

class UNknownFacts extends StatefulWidget {
  UNknownFacts({Key key}) : super(key: key);

  _UNknownFactsState createState() => _UNknownFactsState();
}

class _UNknownFactsState extends State<UNknownFacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text(" Kolkata Guide "),
          centerTitle: true,
          elevation: 0.0,
          actions: <Widget>[
            Icon(
              Icons.account_circle,
              color: Colors.redAccent,
              size: 34,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      body: UnknownFactsHome(),
    );
  }
}


class UnknownFactsHome extends StatefulWidget {
  UnknownFactsHome({Key key}) : super(key: key);

  _UnknownFactsHomeState createState() => _UnknownFactsHomeState();
}

class _UnknownFactsHomeState extends State<UnknownFactsHome> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: unknowFacts.length,
      itemBuilder: (BuildContext context, int index) {
        final facts = unknowFacts[index];
        return ExpansionTile(
          title: Text(facts.title),
          children: <Widget>[
            Container(
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(TextSpan(text: facts.desc)),
            )
            )
          ],
          );
      },
    );
  }
}