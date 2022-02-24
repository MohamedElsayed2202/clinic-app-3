import 'package:clinic_app/layout/clinic_layout.dart';
import 'package:clinic_app/layout/cubit/clinic_web_cubit.dart';
import 'package:clinic_app/modules/log_in/log_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyANas1OuTxbswXiFPbMURkVwXl3dHoYVZA',
          appId: '1:170001888125:web:ab4e9210acc557e4419214',
          messagingSenderId: '170001888125',
          projectId: 'clinic-app-65bdd'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ClinicWebCubit>(create: (context) => ClinicWebCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LogInPage(),
      ),
    );
  }
}


