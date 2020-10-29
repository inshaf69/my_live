import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/Screens/live/home.dart';
import 'package:flutter_auth/Screens/live/loginScreen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/grid_view/categories.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      // home: WelcomeScreen(),
      home: MyHomePage(),
      /////////////////
      // routes: <String, WidgetBuilder>{
      // '/HomeScreen': (BuildContext context) => HomePageLive()
      // },
      ///////////////////////
    );
  }
}
// ////////////////////////
// // class MainScreen extends StatefulWidget {
// //   @override
// //   _MainScreenState createState() => _MainScreenState();
// // }

// // class _MainScreenState extends State<MainScreen> {
// //   var loggedIn = false;
// //   @override
// //   void initState() {
// //     super.initState();
// //     loadSharedPref();
// //   }

// //   void loadSharedPref() async {
// //     final prefs = await SharedPreferences.getInstance();

// //     setState(() {
// //       loggedIn = prefs.getBool('login') ?? false;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     loadSharedPref();
// //     return loggedIn ? MyHomePage() : LoginScreen();
// //     // return loggedIn ? RootApp() : LoginScreen();
// //   }
// // }
// /////////////////////////////////

// import 'package:flutter_auth/Screens/live/loginScreen.dart';
// import 'package:flutter_auth/constants.dart';
// import 'package:flutter_auth/grid_view/categories.dart';
// //import 'package:flutter_auth/pages/root_app.dart';
// //import 'package:agorartm/screen/SplashScreen.dart';
// //import 'package:agorartm/screen/home.dart';
// import 'package:flutter_auth/Screens/live/home.dart';
// import 'package:flutter_auth/grid_view/cookie_page.dart';
// //import 'package:agorartm/screen/loginScreen.dart';
// import 'package:flutter_auth/models/global.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
//       .then((_) {
//     runApp(new MyApp());
//   });
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.

//   final MaterialColor blackColor = const MaterialColor(
//     0xFF000000,
//     const <int, Color>{
//       50: const Color(0xFF000000),
//       100: const Color(0xFF000000),
//       200: const Color(0xFF000000),
//       300: const Color(0xFF000000),
//       400: const Color(0xFF000000),
//       500: const Color(0xFF000000),
//       600: const Color(0xFF000000),
//       700: const Color(0xFF000000),
//       800: const Color(0xFF000000),
//       900: const Color(0xFF000000),
//     },
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Auth',
//       theme: ThemeData(
//         primaryColor: kPrimaryColor,
//         scaffoldBackgroundColor: Colors.white,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//       routes: <String, WidgetBuilder>{
//         '/HomeScreen': (BuildContext context) => new MainScreen()
//       },
//     );
//   }
// }

// class MainScreen extends StatefulWidget {
//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   var loggedIn = false;
//   @override
//   void initState() {
//     super.initState();
//     loadSharedPref();
//   }

//   void loadSharedPref() async {
//     final prefs = await SharedPreferences.getInstance();

//     setState(() {
//       loggedIn = prefs.getBool('login') ?? false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     loadSharedPref();
//     return loggedIn ? CookiePage() : LoginScreen();
//     // return loggedIn ? RootApp() : LoginScreen();
//   }
// }
