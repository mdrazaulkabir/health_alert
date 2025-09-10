import 'package:flutter/material.dart';
import 'package:task_mannager/ui/health/home_dashboard_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/doctor_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/live_chat_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/service_screen.dart';
import 'package:task_mannager/ui/widgets/tm_app_bar.dart';

import '../widgets/app_drawer.dart';
import 'patientNewTaskScreen/new_task_list_screen.dart';
class BottomMainNavScreen extends StatefulWidget {
  const BottomMainNavScreen({super.key});
  static const String name="bottomMainNav";

  @override
  State<BottomMainNavScreen> createState() => _BotomMainNavScreenState();
}

class _BotomMainNavScreenState extends State<BottomMainNavScreen> {
  final List<Widget> _screen = [
    const HomeDashboardScreen(),
    const NewTaskListScreen(),

    const DoctorScreen(),
    const ServiceScreen(),
    const LiveChatScreen(),

    // const ProgressTaskListScreen(),
    // const CompleteTaskListScreen(),
    // const CanceledTaskListScreen(),

  ];
  int _selectIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TMAppBar(),
      drawer: const AppDrawer(
      ),
      body: _screen[_selectIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.grey,
        selectedIndex: _selectIndex,
          onDestinationSelected: (int index){
          _selectIndex=index;
          setState(() {});
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home,color: Colors.lightBlueAccent,), label: "Home"),
            NavigationDestination(icon:Icon(Icons.sick_outlined,color: Colors.lightBlueAccent,), label:"Patient"),
            NavigationDestination(icon:Icon(Icons.person,color: Colors.greenAccent,), label:"Doctor"),
            NavigationDestination(icon:Icon(Icons.medical_services,color: Colors.greenAccent), label:"Medicine"),
            NavigationDestination(icon:Icon(Icons.live_help,color: Colors.greenAccent), label:"LiveChat"),

          ]),
    );
  }
}

