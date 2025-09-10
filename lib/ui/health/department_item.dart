import 'package:flutter/material.dart';
import 'department_card.dart';

class DepartmentItem extends StatefulWidget {
  const DepartmentItem({super.key});

  @override
  State<DepartmentItem> createState() => _DepartmentItemState();
}

class _DepartmentItemState extends State<DepartmentItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
                child: Text(
              "Hospital Department",
              style: Theme.of(context).textTheme.titleLarge,
            )),
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 3,
              ),
              itemCount: 20,
              itemBuilder: (context, index) {
                return const FittedBox(
                  child: DepartmentCard(
                      title: "General Care",
                      subtitle: "647 Doctor",
                      icon: Icons.person),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
