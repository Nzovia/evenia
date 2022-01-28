import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard ({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Dashboard'),),
      body: const Center(
        child: Text("USer Dashboard", style: TextStyle(fontSize: 40),),
      ),
    );
  }
}