import 'package:flutter/material.dart';
import 'package:task_mannager/ui/health/home_dashboard_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/cancled_task_list_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/complete_task_list_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/live_chat_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/patient_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/progress_task_list_screen.dart';
import 'package:task_mannager/ui/navigartorScreen/service_screen.dart';
import 'package:task_mannager/ui/widgets/tm_app_bar.dart';

import '../widgets/app_drawer.dart';
import 'new_task_list_screen.dart';
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
    const ProgressTaskListScreen(),
    const CompleteTaskListScreen(),
    const CanceledTaskListScreen(),
    const ServiceScreen(),
    const LiveChatScreen()
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
        backgroundColor: Colors.white,
        selectedIndex: _selectIndex,
          onDestinationSelected: (int index){
          _selectIndex=index;
          setState(() {});
          },
          destinations: const [
            // NavigationDestination(icon:Icon(Icons.home_filled,color: Colors.greenAccent,), label:"New"),
            // NavigationDestination(icon:Icon(Icons.production_quantity_limits), label:"Progress"),
            // NavigationDestination(icon:Icon(Icons.done), label:"Completed"),
            // NavigationDestination(icon:Icon(Icons.close), label:"Canceled"),

            NavigationDestination(icon: Icon(Icons.home,color: Colors.greenAccent,), label: "Home"),
            NavigationDestination(icon:Icon(Icons.person,color: Colors.greenAccent,), label:"Patient"),
            NavigationDestination(icon:Icon(Icons.person), label:"Doctor"),
            NavigationDestination(icon:Icon(Icons.medical_services), label:"Medicine"),
            // NavigationDestination(icon:Icon(Icons.insert_page_break_outlined), label:"Report"),
            // NavigationDestination(icon:Icon(Icons.help), label:"Service"),
            NavigationDestination(icon:Icon(Icons.live_help), label:"LiveChat"),

          ]),
    );
  }
}

