import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kolkata_guide/MyApp.dart';
import 'package:overlay_support/overlay_support.dart';

BuildContext context;

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);

  bool result = await DataConnectionChecker().hasConnection;

  if (result == true) {
    print('YAY! Free cute dog pics!');
    runApp(MyApp());
  } else {
    print('No internet :( Reason:');
    runApp(NoInternet());
    print(DataConnectionChecker().lastTryResults);
  }
}

class NoInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kolkata Guide',
        home: Scaffold(
          body: Center(
            child: Wrap(children: 
            [
              Text("No internet connection, \n please the below button",
              style: TextStyle(
                fontSize: 18
              ),
              ),
            ]),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.restore),
            backgroundColor: Colors.black,
            onPressed: () {
              showOverlayNotification((context) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: SafeArea(
                    child: ListTile(
                      leading: SizedBox.fromSize(
                          size: const Size(40, 40),
                          child: ClipOval(
                              child: Container(
                            color: Colors.redAccent,
                          ))),
                      title: Text('No Internet Connection'),
                      subtitle: Text('Turn on the internet and restart app'),
                      trailing: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            OverlaySupportEntry.of(context).dismiss();
                          }),
                    ),
                  ),
                );
              }, duration: Duration(milliseconds: 4000));
            },
          ),
        ),
      ),
    );
  }
}
