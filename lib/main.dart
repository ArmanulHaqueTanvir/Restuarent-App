import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:new_restuarent_app/api/firebase_api.dart';
import 'package:new_restuarent_app/firebase_options.dart';
import 'package:new_restuarent_app/models/shop.dart';
import 'package:new_restuarent_app/pages/cartPage.dart';
import 'package:new_restuarent_app/pages/homePage.dart';
import 'package:new_restuarent_app/pages/introPage.dart';
import 'package:new_restuarent_app/pages/notificationsPage.dart';
import 'package:new_restuarent_app/pages/splashPage.dart';
import 'package:provider/provider.dart';

final navigatedKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await newFirebaseApi().initNotifications();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Stripe.publishableKey =
      "pk_test_51NnnCABqH5rualmA3f6KwydWIeEGQ4cPZupxWErcGqzVbDcwPhX3gDmkswIPUTIWBay3oABMAEc4f5sm9D87uLVg00yyUBcf4J";
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/introPage',
      navigatorKey: navigatedKey,
      routes: {
        '/introPage': (context) => const IntroPages(),
        '/HomePage': (context) => const HomePage(),
        '/cartPage': (context) => const CartPage(),
        '/notificationpage': (context) => const NotificationPage(),
      },
      home: const SplashScreen(),
    );
  }
}
