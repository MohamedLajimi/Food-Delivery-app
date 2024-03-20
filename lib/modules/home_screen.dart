import 'package:flutter/material.dart';
import 'package:food_app/components/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Home'),
      ),
      drawer: const AppDrawer(),
      body: const Center(child: Text('Home'),),
    );
  }
}