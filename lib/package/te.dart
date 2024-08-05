// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;

// Future<void> _scheduleWeeklyNotification() async {
//   tz.initializeTimeZones();
//   var androidPlatformChannelSpecifics = AndroidNotificationDetails(
//       'your channel id', 'your channel name', 'your channel description',
//       importance: Importance.max, priority: Priority.high, showWhen: false);
//   var iOSPlatformChannelSpecifics = IOSNotificationDetails();
//   var platformChannelSpecifics = NotificationDetails(
//       android: androidPlatformChannelSpecifics, iOS: iOSPlatformChannelSpecifics);

//   await flutterLocalNotificationsPlugin.zonedSchedule(
//     // 0,
//     'Weekly Notification',
//     'This is your scheduled weekly notification',
//     _nextInstanceOfThursdayNineAM(),
//     platformChannelSpecifics,
//     androidAllowWhileIdle: true,
//     uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
//     matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
//   );
// }

// tz.TZDateTime _nextInstanceOfThursdayNineAM() {
//   final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
//   tz.TZDateTime scheduledDate = tz.TZDateTime(tz.local, now.year, now.month, now.day, 9);
//   while (scheduledDate.weekday != DateTime.thursday) {
//     scheduledDate = scheduledDate.add(Duration(days: 1));
//   }
//   if (scheduledDate.isBefore(now)) {
//     scheduledDate = scheduledDate.add(Duration(days: 7));
//   }
//   return scheduledDate;
// }
