// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:new_restuarent_app/main.dart';

// // ignore: camel_case_types
// class newFirebaseApi {
//   // Create an instance of the Firebase messaging
//   final _firebaseMessaging = FirebaseMessaging.instance;
//   // Function to initialize the Notification

//   Future<void> initNotifications() async {
//     // request permissions from the user (will prompt user)

//     await _firebaseMessaging.requestPermission();

//     // fetch the FON token for this device

//     final fONToken = await _firebaseMessaging.getToken();

//     print('Token : $fONToken');

//     initPushNotification();
//   }

//   // Function to hanndle received messages

//   void handleMessage(RemoteMessage? message) {
//     // if the message is null , do nothing

//     if (message == null) return;

//     // Navigate to the the notification page when user tap notification

//     navigatedKey.currentState?.pushNamed(
//       '/notificationpage',
//       arguments: message,
//     );
//   }

//   // Function to initialize foreground and background settings

//   Future initPushNotification() async {
//     // handle notification if the app was terminated and now opened
//     FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

//     // attach event listeners for when a notification opens the app

//     FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
//   }
// }
