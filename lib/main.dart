import 'package:flutter/material.dart';
import 'package:therapy_toolkit_flutter/pages/patient/patients.dart';
import 'package:therapy_toolkit_flutter/theme.dart';

void main() {
  runApp(const TherapyToolkit());
}

class TherapyToolkit extends StatelessWidget {
  const TherapyToolkit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Therapy Toolkit',
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      home: const AppContainer(),
    );
  }
}

class AppContainer extends StatelessWidget {
  const AppContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Patients();
  }
}
