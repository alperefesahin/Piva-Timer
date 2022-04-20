import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as time_zone;

class NotificationApi {
  static const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('timer.png');

  static final notifications = FlutterLocalNotificationsPlugin();
  static final onNotifications = BehaviorSubject<String?>();
  static Future _notificationDetails() async {
    return const NotificationDetails(
        android: AndroidNotificationDetails(
          "channelId",
          "channelName",
          channelDescription: "channelDescription",
          importance: Importance.max,
        ),
        iOS: IOSNotificationDetails());
  }

  static Future init({bool initScheduled = false}) async {
    const iOS = IOSInitializationSettings();
    const android = AndroidInitializationSettings("@drawable/ic_stat_timer");
    const settings = InitializationSettings(android: android, iOS: iOS);

    const String timerPagePayload = "TimerPagePayload";

    await notifications.initialize(settings, onSelectNotification: (String? payload) async {
      onNotifications.add(timerPagePayload);
    });

    if (initScheduled) {
      time_zone.initializeTimeZones();
      final locationName = await FlutterNativeTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(locationName));
    }
  }

  static Future zonedScheduleNotification({
    int id = 0,
    required String? title,
    required String? body,
    String? payload,
    required int microSeconds,
  }) async =>
      await notifications.zonedSchedule(
        id,
        title,
        body,
        tz.TZDateTime.now(tz.local).add(Duration(microseconds: microSeconds, milliseconds: 500)),
        await _notificationDetails(),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      );
}
