import 'package:flutter/material.dart';
class DefaultTaskCountSummaryCard extends StatelessWidget {
  const DefaultTaskCountSummaryCard({
    super.key, required this.title, required this.count,required this.onTap
  });
  final String title;
  final int count;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,width: 80,
      child: InkWell(
        onTap: onTap,
        child: Card(
          elevation: 4,
          color: Colors.greenAccent,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("$count",style: Theme.of(context).textTheme.titleLarge,),
                Text("${title}",style: TextStyle(color:Colors.grey,fontSize: 14),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}