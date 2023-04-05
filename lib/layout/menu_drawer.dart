import 'package:flutter/material.dart';
import 'package:therapy_toolkit_flutter/pages/patient/patients.dart';
import 'package:therapy_toolkit_flutter/pages/schedule/schedule.dart';
import 'package:therapy_toolkit_flutter/pages/session/sessions.dart';

class CustomPageRoute extends MaterialPageRoute {
  CustomPageRoute({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: const EdgeInsets.all(0),
      children: <Widget>[
        ListTile(
          title: const Text('Schedule'),
          onTap: () {
            Navigator.of(context).push(
              CustomPageRoute(
                builder: (context) => const Schedule(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Sessions'),
          onTap: () {
            Navigator.of(context).push(
              CustomPageRoute(
                builder: (context) => const Sessions(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Patients'),
          onTap: () {
            Navigator.of(context).push(
              CustomPageRoute(
                builder: (context) => const Patients(),
              ),
            );
          },
        ),
      ],
    ));
  }
}
