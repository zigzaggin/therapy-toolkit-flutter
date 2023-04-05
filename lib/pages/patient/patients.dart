import 'package:flutter/material.dart';
import '../../layout/app_page.dart';

class Patients extends StatelessWidget {
  const Patients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AppPage(
      title: "Patients",
      body: Text("Patients"),
    );
  }
}
