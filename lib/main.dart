import 'package:flutter/material.dart';
import 'package:focust/screens/alan_sec_screen.dart';
import 'package:focust/screens/ana_ekran.dart';
import 'package:focust/screens/hedef_sec_screen.dart';
import 'package:focust/screens/isim_screen.dart';
import 'package:focust/screens/mail_screen.dart';
import 'package:focust/screens/onboarding1_screen.dart';
import 'package:focust/screens/onboarding2_screen.dart';
import 'package:focust/screens/onboarding3_screen.dart';
import 'package:focust/screens/ozet_screen.dart';
import 'package:focust/screens/planliyorum_screen.dart';
import 'package:focust/screens/pomodoro_gorev_screen.dart';
import 'package:focust/screens/profil_olustur_screen.dart';
import 'package:focust/screens/sifre_screen.dart';
import 'package:focust/screens/splash_screen.dart';
import 'package:focust/screens/widget_oneri_screen.dart';
import 'package:focust/screens/challange_screen.dart';

void main() {
  runApp(const FocustApp());
}

class FocustApp extends StatelessWidget {
  const FocustApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/alan': (context) => const AlanSecScreen(),
        '/onboarding1': (context) => const Onboarding1Screen(),
        '/onboarding2': (context) => const Onboarding2Screen(),
        '/onboarding3': (context) => const Onboarding3Screen(),
        '/hedef': (context) => const HedefSecScreen(),
        '/widgetOneri': (context) => const WidgetOneriScreen(),
        '/ozet': (context) => const OzetScreen(),
        '/planliyorum': (context) => const PlanliyorumScreen(),
        '/pomodoro': (context) => const PomodoroGorevScreen(),
        '/profilOlustur': (context) => const ProfilOlusturScreen(),
        '/isim': (context) => const IsimScreen(),
        '/mail': (context) => const MailScreen(),
        '/sifre': (context) => const SifreScreen(),
        '/anaEkran': (context) => const AnaEkran(),
      },
    );
  }
}
