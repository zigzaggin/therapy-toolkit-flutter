import 'package:flutter/material.dart';
import 'package:therapy_toolkit_flutter/layout/menu_drawer.dart';
import 'package:therapy_toolkit_flutter/pages/patient/patients.dart';
import 'package:therapy_toolkit_flutter/pages/session/sessions.dart';
import 'package:therapy_toolkit_flutter/theme.dart';

import 'main_app_bar.dart';

class AppPage extends StatelessWidget {
  final String title;
  final Widget body;

  const AppPage({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: title,
      ),
      backgroundColor: background,
      drawer: const MenuDrawer(),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: body,
      ),
    );
  }
}
