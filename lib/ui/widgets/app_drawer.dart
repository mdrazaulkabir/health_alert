import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:task_mannager/ui/controller/auth_controller.dart';
import 'package:task_mannager/ui/screeen/sign_in_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/patientNewTaskScreen/update_profile_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final user = AuthController.userModel;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.greenAccent),
            accountName: Text(user?.fullName ?? "Guest"),
            accountEmail: Text(user?.email ?? "No email"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: user?.photo == null
                  ? null
                  : MemoryImage(base64Decode(user!.photo!)),
              child: (user?.photo == null || user!.photo!.isEmpty)
                  ? const Icon(Icons.person, color: Colors.white)
                  : null,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, UpdateProfileScreen.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("My Profile"),
            onTap: () {
              Navigator.pushNamed(context, UpdateProfileScreen.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_applications_rounded),
            title: const Text("Appointment"),
            onTap: () {
              Navigator.pushNamed(context, UpdateProfileScreen.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.layers_outlined),
            title: const Text("My Health Record"),
            onTap: () {
              Navigator.pushNamed(context, UpdateProfileScreen.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.document_scanner_outlined),
            title: const Text("My Health Card"),
            onTap: (){
              Navigator.pushNamed(context, UpdateProfileScreen.name);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () async {
              await AuthController.clearData();
              if (context.mounted) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  SignInScreen.name,
                      (route) => false,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
