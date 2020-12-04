import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';





class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;




  Future onSelectNotification(String payload) async {
    showDialog(
      context: context,
      builder: (_) {
        return new AlertDialog(
          title: Text("Notification Clicked"),
          content: Text("Opened From Notification!"),
        );
      },
    );
  }



  @override
  initState() {
    super.initState();
    var initializationSettingsAndroid = new AndroidInitializationSettings('@mipmap/ic_launcher');

    var initializationSettingsIOS = new IOSInitializationSettings();

    var initializationSettings = new InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();

    flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onSelectNotification: onSelectNotification
    );

  }




  Future _showNotification() async {

    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
      'NewApp',
      'Flutter App',
      'Learn And Run Apps',
      importance: Importance.max,
      priority: Priority.high,
    );

    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();

    var platformChannelSpecifics = new NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      'New Notification!',
      'Recieved From Flutter_new App',
      platformChannelSpecifics,
      payload: 'Default_Sound',
    );
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Notifications'),
        centerTitle: true,
      ),
      body:
      Center(
        child:
        RaisedButton(
          onPressed: _showNotification,
          child: new Text('Show Notification'),
        ),
      ),
    );
  }
}







