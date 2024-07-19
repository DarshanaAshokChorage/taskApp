import 'package:flutter/material.dart';

class WorkInProgress extends StatefulWidget {
  const WorkInProgress({super.key});

  @override
  State<WorkInProgress> createState() => _WorkInProgressState();
}
class _WorkInProgressState extends State<WorkInProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,

        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: AssetImage('assets/profile/my_profile.png'),
                ),
                SizedBox(width: 8),
                Text('',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 28),
                Icon(Icons.chat),
              ],
            ),
          ],
        ),
      ),
      body: Column(
          children: <Widget>[
            new Image(image: new AssetImage('assets/gif/work_in_progress.gif')),
          ]
      ),
    );
  }
}
