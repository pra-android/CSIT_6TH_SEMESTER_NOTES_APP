import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');

    DarwinInitializationSettings darwinInitializationSettings =
        const DarwinInitializationSettings(
            requestAlertPermission: true,
            requestBadgePermission: true,
            defaultPresentSound: true);

    InitializationSettings initializationSettings = InitializationSettings(
        iOS: darwinInitializationSettings,
        android: androidInitializationSettings);

    /// now using the global instance of FlutterLocalNotificationsPlugin()
    /// Let's Initialize the  notification
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

/* 

Notifications have few things : id, title, body and payload, 
in this method the id is optional, however you're recommended to
provide id  for different notifications. 
 
*/
  static showNotification({
    int? id = 0,
    required String title,
    required String body,
    var payload,
  }) async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      'flutter-tut',
      'flutter tutorial',
      playSound: true,
      priority: Priority.max,
      importance: Importance.max,
    );

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
      presentAlert: true,
      presentSound: true,
      presentBanner: true,
      presentBadge: true,
    );

    NotificationDetails noti = NotificationDetails(
        iOS: darwinNotificationDetails, android: androidNotificationDetails);

    await flutterLocalNotificationsPlugin.show(0, title, body, noti,
        payload: payload);
  }
}
