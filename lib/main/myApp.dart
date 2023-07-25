import 'package:blog_club/splash/splashScreen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static const defaultFontFamily = 'Avenir';

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primaryTextColor = Color(0xff0D253C);
    const secondaryTextColor = Color(0xff2D4379);
    const primaryColor = Color(0xff376AED);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            snackBarTheme: const SnackBarThemeData(
                backgroundColor: primaryColor,
                contentTextStyle: TextStyle(
                  fontFamily: defaultFontFamily,
                  fontWeight: FontWeight.w800,
                )),
            appBarTheme: const AppBarTheme(
                titleSpacing: 32, elevation: 0, backgroundColor: Colors.white),
            colorScheme: const ColorScheme.light(
              primary: primaryColor,
              onPrimary: Colors.white,
              onSurface: primaryTextColor,
              background: Color(0xffFBFCFF),
              surface: Colors.white,
            ),
            primarySwatch: Colors.blue,
            textTheme: const TextTheme(
                titleLarge: TextStyle(
                    fontFamily: defaultFontFamily,
                    fontWeight: FontWeight.bold,
                    color: primaryTextColor),
                titleSmall: TextStyle(
                  fontFamily: defaultFontFamily,
                  color: secondaryTextColor,
                ),
                bodySmall: TextStyle(
                    fontFamily: defaultFontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: secondaryTextColor),
                bodyMedium: TextStyle(
                    fontFamily: defaultFontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: primaryTextColor),
                titleMedium: TextStyle(
                    fontFamily: defaultFontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: secondaryTextColor))),

        //

        // home: Stack(children: [
        //   const Positioned.fill(child: HomeScreen()),
        //   Positioned(left: 0, right: 0, bottom: 0, child: BottmNaviagation())
        // ]),
        //home: const SplashScreen(),

        // home: ArticleScreen(),
        // home: const ProfileScreen(),
        home: const SplashScreen());
  }
}
