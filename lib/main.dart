import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:first_app/pages/account_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/pages/splash_page.dart';

Future<void> main() async {
  await Supabase.initialize(
      url: 'https://fszntnhcrmvbtoaojabs.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZzem50bmhjcm12YnRvYW9qYWJzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDczOTI2OTEsImV4cCI6MjAyMjk2ODY5MX0.nRC5CAXtRu2X5DcFR90NM-PgM5LTF_LMPfbmMg6M9jc');
  runApp(MyApp());
}

final supabase = Supabase.instance.client;

// With Flutter, you create user interfaces by combining "widgets"
// You'll learn all about them (and much more) throughout this course!
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
