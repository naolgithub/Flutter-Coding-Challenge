import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_coding_challenge/firebase_options.dart';

import 'auth_bloc.dart';
import 'guzo_go_page_folder/guzo_go_home.dart';
import 'guzo_go_page_folder/select_airport.dart';
import 'login_screen.dart';
import 'phone_otp_folder/otp.dart';
import 'phone_otp_folder/phone.dart';
import 'register_screen.dart';
import 'service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServiceLocator();
  runApp(const CodingChallengeApp());
}

class CodingChallengeApp extends StatelessWidget {
  const CodingChallengeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: BlocProvider(
      //   create: (_) => getIt<AuthBloc>(),
      //   child: const RegisterScreen(),
      // ),

      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider(
              create: (_) => getIt<AuthBloc>(),
              child: const RegisterScreen(),
            ),
        '/login': (context) => BlocProvider(
              create: (_) => getIt<AuthBloc>(),
              child: const LoginScreen(),
            ),
        '/phone': (context) => const MyPhone(),
        '/otp': (context) => const MyOtp(),
        '/guzo_go_home': (context) => const GuzoGoHome(),
        '/airportLocation': (context) => const SelectAirport(),
        '/home': (context) => const GuzoGoHome(),
      },
    );
  }
}
